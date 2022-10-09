// Add your code below:
var unsortedArray = [String]()
while let line = readLine() {
    unsortedArray.append(line)
}

func lowercase(array: inout [String]) {
    for i in 0..<array.count {
        array[i] = array[i].lowercased()
    }
}

func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
    let swaps = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = swaps
}
//performs sort
func sort (array: inout [String]) {
    lowercase(array: &array)
    //setting variables
    for x in 0..<array.count {
        for y in 1..<array.count - x {
            if(array[y] < array[y-1]) {
                //saves amount sorted
                swap(integers: &array, firstIndex:y, secondIndex:y-1)
            }
        }
                
        
    }
    print(array)
}
        
sort(array: &unsortedArray)

