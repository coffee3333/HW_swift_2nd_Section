import Cocoa

var value = 600851475143 //Main value for searching largest prime factor

func cycle(num:Int) -> (item:Int, Next_value:Int){ // Universal cycle for serching items and returning them
    for i in 2..<num + 1{
        if value % i == 0{
            return (i,value / i)
        }
    }
    return (0, 0)
}

func finder() -> [Int]{ // Main function, here i am sending value to cycle then appending answer and changing value to serach new value
    var array:[Int] = []
    var flag:Bool = true
    while flag{
        let answer = cycle(num:value)
        if answer.item == 0{
            flag = false
        }else{
            array.append(answer.item)
            value = answer.Next_value
        }
    }
    return array
}

print(finder())
