class Node
    attr_accessor :value, :next_node

    def initialize val,next_in_line
        @value = val
        @next_nodex = next_in_line
        puts "Initialized a Node with value:  " + value.to_s 
    end
end

class LinkedList

    def initialize val
        @head = Node.new(val,nil)
    end
    
    def add(value)
        current = @head
        while current.next_node != nil
            current = current.next_node
        end 
        current.next_node = Node.new(value,nil)
        self    
    end

    def delete(val)
        current = @head
        if current.value == val
            @head = @head.next_node
        else
            current = @head
            while (current != nil) && (current.next_node != nil) && ((current.next_node).value != val)
                current = current.next_node
            end 

            if (current != nil) && (current.next_node != nil)
                current.next_node = (current.next_node).next_node
            end
        end
    end
    
    def display
        current = @head
        full_list = [] 
        while current.next_node != nil 
            full_list += [current.value.to_s]
            current = current.next_node
        end
        full_list += [current.value.to_s]
        puts full_list.join("->")
    end
end

ll = LinkedList.new(10)

# Adding Elements to Linked List
ll.add(30)
ll.add(15)

# Display the Linked List
puts "Displaying Linked List:"
ll.display

puts "Delete 30 and then display the linked list:"
ll.delete(30)
ll.display
