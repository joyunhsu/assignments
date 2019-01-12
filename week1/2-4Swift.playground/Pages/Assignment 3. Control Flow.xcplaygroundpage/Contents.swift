// Control Flow
//1
let lottoNumbers = [10,9,8,7,6,5]
for i in 3...5 {
    print(lottoNumbers[i])
}

//2 


//3 While loop
var lastIndex = lottoNumbers.count - 1
while lastIndex >= 0 {
    print(lottoNumbers[lastIndex])
    lastIndex -= 1
}

var index = 0
while index < lottoNumbers.count {
    print(lottoNumbers[index])
    index += 2
}

//4 repaet-while loop
var lastIndex2 = lottoNumbers.count - 1
repeat {
    print(lottoNumbers[lastIndex2])
    lastIndex2 -= 1
} while lastIndex2 >= 0

var index2 = 0
repeat {
    print(lottoNumbers[index2])
    index2 += 2
} while index2 < lottoNumbers.count

//5
var isRaining = true
if isRaining == true {
    print("It's raining, I don't want to work today.")
} else {
    print("Although it's sunny, I still don't want to work today.")
}

//6
var jobLevel = 4

switch jobLevel {
case 1: print("Member")
case 2: print("Team Leader")
case 3: print("Manager")
case 4: print("Director")
default: print("We don't have this job")
}

