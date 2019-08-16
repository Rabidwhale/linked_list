class LinkedListNode # createsa a class for LinkedListNode
  attr_accessor :value, :next_node # calls on the attr_accessor method with the arguments of value and next_node=nil

  def initialize(value, next_node=nil) # Initializes value and next_node=nil to be used in the class
    @value = value
    @next_node = next_node
  end
end

class Stack # creates a class for stack
    attr_reader :data # gives the ability to show the data variable in the code

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        @data = LinkedListNode.new(value, @data)
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        return print "nil\n" if @data.nil?
        print "#{@data.value}\n"
        @data = @data.next_node
    end

end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def reverse_list(list)
    stack = Stack.new

    while list
        stack.push(list.value)
        list = list.next_node
    end

    return stack.data
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)