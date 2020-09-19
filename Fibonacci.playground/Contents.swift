import Cocoa

func fibonacciFiller() -> [Int]{ //Firstly we need to create array and fill it with fibonacci nums
    var array:[Int] = []
    var a = 0
    var b = 1

    while true { // Infinity cycle
        let temp = a
        a = b
        b = temp + b
        if a < 4000000{ // Here i am cheking that values do not exceed four million
            array.append(a)
        }else{
            break
        }
    }
    return array
}

func evenValuedCounter(array:[Int] = []) -> (Int){ // Secondly we need to find even valued terms
    var summ:Int = 0
    
    for item in array{
        if item % 2 == 0{
            summ = summ + item // Here i am counting all even valuet terms
        }
    }
    return summ
}


func main(){ // Main function
    print(fibonacciFiller()) // here i am printig array
    print(evenValuedCounter(array: fibonacciFiller())) // here summ of even valued terms
}

main()
