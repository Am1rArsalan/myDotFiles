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
	devicePath    = "/dev/input/event20" // Replace X with the appropriate event ID
	dataFile      = "keypress_data.txt"  // File to store the keypress count
	timeFormat    = "2006-01-02"         // Date format for tracking keypresses per day
	saveInterval  = time.Minute          // Interval to save the keypress count to file
	reportTimeout = time.Second          // Timeout for reporting the keypress count
)

func main() {
	dev := openKeyboardDevice()

	// Load previous keypress count from file
	count, lastSavedTime, err := loadCountFromFile()
	if err != nil {
		log.Println("Failed to load previous count from file:", err)
		count = 0
		lastSavedTime = time.Now().Truncate(24 * time.Hour)
	}

	// Initialize the keypress count and current date
	keypressCount := count

	// Create a channel to receive signals for graceful termination
	sigCh := make(chan os.Signal, 1)
	signal.Notify(sigCh, os.Interrupt)

	// Start monitoring key events
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
			// Save the final count before exiting
			err := saveCountToFile(keypressCount, lastSavedTime)
			if err != nil {
				log.Println("Failed to save count to file:", err)
			}
			fmt.Println("Exiting...")
			return
		}
	}
}

func openKeyboardDevice() *evdev.InputDevice {
	// Open the keyboard device
	dev, err := evdev.Open(devicePath)
	if err != nil {
		log.Fatal(err)
	}
	return dev
}

// Load previous keypress count from file
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

// Save the keypress count to file
func saveCountToFile(count int, lastSavedTime time.Time) error {
	data := []byte(fmt.Sprintf("%d %s", count, lastSavedTime))
	err := os.WriteFile(dataFile, data, 0644)
	if err != nil {
		return err
	}
	return nil
}
