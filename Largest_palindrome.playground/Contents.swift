import Cocoa

func arrayFiller() -> (firstArrayOfNums:[Int], secondArrayOfNus:[Int]){ //This is array filler it fill between 100...1000 and then return 2 arrays to multiplay
    var arrayOfNums:[Int] = []

    for i in 100...1000{
        arrayOfNums.append(i)
    }
    let firstArrayOfNums:[Int] = arrayOfNums
    let secondArrrayOfNums:[Int] = arrayOfNums
    return (firstArrayOfNums, secondArrrayOfNums)
}

func checkerNums(numToCheck:Int) -> Bool{ // Here i am cheking 2 sides of num (first three nums and last three nums)
    let firstSide:Int = (numToCheck / 1000)
    let secondReverceSide:String = String(String(numToCheck % 1000).reversed())
    if firstSide == Int(secondReverceSide){
        return true
    }else{
        return false
    }
}

func multiplyerNums() -> String{ // This is main function for multiplying nums between 2 arrays and cheking the answer
    let firstArrayOfNums = arrayFiller().firstArrayOfNums
    let secondArrrayOfNums = arrayFiller().secondArrayOfNus
    var maxVar:Int = 0
    var answer = ""

    for i in firstArrayOfNums{
        print("----- Checking_in \(i)------")
        for j in secondArrrayOfNums{
            let numToCheck:Int = i * j
            if checkerNums(numToCheck:numToCheck){
                if numToCheck >= maxVar{
                    maxVar = numToCheck
                    answer = "\(maxVar) = \(i) * \(j)"
                }
            }
        }
    }
    return answer
}

print(multiplyerNums())
