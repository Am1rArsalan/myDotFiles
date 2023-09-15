-- these are the algorithms and the data structures
-- that usually will be needed when you are solving a problem

--Sorting Algorithms:
--[X] Quick Sort
--[X] Merge Sort
--[X] Heap Sort
--[X] Counting Sort
--[X] RadiX Sort
--Searching Algorithms:
--[X] Binary Search
--[X] Depth-First Search (DFS)
--[X] Breadth-First Search (BFS)
--Graph Algorithms:
--[X] Dijkstra's Algorithm (Shortest Path)
--[X] Bellman-Ford Algorithm (Shortest Path with Negative Weights)
--[X] Floyd-Warshall Algorithm (All Pairs Shortest Path)
--[X] Kruskal's Algorithm (Minimum Spanning Tree)
--[] Prim's Algorithm (Minimum Spanning Tree)
--Topological Sorting
--Tarjan's Algorithm (Strongly Connected Components)
--Dynamic Programming:
--Knapsack Problem
--Longest Common Subsequence (LCS)
--Longest Increasing Subsequence (LIS)
--Coin Change Problem
--Matrix Chain Multiplication
--Edit Distance

--Data Structures:
--Arrays and Lists
--Stacks and Queues
--Priority Queues (Heaps)
--Hash Tables (HashMaps)
--Disjoint Set Union (Union-Find)
--Binary Trees and Binary Search Trees (BST)
--Segment Trees
--Fenwick Trees (Binary Indexed Trees)

--String Algorithms:
--String Matching (e.g., KMP algorithm)
--Trie Data Structure
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


-- graph
vim.api.nvim_set_keymap('n', '<leader>dij', [[:lua ImportDijkstra ()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bell', [[:lua ImportBellmanFord()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>flw', [[:lua ImportFloydWarshall()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ka', [[:lua ImportKruskalAlgorithm()<CR>]], { noremap = true, silent = true })




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

function ImportBellmanFord()
    local Template =
    [[
import (
	"fmt"
	"math"
)

type Edge struct {
	source, destination, weight int
}

type Graph struct {
	vertices, edges int
	edgeList       []Edge
}

func NewGraph(vertices, edges int) *Graph {
	return &Graph{
		vertices: vertices,
		edges:    edges,
		edgeList: make([]Edge, 0),
	}
}

func (g *Graph) AddEdge(source, destination, weight int) {
	g.edgeList = append(g.edgeList, Edge{source, destination, weight})
}

func BellmanFord(graph *Graph, startVertex int) ([]int, []int) {
	distances := make([]int, graph.vertices)
	parents := make([]int, graph.vertices)

	for i := range distances {
		distances[i] = math.MaxInt32
		parents[i] = -1
	}

	distances[startVertex] = 0

	for i := 1; i <= graph.vertices-1; i++ {
		for _, edge := range graph.edgeList {
			u, v, weight := edge.source, edge.destination, edge.weight
			if distances[u] != math.MaxInt32 && distances[u]+weight < distances[v] {
				distances[v] = distances[u] + weight
				parents[v] = u
			}
		}
	}

	// Check for negative weight cycles
	for _, edge := range graph.edgeList {
		u, v, weight := edge.source, edge.destination, edge.weight
		if distances[u] != math.MaxInt32 && distances[u]+weight < distances[v] {
			fmt.Println("Graph contains negative weight cycle")
		}
	}

	return distances, parents
}
]]

    local cursor = vim.fn.getcurpos()
    local line = cursor[2]

    for i, snippetLine in ipairs(vim.fn.split(Template, '\n')) do
        vim.fn.append(line - 1 + i, snippetLine)
    end
end


--Shortest distances between all pairs of vertices:
function ImportFloydWarshall()
    local Template =
    [[
import (
	"fmt"
	"math"
)

type Graph struct {
	vertices int
	matrix   [][]int
}

func NewGraph(vertices int) *Graph {
	matrix := make([][]int, vertices)
	for i := range matrix {
		matrix[i] = make([]int, vertices)
		for j := range matrix[i] {
			if i == j {
				matrix[i][j] = 0
			} else {
				matrix[i][j] = math.MaxInt32
			}
		}
	}
	return &Graph{
		vertices: vertices,
		matrix:   matrix,
	}
}

func (g *Graph) AddEdge(source, destination, weight int) {
	g.matrix[source][destination] = weight
}

func FloydWarshall(graph *Graph) [][]int {
	distances := make([][]int, graph.vertices)
	for i := range distances {
		distances[i] = make([]int, graph.vertices)
		copy(distances[i], graph.matrix[i])
	}

	for k := 0; k < graph.vertices; k++ {
		for i := 0; i < graph.vertices; i++ {
			for j := 0; j < graph.vertices; j++ {
				if distances[i][k]+distances[k][j] < distances[i][j] {
					distances[i][j] = distances[i][k] + distances[k][j]
				}
			}
		}
	}

	return distances
}

func main() {
	vertices := 4
	graph := NewGraph(vertices)

	graph.AddEdge(0, 1, 3)
	graph.AddEdge(0, 2, 6)
	graph.AddEdge(1, 2, 2)
	graph.AddEdge(1, 3, 1)
	graph.AddEdge(2, 1, 1)
	graph.AddEdge(2, 3, 4)
	graph.AddEdge(3, 0, 2)
	graph.AddEdge(3, 2, 5)

	distances := FloydWarshall(graph)

	fmt.Println("Shortest distances between all pairs of vertices:")
	for i := 0; i < vertices; i++ {
		for j := 0; j < vertices; j++ {
			fmt.Printf("From vertex %d to vertex %d: Distance %d\n", i, j, distances[i][j])
		}
	}
}

]]

    local cursor = vim.fn.getcurpos()
    local line = cursor[2]

    for i, snippetLine in ipairs(vim.fn.split(Template, '\n')) do
        vim.fn.append(line - 1 + i, snippetLine)
    end
end

function ImportKruskalAlgorithm()
    local Template =
[[ 

package main

import (
	"fmt"
	"sort"
)

// Edge represents an edge in the graph.
type Edge struct {
	u, v, weight int
}

// Kruskal's algorithm to find the Minimum Spanning Tree.
func kruskal(graph []Edge, numVertices int) []Edge {
	// Sort the edges in ascending order of weight.
	sort.Slice(graph, func(i, j int) bool {
		return graph[i].weight < graph[j].weight
	})

	// Create a parent array to keep track of connected components.
	parent := make([]int, numVertices)
	for i := range parent {
		parent[i] = i
	}

	// Initialize variables to track MST edges and total weight.
	var mst []Edge
	var mstWeight int

	// Function to find the root of a tree.
	findRoot := func(vertex int) int {
		for vertex != parent[vertex] {
			vertex = parent[vertex]
		}
		return vertex
	}

	// Iterate through the sorted edges and add them to the MST if they don't create a cycle.
	for _, edge := range graph {
		rootU := findRoot(edge.u)
		rootV := findRoot(edge.v)

		// If adding this edge doesn't create a cycle, include it in the MST.
		if rootU != rootV {
			mst = append(mst, edge)
			mstWeight += edge.weight

			// Merge the two components.
			parent[rootU] = rootV
		}
	}

	return mst
}

func main() {
	// Example graph represented as a slice of edges (u, v, weight).
	graph := []Edge{
		{0, 1, 4},
		{0, 7, 8},
		{1, 2, 8},
		{1, 7, 11},
		{2, 3, 7},
		{2, 5, 4},
		{2, 8, 2},
		{3, 4, 9},
		{3, 5, 14},
		{4, 5, 10},
		{5, 6, 2},
		{6, 7, 1},
		{6, 8, 6},
		{7, 8, 7},
	}

	numVertices := 9

	// Find the Minimum Spanning Tree using Kruskal's algorithm.
	mst := kruskal(graph, numVertices)

	// Print the MST edges and total weight.
	fmt.Println("Minimum Spanning Tree edges:")
	for _, edge := range mst {
		fmt.Printf("(%d, %d) Weight: %d\n", edge.u, edge.v, edge.weight)
	}
}

]]
    local cursor = vim.fn.getcurpos()
    local line = cursor[2]

    for i, snippetLine in ipairs(vim.fn.split(Template, '\n')) do
        vim.fn.append(line - 1 + i, snippetLine)
    end
end


function ImportPrimesAlgorithm()  
local Template = [[
    package main

import (
	"container/heap"
	"fmt"
)

// Edge represents an edge in the graph.
type Edge struct {
	vertex int
	weight int
}

// Graph represents a graph using an adjacency list.
type Graph map[int][]Edge

// Item represents an item in the priority queue.
type Item struct {
	vertex int
	weight int
	index  int
}

// PriorityQueue is a min-heap based priority queue.
type PriorityQueue []*Item

func (pq PriorityQueue) Len() int { return len(pq) }

func (pq PriorityQueue) Less(i, j int) bool {
	return pq[i].weight < pq[j].weight
}

func (pq PriorityQueue) Swap(i, j int) {
	pq[i], pq[j] = pq[j], pq[i]
	pq[i].index = i
	pq[j].index = j
}

func (pq *PriorityQueue) Push(x interface{}) {
	n := len(*pq)
	item := x.(*Item)
	item.index = n
	*pq = append(*pq, item)
}

func (pq *PriorityQueue) Pop() interface{} {
	old := *pq
	n := len(old)
	item := old[n-1]
	item.index = -1 // for safety
	*pq = old[0 : n-1]
	return item
}

// Prim's algorithm to find the Minimum Spanning Tree.
func prim(graph Graph) []Edge {
	visited := make(map[int]bool)
	pq := make(PriorityQueue, 0)

	// Start from an arbitrary vertex (e.g., vertex 0).
	startVertex := 0
	visited[startVertex] = true

	// Initialize the priority queue with edges from the starting vertex.
	for _, edge := range graph[startVertex] {
		heap.Push(&pq, &Item{edge.vertex, edge.weight, 0})
	}

	var mst []Edge

	for len(pq) > 0 {
		// Extract the edge with the minimum weight from the priority queue.
		item := heap.Pop(&pq).(*Item)
		v := item.vertex
		w := item.weight

		// If the destination vertex is already visited, skip it.
		if visited[v] {
			continue
		}

		// Mark the destination vertex as visited and add the edge to the MST.
		visited[v] = true
		mst = append(mst, Edge{v, w})

		// Add adjacent edges to the priority queue.
		for _, edge := range graph[v] {
			if !visited[edge.vertex] {
				heap.Push(&pq, &Item{edge.vertex, edge.weight, 0})
			}
		}
	}

	return mst
}

func main() {
	// Example graph represented as an adjacency list.
	graph := make(Graph)
	graph[0] = []Edge{{1, 2}, {2, 4}}
	graph[1] = []Edge{{0, 2}, {2, 1}, {3, 3}}
	graph[2] = []Edge{{0, 4}, {1, 1}, {3, 5}}
	graph[3] = []Edge{{1, 3}, {2, 5}}

	// Find the Minimum Spanning Tree using Prim's algorithm.
	mst := prim(graph)

	// Print the MST edges.
	fmt.Println("Minimum Spanning Tree edges:")
	for _, edge := range mst {
		fmt.Printf("(%d, %d) Weight: %d\n", 0, edge.vertex, edge.weight)
	}
}
]]

    local cursor = vim.fn.getcurpos()
    local line = cursor[2]

    for i, snippetLine in ipairs(vim.fn.split(Template, '\n')) do
        vim.fn.append(line - 1 + i, snippetLine)
    end
end
