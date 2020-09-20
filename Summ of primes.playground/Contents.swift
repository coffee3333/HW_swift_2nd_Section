import Cocoa

func arrayOfNums() -> [Int]{ // This function fill array with nums
    var arrayOfNums:[Int] = []
    let lengthOfArray = 1000 // This is length of array, we can change range of nums
    
    for i in 0...lengthOfArray{
        arrayOfNums.append(i)
    }
    arrayOfNums[1] = 0 // Here i removing number one, because in prime nums we don use it
    return arrayOfNums
}

func primeNumFinder() -> [Int]{ // This func for searching prime nums
    var arrayNums:[Int] = arrayOfNums() // Here i am calling arrayfiller to get array with nums
    var i = 2 // We are starting with second num, don't forget about we have two zero in start
    while i <=  arrayNums.count - 1{ //Starting cycle
        var j:Int = i + i // This main algo to jump next nums
        while j <=  arrayNums.count - 1{ //Inner cycle
            arrayNums[j] = 0 // Here i removeing  not prime nums and changing to zero
            j = j + i // again jumping
        }
        i += 1
    }
    arrayNums.removeAll { $0 == 0 } // Here i removing zero nums, yeap we changet to zero and then removed
    return arrayNums // and return
}


func main(){
    let arrayOfPrimeNums = primeNumFinder() // getting array of prime nums
    print(arrayOfPrimeNums.reduce(0, +)) // printing all summ
}

main()

