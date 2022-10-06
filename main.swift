// Add your code below:
var unsortedArray = [String]()
while let line = readLine() {
    unsortedArray.append(line)
}

func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
    let swaps = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = swaps
}
//performs sort
func sort (array: inout [String]) {
    //setting variables
    for x in 0..<array.count {
        for y in 1..<array.count - x {
            if(array[y] < array[y-1]) {
                //saves amount sorted
                swap(integers: &array, firstIndex:y, secondIndex:y-1)
            }
        }
                //prints each time its sorted
        
    }
    print(array)
}
        
sort(array: &unsortedArray)

