import Cocoa

var str = "Hello, playground"


//for i in 0...80{
//    print(Date(timeInterval: Double(i)))
//
//}


let value = "20"
//format.dateFormat = "'T'HH:mm:ss.SSS"
for i in 1...10{
    let validTime = String(i)
    let formatter3 = DateFormatter()
    formatter3.dateFormat = "'T'HH:mm:ss.SSS"
    print(formatter3.date(from: validTime) ?? "0000")
}
