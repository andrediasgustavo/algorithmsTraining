//MARK: Queue Data structure

/*
 Queue is a data structure that is basically a linked list,
 with a head and a tail, so you will usually have in this data structure
 an enQueue and deQeueu method, where with the enqueue method it is added to the
 tail of the collection, and dequeue it is popped from the head, so it follows the
 FIFO order, first in first out.
 
 The question is when to use queue built with linked list, why or why not:
 Advantage of O(1) for enqueue and dequeue, it only needs to have the
 reference to the tail and head.
 Linked list can grow dynamically without any problem, no overcost for growing like an array has.
 Disadvantages are: A bit more memory usage because of maintaining the next node reference.
 Not so good for caching due to linked list nature to be scattered in memory.
 So concluding that it is good to use if you need constant complexity in enqueue 
 and dequeue operations, memory overhead for linking references between nodes is not a
 problem and/or the queue can grow unexpectedly.

*/


class Node<T> {
    var value: T?
    var next: Node<T>?
    init(value: T? = nil) {
        self.value = value
    }
}

struct Queue<T> {
    private var head: Node<T>?
    private var tail: Node<T>?
    
    
    mutating func enQueue(value: T?) {
        let newNode = Node(value: value)
        guard tail != nil else {
            self.tail = newNode
            self.head = newNode
            return
        }
        
        self.tail?.next = newNode
        self.tail = newNode
        
    }
    
    mutating func deQueue() -> T? {
        guard head != nil else { fatalError("The queue is empty" )}
        let tempHead = head
        head = head?.next
        return tempHead?.value
    }
    
    func peek() -> T? {
        return head?.value
    }
    
    func printAllValue() {
        var curr: Node<T>? = head
        var str = ""
        while curr != nil {
            str += "\(curr?.value) -> "
            curr = curr?.next
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
