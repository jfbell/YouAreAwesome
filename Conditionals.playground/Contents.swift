import UIKit


//var messageString = "I'm a developer!"
//
//print(messageString)
//print("Concatination is wired"+messageString)
//print("Concatination is wired, \(messageString)", "promise")
//
//var person = "Prot. G."
//if person == "Limor!" {
//    print ("Hello, Lady Ada!")
//} else if person == "Grace" {
//    print ("Hello, Admiral Hopper!")
//} else {
//    print ("Hello There!")
//}


//var person = "Limor"
//
//switch person {
//case "Limor":
//    print("hello Lady Ada")
//case "Grace":
//    print("hello Admiral Hopper")
//case "Beyoncé":
//    print("All hail Queen B")
//default:
//    print("Hello there, \(person)")
//}
//
//
////Ternary Operator
//
//let result = (person == "Limor" ? "Hello Lady Ada" : "Hello There \(person)" )
//print(result)
//
//print(person == "Limor" ? "Hello Lady Ada" : "Hello there \(person)")


//
//var myNum = 0.0
//var myString = ""
//
//var imageNumber = 0
//var imageName = ""
//
//print("image" + String(imageNumber))
//
//print("image\(imageNumber)")


var messages = ["you are awesome",
"You are great", "fabulous"]

for message in messages {
    print(message)
}

messages.count
messages.capacity

print(messages[messages.count-1])

messages.append("fantastic")

messages = messages + ["You Swifty", "code monster"]

messages.insert("you are skilled", at: 1)

print("")
for message in messages {
    print(message)
}

var grades:[Double] = []
