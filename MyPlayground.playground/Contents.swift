import UIKit

var str = "Hello, playground"

struct Queue<Element> {
    var items = [Element]()
    
    mutating func enqueue(_item: Element) {
        items.append(_item)
    }
    
    mutating func dequeue() -> Element {
        return items.removeLast()
    }
}

extension Queue {
    var topElement: Element? {
        return items.isEmpty ? nil: items[0]
    }
}

struct Foo<Element: Equatable> {
    var x: Element
    var y: Element
    
    init(_x: Element, _y: Element) {
        self.x = _x
        self.y = _y
    }
    
    mutating func isEqual() -> Bool {
        if (x == y) {return true}
        else {return false}
    }
}
