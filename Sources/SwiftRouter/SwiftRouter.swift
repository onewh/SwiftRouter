import Foundation

public class Router: NSObject {
    public static func route(_ target: Routeable) {
        let handler = target.handler
        handler.perform()
    }
}

public protocol Routeable {
    var handler: DispatchWorkItem { get }
}
