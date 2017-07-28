
// Swift Irregular Whitespace String Parser
// Developed by Kyle O'Brien

import Cocoa

func split(str: String) -> [String] {
    var words:[String] = []
    var previous = ""
    
    for char in str.characters {
        if char != " " {
            previous += String(char)
        }
        else if previous != "" {
            words.append(previous)
            previous = ""
        }
    }
    
    if str.characters.last != " " {
        words.append(previous)
    }
    
    return words
}

func test() {
    let originalString = "Of this,      man will        know    nothing"
    let splitString = split(str: originalString)
    print(splitString)
}

test()




