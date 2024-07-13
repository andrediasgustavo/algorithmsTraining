//MARK: Stack Data structure

/*
 Stack is a data structure that is basically a linked list,
 with a reference just to the head, so you will usually have in this data structure
 an push and pop method, where with the push method it is added to the
 head of the collection, and pop it is popped also from the head, so it follows the
 LIFO order, last in first out. Basically the operations will just happens in the head
 make the previous value of the new node point to the old
 head, and the head point to the new node, so you will always adding to the stack in the head
 and when popping, also from the head, save the reference from the actual head node, make the
 head point to the old head previous node.
 All of these operations are O(1)
*/

class Node<T> {
    var value: T?
    var prev: Node<T>?
    init(value: T? = nil) {
        self.value = value
    }
}

struct Stack<T> {
    private var head: Node<T>?
    
    
    mutating func push(value: T?) {
        let newNode = Node(value: value)
        guard head != nil else {
            self.head = newNode
            return
        }
        
        newNode.prev = self.head
        self.head = newNode
        
    }
    
    mutating func pop() -> T? {
        guard head != nil else { fatalError("The queue is empty" )}
        var tempHead = head
        head = tempHead?.prev
        tempHead = nil
        return head?.value
    }
    
    func peek() -> T? {
        return head?.value
    }
    
    func printAllValue() {
        var curr: Node<T>? = head
        var str = ""
        while curr != nil {
            if let value = curr?.value {
                str += "|\(value)|\n"
                curr = curr?.prev
            }
        }
        print(str)
    }
}

var stack = Stack<String>()
stack.push(value: "one")
stack.push(value: "two")
stack.push(value: "three")
stack.push(value: "four")
stack.push(value: "five")
stack.push(value: "six")
stack.push(value: "seven")

stack.printAllValue()

print(stack.pop())
print(stack.pop())

print(stack.peek())

stack.printAllValue()
