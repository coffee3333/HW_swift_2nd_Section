import Cocoa


func numChecker(num:Int) -> Bool{
    var counter = 0
    for i in 1...20{
        if (num % i) == 0{
            counter += 1
        }
    }
    
    if counter >= 20{
        return true
    }
    return false
}

func numFinder() -> Int{
    var value = 2
    var flag = true

    while flag{
        print(value)
        if numChecker(num : value){
            flag = false
        }else{
            value += 1
        }
    }
    return value
}

print(numFinder())
