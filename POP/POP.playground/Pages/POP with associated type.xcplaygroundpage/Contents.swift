import Foundation

// Protocol with associated types

protocol Queue {
  associatedtype ItemType
  var count: Int { get }
  mutating func push(_ Item: ItemType)
  mutating func pop() -> ItemType
  mutating func allItems() -> [ItemType]
}

class Container<Item>: Queue { // With this approach, it can accept any kind of type
  private var items: [Item] = []
  
  var count: Int {
    return items.count
  }
  
  func push(_ Item: Item) {
    items.append(Item)
  }
  
  func pop() -> Item {
    return items.removeFirst()
  }
  
  func allItems() -> [Item] {
    return items
  }
}

class Box: Queue {
  typealias ItemType = Int // With this approach, it can accept only a specific type Int
  
  private var items: [ItemType] = []
  
  var count: Int {
    return items.count
  }
  
  func push(_ Item: ItemType) {
    items.append(Item)
  }
  
  func pop() -> ItemType {
    return items.removeFirst()
  }
  
  func allItems() -> [ItemType] {
    return items
  }
}

let container = Container<String>()
container.push("1")
container.push("2")
container.push("3")
print("Items: \(container.allItems())")
print("Pop items: \(container.pop())")
print("Items: \(container.allItems())")

print("===================================")

let box = Box()
box.push(1)
box.push(2)
box.push(3)
print("Items: \(box.allItems())")
print("Pop items: \(box.pop())")
print("Item: \(box.allItems())")
