
class FacebookProfile {
    // attributes
    var bio: String
    var friendCount: Int
    var userName: String
    var birthday: String
    var relationStatus: String
    var friendList: [String]
    
    // options for relationStatus
    let optionsOne = "Single"
    let optionTwo = "It's Complicated"
    let optionThree = "Married"
    let optionFour = "Divorced"
    
    //initialize
    init(name: String, words: String, date: String, option: Int, friends: [String]) {
        bio = words
        userName = name
        birthday = date
        friendList = friends
        if (option == 1) {
            relationStatus = optionsOne
        } else if (option == 3) {
            relationStatus = optionThree
        } else if (option == 4) {
            relationStatus = optionFour
        } else {
            relationStatus = optionTwo
        }
        friendCount = friendList.count
    }
    // set functions
    func setBio(newBio: String) {
        // sets bio
        bio = newBio
    }
    func setUserName(newUserName: String) {
        // sets userName
        userName = newUserName
    }
    func setBirthday(newBirthday: String) {
        // sets birthday
        birthday = newBirthday
    }
    func setRelationStatus(option: Int) {
        // sets relationStatus
        if (option == 1) {
            relationStatus = optionsOne
        } else if (option == 2) {
            relationStatus = optionTwo
        } else if (option == 3) {
            relationStatus = optionThree
        } else if (option == 4) {
            relationStatus = optionFour
        } else {
            print("not an option")
        }
    }
    func setFriendCount() {
        friendCount = friendList.count;
    }
    
    // changing friend list
    func addFriend(friend: String) {
        friendList.append(friend)
    }
    func removeFriend(friendFind: String) {
        var index = 0
        var remove: Int
        for friend in friendList {
            if (friend == friendFind) {
                remove = index
                friendList.remove(at: remove)
                setFriendCount()
                break
            }
            index += 1
        }
    }
    
    //wrapper functions
    func getBio() -> String{
        // gets bio
        return(bio)
    }
    func getUserName() -> String {
        // gets userName
        return(userName)
    }
    func getBirthday() -> String {
        // gets birthday
        return(birthday)
    }
    func getRelationStatus() -> String {
        // gets relationStatus
        return(relationStatus)
    }
    func getFriendCount() -> Int {
        // gets friendCount
        return(friendCount)
    }
    func getFriends() -> [String] {
        // gets friendList
        return(friendList)
    }
    
    // display info
    func displayProfile() {
        print(userName)
        print("Friend Count: \(friendCount)")
        print("Birthday: \(birthday)")
        print("Bio: \(bio)")
        print("Relation Status: \(relationStatus)")
        print("Friend List:")
        for person in friendList {
            print("==>>" + person)
        }
        print()
        
    }
}

// testinggg
var person = FacebookProfile(name:"starcassielalala", words:"hi there", date:"march 9", option:2, friends: ["elise", "jackie", "jace"])
person.addFriend(friend: "justin")
person.addFriend(friend: "amanda")
person.removeFriend(friendFind: "jace")
person.getBio()
person.displayProfile()
var person2 = FacebookProfile(name: "jackiepoowelte", words: "youyoy", date: "august 22", option: 4, friends: ["cassie", "elise", "jaime", "ashley", "nicole"])
person2.displayProfile()
var person3 = FacebookProfile(name: "jtisle", words: "heeyyooo", date: "may 16", option: 3, friends: ["josh", "cassie", "jaime", "aarron", "miles"])
person3.displayProfile()
