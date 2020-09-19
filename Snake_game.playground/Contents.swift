import Cocoa

let value1:Int = 10 //There is two values for creating matrix
let value2:Int = 10
var reverseDash: Bool = true
var array1 = [[String]]()


func arrayFiller(){
    for i in 1...value1 {
        var innerArray: [String] = []
        if i % 2 != 0 {
            for _ in 1...value2 {
                innerArray.append("#")
            }
        }else{
            if reverseDash == true{
                for j in 1...value2 {
                    if j == value2{
                        innerArray.append("#")
                    }else{
                        innerArray.append(".")
                    }
                }
                reverseDash = false
            }else{
                for j in 1...value2 {
                    if j == 1{
                        innerArray.append("#")
                    }else{
                        innerArray.append(".")
                    }
                }
                reverseDash = true
            }
        }
        array1.append(innerArray)
    }
}

func printer(){
    for i in array1{
        var answer = ""
        for j in 0...i.count - 1{
            answer += "\(i[j]) "
        }
        print(answer)
    }
}

func main(){
    arrayFiller()
    printer()
}

main()
