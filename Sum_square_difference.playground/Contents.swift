import Cocoa
import Foundation

func sumOfSquers() -> Int{ // Here i'm searching sum of the squares
    var answer:Int = 0
    for i in 1...100{
        let sum = pow(Double(i),2)
        answer = answer + Int(sum)
    }
    return answer
}

func squerOfSum() -> Int{ // Here i'm serching square of the sum
    var sum = 0
    for i in 1...100{
        sum = sum + i
    }
    let variable = pow(Double(sum),2)
    let answer = Int(variable)
    return answer
}

func main() -> Int{ // Here is main func, whoch is searching difference between answers
    let sumSquers = sumOfSquers()
    let squerSum = squerOfSum()
    let answer = abs(squerSum - sumSquers)
    return answer
}

print(main())
