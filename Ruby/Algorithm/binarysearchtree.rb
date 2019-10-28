class TreeNode
    attr_accessor :value, :left, :right
    def initialize val,left,right
        @value = val
        @left = left
        @right = right
    end
end

class BinarySearchTree
    
    def initialize val
        puts "Initializing : " + val.to_s
        @root = TreeNode.new(val,nil,nil)   
    end

    def preOrderTraversal(node= @root)
        return if (node == nil)
        preOrderTraversal(node.left)
        preOrderTraversal(node.right)
        puts node.value.to_s
    end

    def postOrderTraversal(node = @root)
        return if (node == nil)
        puts node.value.to_s
        postOrderTraversal(node.left)
        postOrderTraversal(node.right)
    end

    def inOrderTraversal(node = @root)
        return if (node == nil)
        inOrderTraversal(node.left)
        puts node.value.to_s
        inOrderTraversal(node.right)
    end

    def insert(value)
        puts "Inserting :" + value.to_s
        current_node = @root
        while nil != current_node
            if (value < current_node.value) && (current_node.left == nil)
                current_node.left = TreeNode.new(value,nil,nil)
            elsif  (value > current_node.value) && (current_node.right == nil)
                current_node.right = TreeNode.new(value,nil,nil)
            elsif (value < current_node.value)
                current_node = current_node.left
            elsif (value > current_node.value)
                current_node = current_node.right
            else
                return
            end
        end
    end
end

bst = BinarySearchTree.new(10)
bst.insert(11)
bst.insert(9)
bst.insert(5)
bst.insert(7)
bst.insert(18)
bst.insert(17)
# Demonstrating Different Kinds of Traversals
puts "In-Order Traversal:"
bst.inOrderTraversal
puts "Pre-Order Traversal:"
bst.preOrderTraversal
puts "Post-Order Traversal:"
bst.postOrderTraversal
