class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
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

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    @data = LinkedListNode.new(value, @data)
  end

  def pop
    if @data.nil?
      print nil
    else
      return_value = @data.value
      @data = @data.next_node
      return_value
    end
  end
end

def reverse_list(list)
  stack = Stack.new
    while list
      stack.push(list.value)
      list = list.next_node
    end
  LinkedListNode.new(stack.pop, stack.data)
end

# stack class

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

reverse = reverse_list(node3)
print_values(node3)
print_values(reverse)