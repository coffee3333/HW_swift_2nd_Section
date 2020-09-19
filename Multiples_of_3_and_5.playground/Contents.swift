import Cocoa

let value1 = 3 //first searching value
let value2 = 5 //second searching value

func finder() -> [Int]  {
    var answer:[Int] = []
    for i in 1...999{
        if i % value1 == 0 || i %  value2 == 0{
            answer.append(i)
        }
    }
    return answer
}

print(finder())
