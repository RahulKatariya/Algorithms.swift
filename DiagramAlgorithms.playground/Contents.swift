/*: Print the following pattern
 *
 **
 ***
 ****
 *****
 */

func pattern(_ pattern: String = "*", times: Int = 5) -> String {
    var _pattern = ""
    (1...times).forEach {
        let string = Array(repeating: pattern, count: $0).joined()
        _pattern = _pattern + string + "\n"
    }
    return _pattern
}

print(pattern())
