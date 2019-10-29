class Queue
    def initialize
        @elements = []
    end
    
    def length
        @elements.length
    end

    # Return self
    def push(x)
        @elements.push x
        self 
    end
    
    def pop
        @elements.pop
    end
    
    def peek
        @elements[-1]   
    end

    def display
        puts @elements.join(" , ")
    end
end

myStack = Stack.new()

myStack.push(1)
myStack.push(3)
myStack.push(5)
myStack.push(7)
myStack.push(9)

myStack.display

poped = myStack.pop
puts "Popped value is " + poped.to_s

myStack.display

