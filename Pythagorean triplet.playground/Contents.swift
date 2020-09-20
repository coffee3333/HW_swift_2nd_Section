import Cocoa

func finderPythagor(valueToFind: Int) -> String{//Main function to find a, b , c
    for a in 1...valueToFind{ //main cycle wich make 'a'
        for b in a+1...valueToFind{ // inner cycle wich is start with bigest value then 'a', baecause a < b
            let c = valueToFind - a - b // maiking const for 'c'
            if (a * a + b * b) == (c * c){ // if condition have Pythagorean algorithm
                return "\(a)+\(b)=\(c)"
            }
        }
    }
    return "Not found"
}


print(finderPythagor(valueToFind:1000))
