// Assignment 3: Collection
//1
var myFriends: [String] = []

//2
myFriends = ["Ian", "Romi", "Kevin"]

//3
myFriends += ["Michael"]

//4
myFriends.remove(at: 2)
myFriends.insert("Kevin", at: 0)

//5
print(myFriends)

//6
//myFriends.count[5] -> wourld CRASH. An index out of bounds error: becasue the array only has 4 items. index 5, which is the 6th item in the array (since the first item starts with index number 0) does not exist and will cause severe crash to the programme.

//7
myFriends[0] //read for index 0, which is the first item

//8
myFriends[3] // read for index 3, which is the 4th and the last item (last element index number = total item counts -1)

//9
var myCountryNumber: [String: Int] = [:]

//10
myCountryNumber = ["US": 1, "GB": 44, "JP":81]

//11
myCountryNumber["GB"] = 0

//12
var emptyDict: [String: String] = [:]

//13
myCountryNumber.removeValue(forKey: "US")

