class Node

  attr_accessor :node, :next_node

  def initialize(value)
    @node = value
    @next_node = nil
  end

end

class LinkedList

  attr_accessor :head, :tail

  def initialize
    @head = nil
  end
  
  # append method
  def append(value)
    new_node = Node.new(value)

    if @head.nil?
      @head = new_node
    else
      current = @head
      while current.next_node != nil
        current = current.next_node
      end
      current.next_node = new_node
    end

  end

  # prepend method
  def prepend(value)
    new_node = Node.new(value)

    if @head.nil?
      @head = new_node
    else
      new_node.next_node = @head
      @head = new_node
    end

  end

  def size
    count = 0
    current = @head
    while current
      count += 1
      current = current.next_node
    end
    count
  end

end
