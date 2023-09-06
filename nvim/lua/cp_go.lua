--Sorting Algorithms:
    --[x] Quick Sort
    --[x] Merge Sort
    --[x] Heap Sort
    --[x] Counting Sort
    --[x] Radix Sort 

--Searching Algorithms:
    --[x] Binary Search
    --[x] Depth-First Search (DFS)
    --[x] Breadth-First Search (BFS)

--Graph Algorithms:
    --[x] Dijkstra's Algorithm (Shortest Path)
    --[] Bellman-Ford Algorithm (Shortest Path with Negative Weights)
    --[] Floyd-Warshall Algorithm (All Pairs Shortest Path)
    --[] Kruskal's Algorithm (Minimum Spanning Tree)
    --[] Prim's Algorithm (Minimum Spanning Tree)
    --[] Topological Sorting
    --[] Tarjan's Algorithm (Strongly Connected Components)

--Dynamic Programming:
    --[] Knapsack Problem
    --[] Longest Common Subsequence (LCS)
    --[] Longest Increasing Subsequence (LIS)
    --[] Coin Change Problem
    --[] Matrix Chain Multiplication
    --[] Edit Distance

--Data Structures:
    --[] Arrays and Lists
    --[] Stacks and Queues
    --[] Priority Queues (Heaps)
    --[] Hash Tables (HashMaps)
    --[] Disjoint Set Union (Union-Find)
    --[] Binary Trees and Binary Search Trees (BST)
    --[] Segment Trees
    --[] Fenwick Trees (Binary Indexed Trees)

--String Algorithms:
    --[] String Matching (e.g., KMP algorithm)
    --[] Trie Data Structure
    --Suffix Arrays and Suffix Trees

--Number Theory:
    --Sieve of Eratosthenes (Prime Numbers)
    --Greatest Common Divisor (GCD)
    --Least Common Multiple (LCM)
    --Modular Arithmetic and Exponentiation
    --Prime Factorization
    --Fermat's Little Theorem
    --Chinese Remainder Theorem

--Geometry:
    --Basic Geometric Operations (e.g., Point, Line, Circle)
    --Convex Hull (e.g., Graham's Scan or Jarvis March)
    --Line Intersection

--Combinatorics:
    --Permutations and Combinations
    --Binomial Coefficients
    --Inclusion-Exclusion Principle

--Advanced Data Structures:
    --AVL Trees
    --B-Trees
    --Treap
    --Trie (Prefix Tree)
    --Bit Manipulation:
    --Bitwise Operations
    --Counting Set Bits
    --Finding the Next/Previous Power of 2
    --XOR Properties

--Game Theory:
    --Nim Game
    --Grundy Numbers

--Network Flow:
    --Max Flow (Ford-Fulkerson Algorithm)
    --Min Cut
    --Bipartite Matching


-- sort algos 
vim.api.nvim_set_keymap('n', '<leader>qs', [[:lua InsertQuickSortSnippet()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ms', [[:lua InsertMergeSortSnippet()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>hs', [[:lua InsertHeapSortSnippet()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>cs', [[:lua InsertCountingSortSnippet()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>rs', [[:lua InsertRadixSortSnippet()<CR>]], { noremap = true, silent = true })

-- search algos 
vim.api.nvim_set_keymap('n', '<leader>bs', [[:lua InsertBinarySearchSnippet()<CR>]], { noremap = true, silent = true }) 
vim.api.nvim_set_keymap('n', '<leader>dfs', [[:lua InsertDFSSnippet()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bfs', [[:lua ImportBFSSnippet()<CR>]], { noremap = true, silent = true })




-- dfs algo for matrix 
vim.api.nvim_set_keymap('n', '<leader>dfsm', [[:lua ImportDFSSnippet()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bfsm', [[:lua ImportBFSMatrixSnippet()<CR>]], { noremap = true, silent = true })


-- dijkstra 
vim.api.nvim_set_keymap('n', '<leader>dij', [[:lua ImportDijkstra ()<CR>]], { noremap = true, silent = true })



-- quick sort
function InsertQuickSortSnippet()
    local current_line = vim.fn.line('.')
    local indent = vim.fn.indent(current_line)

    local snippet = "func quickSort(arr []int) {"
    vim.fn.append(current_line, snippet)

    current_line = current_line + 1
    vim.fn.append(current_line, string.rep(' ', indent + 4) .. "if len(arr) <= 1 {")
    current_line = current_line + 1
    vim.fn.append(current_line, string.rep(' ', indent + 8) .. "return")
    current_line = current_line + 1
    vim.fn.append(current_line, string.rep(' ', indent + 4) .. "}")

    current_line = current_line + 1
    vim.fn.append(current_line, string.rep(' ', indent + 4) .. "pivot := arr[len(arr)/2]")
    current_line = current_line + 1
    vim.fn.append(current_line, string.rep(' ', indent + 4) .. "var less, equal, greater []int")
    current_line = current_line + 1
    vim.fn.append(current_line, string.rep(' ', indent + 4) .. "for _, value := range arr {")
    current_line = current_line + 1
    vim.fn.append(current_line, string.rep(' ', indent + 8) .. "switch {")
    current_line = current_line + 1
    vim.fn.append(current_line, string.rep(' ', indent + 12) .. "case value < pivot:")
    current_line = current_line + 1
    vim.fn.append(current_line, string.rep(' ', indent + 16) .. "less = append(less, value)")
    current_line = current_line + 1
    vim.fn.append(current_line, string.rep(' ', indent + 12) .. "case value == pivot:")
    current_line = current_line + 1
    vim.fn.append(current_line, string.rep(' ', indent + 16) .. "equal = append(equal, value)")
    current_line = current_line + 1
    vim.fn.append(current_line, string.rep(' ', indent + 12) .. "case value > pivot:")
    current_line = current_line + 1
    vim.fn.append(current_line, string.rep(' ', indent + 16) .. "greater = append(greater, value)")
    current_line = current_line + 1
    vim.fn.append(current_line, string.rep(' ', indent + 8) .. "}")
    current_line = current_line + 1
    vim.fn.append(current_line, string.rep(' ', indent + 4) .. "}")
    current_line = current_line + 1
    vim.fn.append(current_line, string.rep(' ', indent + 4) .. "quickSort(less)")
    current_line = current_line + 1
    vim.fn.append(current_line, string.rep(' ', indent + 4) .. "quickSort(greater)")
    current_line = current_line + 1
    vim.fn.append(current_line, string.rep(' ', indent + 4) .. "copy(arr, append(append(less, equal...), greater...))")
    current_line = current_line + 1

    vim.fn.append(current_line, string.rep(' ', indent) .. "}")

    current_line = current_line + 1
    vim.fn.append(current_line, "")
end




-- merge sort 

function InsertMergeSortSnippet()
    local current_line = vim.fn.line('.')
    local indent = vim.fn.indent(current_line)

    -- Merge Sort function
    local mergeSortSnippet = {
        "func mergeSort(arr []int) []int {",
        string.rep(' ', indent + 4) .. "if len(arr) <= 1 {",
        string.rep(' ', indent + 8) .. "return arr",
        string.rep(' ', indent + 4) .. "}",
        string.rep(' ', indent + 4) .. "mid := len(arr) / 2",
        string.rep(' ', indent + 4) .. "left := mergeSort(arr[:mid])",
        string.rep(' ', indent + 4) .. "right := mergeSort(arr[mid:])",
        string.rep(' ', indent + 4) .. "return merge(left, right)",
        string.rep(' ', indent) .. "}",
    }

    -- Merge function
    local mergeSnippet = {
        "func merge(left, right []int) []int {",
        string.rep(' ', indent + 4) .. "result := []int{}",
        string.rep(' ', indent + 4) .. "for len(left) > 0 || len(right) > 0 {",
        string.rep(' ', indent + 8) .. "if len(left) > 0 && len(right) > 0 {",
        string.rep(' ', indent + 12) .. "if left[0] <= right[0] {",
        string.rep(' ', indent + 16) .. "result = append(result, left[0])",
        string.rep(' ', indent + 16) .. "left = left[1:]",
        string.rep(' ', indent + 12) .. "} else {",
        string.rep(' ', indent + 16) .. "result = append(result, right[0])",
        string.rep(' ', indent + 16) .. "right = right[1:]",
        string.rep(' ', indent + 12) .. "}",
        string.rep(' ', indent + 8) .. "} else if len(left) > 0 {",
        string.rep(' ', indent + 12) .. "result = append(result, left[0])",
        string.rep(' ', indent + 12) .. "left = left[1:]",
        string.rep(' ', indent + 8) .. "} else {",
        string.rep(' ', indent + 12) .. "result = append(result, right[0])",
        string.rep(' ', indent + 12) .. "right = right[1:]",
        string.rep(' ', indent + 8) .. "}",
        string.rep(' ', indent + 4) .. "}",
        string.rep(' ', indent + 4) .. "return result",
        string.rep(' ', indent) .. "}",
    }

    -- Insert the snippets
    vim.fn.append(current_line, mergeSortSnippet)
    current_line = current_line + #mergeSortSnippet
    vim.fn.append(current_line, "")
    vim.fn.append(current_line + 1, mergeSnippet)
end



function InsertHeapSortSnippet()
    local current_line = vim.fn.line('.')
    local indent = vim.fn.indent(current_line)

    local snippet = "func heapSort(arr []int) {\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "n := len(arr)\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "for i := n/2 - 1; i >= 0; i-- {\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "heapify(arr, n, i)\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "}\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "for i := n - 1; i > 0; i-- {\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "arr[0], arr[i] = arr[i], arr[0]\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "heapify(arr, i, 0)\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "}\n"
    snippet = snippet .. "}\n\n"
    snippet = snippet .. "func heapify(arr []int, n, i int) {\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "largest := i\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "left := 2*i + 1\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "right := 2*i + 2\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "if left < n && arr[left] > arr[largest] {\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "largest = left\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "}\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "if right < n && arr[right] > arr[largest] {\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "largest = right\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "}\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "if largest != i {\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "arr[i], arr[largest] = arr[largest], arr[i]\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "heapify(arr, n, largest)\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "}\n"
    snippet = snippet .. "}\n"

    local lines = vim.fn.split(snippet, '\n')
    vim.fn.append(current_line, lines)
end


function InsertCountingSortSnippet()
    local current_line = vim.fn.line('.')
    local indent = vim.fn.indent(current_line)

    local snippet = "func countingSort(arr []int) []int {\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "max := maxElement(arr)\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "min := minElement(arr)\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "rangeSize := max - min + 1\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "count := make([]int, rangeSize)\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "output := make([]int, len(arr))\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "for i := 0; i < len(arr); i++ {\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "count[arr[i]-min]++\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "}\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "for i := 1; i < rangeSize; i++ {\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "count[i] += count[i-1]\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "}\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "for i := len(arr) - 1; i >= 0; i-- {\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "output[count[arr[i]-min]-1] = arr[i]\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "count[arr[i]-min]--\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "}\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "return output\n"
    snippet = snippet .. "}\n\n"
    snippet = snippet .. "func maxElement(arr []int) int {\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "max := arr[0]\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "for _, val := range arr {\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "if val > max {\n"
    snippet = snippet .. string.rep(' ', indent + 12) .. "max = val\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "}\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "}\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "return max\n"
    snippet = snippet .. "}\n\n"
    snippet = snippet .. "func minElement(arr []int) int {\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "min := arr[0]\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "for _, val := range arr {\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "if val < min {\n"
    snippet = snippet .. string.rep(' ', indent + 12) .. "min = val\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "}\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "}\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "return min\n"
    snippet = snippet .. "}\n"

    local lines = vim.fn.split(snippet, '\n')
    vim.fn.append(current_line, lines)
end


function InsertRadixSortSnippet()
    local current_line = vim.fn.line('.')
    local indent = vim.fn.indent(current_line)

    local snippet = "func radixSort(arr []int) {\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "max := maxElement(arr)\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "exp := 1\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "n := len(arr)\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "output := make([]int, n)\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "for exp <= max {\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "count := make([]int, 10)\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "for i := 0; i < n; i++ {\n"
    snippet = snippet .. string.rep(' ', indent + 12) .. "count[(arr[i]/exp)%10]++\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "}\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "for i := 1; i < 10; i++ {\n"
    snippet = snippet .. string.rep(' ', indent + 12) .. "count[i] += count[i-1]\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "}\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "for i := n - 1; i >= 0; i-- {\n"
    snippet = snippet .. string.rep(' ', indent + 12) .. "output[count[(arr[i]/exp)%10]-1] = arr[i]\n"
    snippet = snippet .. string.rep(' ', indent + 12) .. "count[(arr[i]/exp)%10]--\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "}\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "for i := 0; i < n; i++ {\n"
    snippet = snippet .. string.rep(' ', indent + 12) .. "arr[i] = output[i]\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "}\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "exp *= 10\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "}\n"
    snippet = snippet .. "}\n\n"
    snippet = snippet .. "func maxElement(arr []int) int {\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "max := arr[0]\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "for _, val := range arr {\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "if val > max {\n"
    snippet = snippet .. string.rep(' ', indent + 12) .. "max = val\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "}\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "}\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "return max\n"
    snippet = snippet .. "}\n"

    local lines = vim.fn.split(snippet, '\n')
    vim.fn.append(current_line, lines)
end



function InsertBinarySearchSnippet()
    local current_line = vim.fn.line('.')
    local indent = vim.fn.indent(current_line)

    local snippet = "func binarySearch(arr []int, target int) int {\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "left := 0\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "right := len(arr) - 1\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "for left <= right {\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "mid := left + (right-left)/2\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "if arr[mid] == target {\n"
    snippet = snippet .. string.rep(' ', indent + 12) .. "return mid\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "} else if arr[mid] < target {\n"
    snippet = snippet .. string.rep(' ', indent + 12) .. "left = mid + 1\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "} else {\n"
    snippet = snippet .. string.rep(' ', indent + 12) .. "right = mid - 1\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "}\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "}\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "return -1 // Element not found\n"
    snippet = snippet .. "}\n"

    local lines = vim.fn.split(snippet, '\n')
    vim.fn.append(current_line, lines)
end

function InsertDFSSnippet()
    local current_line = vim.fn.line('.')
    local indent = vim.fn.indent(current_line)

    local snippet = "type Graph struct {\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "adj map[int][]int\n"
    snippet = snippet .. "}\n\n"
    snippet = snippet .. "func DFS(g *Graph, v int, visited map[int]bool) {\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "visited[v] = true\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "fmt.Printf(\"Visiting node %d\\n\", v)\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "for _, neighbor := range g.adj[v] {\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "if !visited[neighbor] {\n"
    snippet = snippet .. string.rep(' ', indent + 12) .. "DFS(g, neighbor, visited)\n"
    snippet = snippet .. string.rep(' ', indent + 8) .. "}\n"
    snippet = snippet .. string.rep(' ', indent + 4) .. "}\n"
    snippet = snippet .. "}\n\n"

    local lines = vim.fn.split(snippet, '\n')
    vim.fn.append(current_line, lines)
end

function ImportDFSSnippet()
    -- Define your DFS snippet template here
    local dfsTemplate = [[
var Directions = [][]int{
    {-1, 0}, 
    {1, 0}, 
    {0, -1},
    {0, 1},
}

func DFS(matrix [][]int, visited [][]bool, x, y int) {
    visited[x][y] = true
    fmt.Printf("Visiting node at (%d, %d)\n", x, y)

    for _, dir := range Directions {
        newX, newY := x+dir[0], y+dir[1]

        if newX >= 0 && newX < len(matrix) && newY >= 0 && newY < len(matrix[0]) && !visited[newX][newY] && matrix[newX][newY] == 1 {
            DFS(matrix, visited, newX, newY)
        }
    }
}

func dfsMatrix(matrix [][]int) {
    Rows, Cols := len(matrix), len(matrix[0])

    visited := make([][]bool, Rows)
    for i := range visited {
        visited[i] = make([]bool, Cols)
    }

    DFS(matrix, visited, 0, 0)
}
]]

    -- Get current line and column
    local cursor = vim.fn.getcurpos()
    local line = cursor[2]

    -- Split the snippet into lines and insert each line at the current position
    for i, snippetLine in ipairs(vim.fn.split(dfsTemplate, '\n')) do
        vim.fn.append(line - 1 + i, snippetLine)
    end
end



-- bfs graph
function ImportBFSSnippet()
    local Template = [[
type Graph struct {
    vertices int
    adjacencyList map[int][]int
}

func (g *Graph) AddEdge(v1, v2 int) {
    g.adjacencyList[v1] = append(g.adjacencyList[v1], v2)
}


func (g *Graph) BFS(startVertex int) {
    visited := make(map[int]bool)
    queue := list.New()

    visited[startVertex] = true
    queue.PushBack(startVertex)

    for queue.Len() > 0 {
        currentVertex := queue.Front().Value.(int)
        fmt.Printf("Visited vertex: %d\n", currentVertex)
        queue.Remove(queue.Front())

        for _, neighbor := range g.adjacencyList[currentVertex] {
            if !visited[neighbor] {
                visited[neighbor] = true
                queue.PushBack(neighbor)
            }
        }
    }
}
]]

    -- Get current line and column
    local cursor = vim.fn.getcurpos()
    local line = cursor[2]

    -- Split the snippet into lines and insert each line at the current position
    for i, snippetLine in ipairs(vim.fn.split(Template, '\n')) do
        vim.fn.append(line - 1 + i, snippetLine)
    end
end



-- bfs matrix 
function ImportBFSMatrixSnippet()
    local Template = [[
    import (
    "fmt"
    "container/list"
)

var Directions = [][]int{
    {-1, 0}, // Up
    {1, 0},  // Down
    {0, -1}, // Left
    {0, 1},  // Right
}

type Node struct {
    x, y int
}

func BFS(matrix [][]int, startX, startY int) {
    numRows := len(matrix)
    if numRows == 0 {
        return
    }
    numCols := len(matrix[0])

    visited := make([][]bool, numRows)
    for i := range visited {
        visited[i] = make([]bool, numCols)
    }

    queue := list.New()
    startNode := Node{x: startX, y: startY}
    queue.PushBack(startNode)
    visited[startX][startY] = true

    for queue.Len() > 0 {
        currentNode := queue.Front().Value.(Node)
        queue.Remove(queue.Front())

        fmt.Printf("Visited node at (%d, %d)\n", currentNode.x, currentNode.y)

        for _, dir := range Directions {
            newX, newY := currentNode.x+dir[0], currentNode.y+dir[1]

            if newX >= 0 && newX < numRows && newY >= 0 && newY < numCols && !visited[newX][newY] && matrix[newX][newY] == 1 {
                newNode := Node{x: newX, y: newY}
                queue.PushBack(newNode)
                visited[newX][newY] = true
            }
        }
    }
}

func BFSMatrix(matrix [][]int, startX, startY int) {
    fmt.Printf("Starting BFS from (%d, %d):\n", startX, startY)
    BFS(matrix, startX, startY)
}

]]

    -- Get current line and column
    local cursor = vim.fn.getcurpos()
    local line = cursor[2]

    -- Split the snippet into lines and insert each line at the current position
    for i, snippetLine in ipairs(vim.fn.split(Template, '\n')) do
        vim.fn.append(line - 1 + i, snippetLine)
    end
end

-- dijkstra
function ImportDijkstra()
    local Template = [[

import (
	"fmt"
	"math"
)

type Graph struct {
	vertices int
	edges    map[int]map[int]int
}

func NewGraph(vertices int) *Graph {
	return &Graph{
		vertices: vertices,
		edges:    make(map[int]map[int]int),
	}
}

func (g *Graph) AddEdge(source, destination, weight int) {
	if g.edges[source] == nil {
		g.edges[source] = make(map[int]int)
	}
	g.edges[source][destination] = weight
}

func Dijkstra(graph *Graph, startVertex int) map[int]int {
	distances := make(map[int]int)
	for vertex := 0; vertex < graph.vertices; vertex++ {
		distances[vertex] = math.MaxInt32
	}
	distances[startVertex] = 0

	visited := make(map[int]bool)

	for i := 0; i < graph.vertices-1; i++ {
		minVertex := findMinVertex(distances, visited)
		visited[minVertex] = true

		for vertex, weight := range graph.edges[minVertex] {
			if !visited[vertex] {
				newDistance := distances[minVertex] + weight
				if newDistance < distances[vertex] {
					distances[vertex] = newDistance
				}
			}
		}
	}

	return distances
}

func findMinVertex(distances map[int]int, visited map[int]bool) int {
	minVertex := -1
	minDistance := math.MaxInt32

	for vertex, distance := range distances {
		if !visited[vertex] && distance < minDistance {
			minVertex = vertex
			minDistance = distance
		}
	}

	return minVertex
}

]]

    local cursor = vim.fn.getcurpos()
    local line = cursor[2]

    for i, snippetLine in ipairs(vim.fn.split(Template, '\n')) do
        vim.fn.append(line - 1 + i, snippetLine)
    end
end


-- 
