class Node

  attr_accessor :node, :next_node

  def initialize(value = nil, next_node = nil)
    @node = value
    @next_node = next_node
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
    elsif @head == @tail
      @tail = new_node
      @head.next_node = @tail
    else
      @tail = new_node
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
