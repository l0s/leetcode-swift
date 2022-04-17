//
//  copy-list-with-random-pointer.swift
//

class Node {
    public var val: Int
    public var next: Node?
    public var random: Node?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
        self.random = nil
    }
}

class Solution {
    func copyRandomList(_ head: Node?) -> Node? {
        // map _original_ memory address to copied node
        var copies: [AnyHashable: Node] = [:]

        // store nodes and populate values
        var cursor = head
        while let node = cursor {
            let copy = Node(node.val)
            copies[node.address] = copy

            cursor = node.next
        }
        // set the next and random pointers
        cursor = head
        while let node = cursor {
            let copy = copies[node.address]!
            if let next = node.next {
                copy.next = copies[next.address]!
            }
            if let random = node.random {
                copy.random = copies[random.address]!
            }
            
            cursor = node.next
        }
        
        guard let head = head else {
            return nil
        }
        return copies[head.address]
    }
}

extension Node {
    var address: AnyHashable {
        return Unmanaged.passUnretained(self).toOpaque()
    }
}
