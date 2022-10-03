


// Add your code below:

var words : [String] = []

var line : String?
repeat {
    print("Please enter a word")
    line = readLine()
    if line != nil {
        words.append(line!)
    }
} while line != nil


func swap(integers: inout [String], firstIndex:Int, secondIndex:Int) {
    precondition(firstIndex < integers.count, "firstIndex \(firstIndex) is out of bounds.")
    precondition(secondIndex < integers.count, "secondIndex \(secondIndex) is out of bounds.")
    
    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp
}

// Create a function to perform the sort
func sort(integers: inout [String]) {
    // Keep track of the total passes
    var totalPassCount = 1
    var totalSwapCount = 0
    print("Pass: 0, Swaps: 0/0, Array: \(integers)")
    // We continue until there are zero swaps in the current pass
    var swapsThisPass: Int
    repeat {
        // Reset swap count
        swapsThisPass = 0
       
        // Iterate from the left hand side to the right hand side,
        // swapping if necessary
        for firstIndex in 0 ..< integers.count - 1 {
            let secondIndex = firstIndex + 1
  
            // We need to swap if second element is less than first element
            if integers[secondIndex] < integers[firstIndex] {
                swap(integers: &integers, firstIndex: firstIndex, secondIndex: secondIndex)
                swapsThisPass += 1
            }
            
        }
        totalSwapCount += swapsThisPass
        // Add print statements

        print("Pass: \(totalPassCount), Swaps: \(swapsThisPass)/\(totalSwapCount), Array: \(integers)")

        totalPassCount += 1
    } while swapsThisPass > 0

   
}

var sortedWords = words
sort(integers: &words)

