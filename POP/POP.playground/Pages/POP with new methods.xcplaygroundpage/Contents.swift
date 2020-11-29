import Foundation

// Protocol with associated types

protocol Queue {
  associatedtype ItemType
  var count: Int { get }
  mutating func push(_ Item: ItemType)
  mutating func pop() -> ItemType
  mutating func allItems() -> [ItemType]
}

extension Queue {
  // This method will be available to all Type conform to Queue protocol
  func compare<Q>(queue: Q) -> ComparisonResult where Q: Queue  {
    if count < queue.count { return .orderedDescending }
    if count > queue.count { return .orderedAscending }
    return .orderedSame
  }
}

class Container<Item>: Queue {
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


let c1 = Container<Int>()
c1.push(1)
c1.push(2)
c1.push(3)


let c2 = Container<Int>()
c2.push(4)
c2.push(5)

let compare = c1.compare(queue: c2)
switch compare {
case .orderedAscending: print("c1 > c2")
case .orderedDescending: print("c1 < c2")
case .orderedSame: print("c1 = c2")
}
