import Foundation

@objc public class FirstPLugin: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
