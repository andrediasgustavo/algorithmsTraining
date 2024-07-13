//MARK: Queue Data structure

/*
 Queue is a data structure created using an array with a head and tail,
 so you will usually have in this data structure
 a enQueue and deQeueu method where it with the enqueue method it add to
 the tail of the collection, and dequeue it is popped from the head, so it
 follows the FIFO order, first in first out.
*/


struct Queue<T> {
    
    private var head: T? {
        guard let firstItem = items.first else { fatalError("The queue is empty") }
        return firstItem
    }
    
    private var tail: T? {
        guard let lastItem = items.last else { fatalError("The queue is empty") }
        return lastItem
    }
    
    private var items: [T] = []
    
    
    mutating func enQueue(value: T) {
        items.append(value)
    }
    
    mutating func deQueue() -> T? {
        guard !items.isEmpty else { fatalError("The queue is empty") }
        return items.removeFirst()
    }
    
    func peek() -> T? {
        return head
    }
    
    func printAllValue() {
        var str = ""
        for item in items {
            str += "\(item) -> "
        }
        print(String(str.dropLast(4)))
    }
}


var queue = Queue<String>()
queue.enQueue(value: "one")
queue.enQueue(value: "two")
queue.enQueue(value: "three")
queue.enQueue(value: "four")
queue.enQueue(value: "five")
queue.enQueue(value: "six")
queue.enQueue(value: "seven")

print(queue.deQueue())
print(queue.deQueue())

print(queue.peek())

queue.printAllValue()
