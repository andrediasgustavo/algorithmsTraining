//MARK: Singly Linked list Data structure

/*
 So it is a basic data structure where you have n nodes, being which node,
 like a container, containing a value and the reference to the next node, it don't
 have index and to find a node you have to traverse all the nodes, in singly linked list
 you just can go forward without the reference to the previous node it is lost.
 insertion and deletion on linked list are constant operaitons so basically O(1).
 
*/


class Node<T> {
    var value: T?
    var next: Node<T>?
    init(value: T? = nil) {
        self.value = value
    }
}

var linkedList = Node(value: 1)
linkedList.next = Node(value: 2)
linkedList.next?.next = Node(value: 3)
linkedList.next?.next?.next = Node(value: 4)
linkedList.next?.next?.next?.next = Node(value: 5)



func printAllValue<T>(list: Node<T>?) {
    var curr: Node<T>? = list
    var str = ""
    while curr != nil {
        if let value = curr?.value {
            str += "\(value) -> "
            curr = curr?.next
        }
    }
    print(String(str.dropLast(4)))
}

printAllValue(list: linkedList)
