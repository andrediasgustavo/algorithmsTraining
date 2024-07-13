//MARK: Queue Data structure

/*
 Queue is a data structure created using an array with a head and a tail,
 So you will usually have in this data structure an enQueue and deQeueu method,
 where with the enqueue method it will add to the tail of the collection, and dequeue
 it will be popped from the head, so it follows the FIFO order, first in first out.
 
The question is when to use a queue built with arrays, why or why not:
 Arrays have better cache efficiency due to their contiguous memory allocation.
 Arrays are also easier to use and have a lot of built-in tools in the standard swift sdk.
 The problems are when enqueue and dequeue are O(n) time complexity operations, because 
 of the shifting of elements in the collection when an element is added or removed.
 Also the resizing of the array when it grows to unexpected size, it has the cost of 
 allocating more contiguous pace in memory, so it is usually an O(n) operation, of course
 that swift for example have a lot of optimizations but it is more costly compared to linked list for example.
 So concluding that it's a good use when caching is paramount and/or the size won't grow unexpectedly.
 
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
