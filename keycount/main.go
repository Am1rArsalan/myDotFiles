package main

import (
	"fmt"
	"log"
	"os"
	"os/signal"
	"time"

	evdev "github.com/gvalkov/golang-evdev"
)

const (
	deviceBasePath = "/dev/input/event"
	dataFile       = "keypress_data.txt"
	timeFormat     = "2006-01-02"
	saveInterval   = time.Minute
	reportTimeout  = time.Second
)

func main() {
	var device_event_number int

	fmt.Println("please enter your device event number that you want to track")
	fmt.Scanln(&device_event_number)

	devicePath := fmt.Sprintf("%s%d", deviceBasePath, device_event_number)

	dev := openKeyboardDevice(devicePath)

	count, lastSavedTime, err := loadCountFromFile()
	if err != nil {
		log.Println("Failed to load previous count from file:", err)
		count = 0
		lastSavedTime = time.Now().Truncate(24 * time.Hour)
	}

	keypressCount := count

	sigCh := make(chan os.Signal, 1)
	signal.Notify(sigCh, os.Interrupt)

	events := make(chan evdev.InputEvent)
	errors := make(chan error)

	go func() {
		for {
			event, err := dev.ReadOne()
			if err != nil {
				errors <- err
				return
			}
			events <- *event
		}
	}()

	for {
		select {
		case event := <-events:
			if event.Type == evdev.EV_KEY && event.Value == 1 {
				keypressCount++
			}
		case err := <-errors:
			log.Println("Error reading event:", err)
		case <-time.After(reportTimeout):
			fmt.Printf("Total key presses today: %d\n", keypressCount)
		case <-time.After(saveInterval):
			now := time.Now().Truncate(24 * time.Hour)
			if now.After(lastSavedTime) {
				err := saveCountToFile(keypressCount, now)
				if err != nil {
					log.Println("Failed to save count to file:", err)
				}
				lastSavedTime = now
				keypressCount = 0
			}
		case <-sigCh:
			err := saveCountToFile(keypressCount, lastSavedTime)
			if err != nil {
				log.Println("Failed to save count to file:", err)
			}
			fmt.Println("Exiting...")
			return
		}
	}
} 

func openKeyboardDevice(devicePath string) *evdev.InputDevice {
	fmt.Println("what is the device path", devicePath)
	dev, err := evdev.Open(devicePath)
	if err != nil {
		log.Fatal(err)
	}
	return dev
}

func loadCountFromFile() (int, time.Time, error) {
	data, err := os.ReadFile(dataFile)
	if err != nil {
		return 0, time.Time{}, err
	}
	var count int
	var lastSavedTime time.Time
	_, err = fmt.Sscanf(string(data), "%d %s", &count, &lastSavedTime)
	if err != nil {
		return 0, time.Time{}, err
	}
	return count, lastSavedTime, nil
}

func saveCountToFile(count int, lastSavedTime time.Time) error {
	data := []byte(fmt.Sprintf("%d %s", count, lastSavedTime))
	err := os.WriteFile(dataFile, data, 0644)
	if err != nil {
		return err
	}
	return nil
}
