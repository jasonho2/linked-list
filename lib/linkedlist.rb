class Node

  attr_accessor :node, :next_node

  def initialize(value = nil, next_node = nil)
    @node = value
    @next_node = next_node
  end

  def inspect
    "<Node: #{object_id} @node=#{@node}, @next_node=#{@next_node ? @next_node.node : 'nil'}>"
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

  #size method
  def size
    count = 0
    current = @head
    while current
      count += 1
      current = current.next_node
    end
    count
  end

  # head method
  def head
    return if @head.nil?
    @head
  end

  # tail method
  def tail
    return if @head.nil?
    current = @head
    while current.next_node != nil
      current = current.next_node
    end
    current
  end

  # at method
  def at(index, current = @head)
    return if @head.nil?
    count = 0
    current = @head
    while count < index
      current = current.next_node
      count += 1
    end
    "<Node: #{object_id} @node=#{current.node}, @next_node=#{current.next_node.node}>"
  end

  # pop method
  def pop
    return if @head.nil?
    if @head.next_node.nil?
      @head = nil
      return
    end
    current = @head
    while current.next_node.next_node
      current = current.next_node
    end

    current.next_node = nil
  end

  # contains? method
  def contains?(value)
    return if @head.nil?

  end

  def to_s
    current = @head
    while current
      print "( #{current.node} ) -> "
      current = current.next_node
    end
    puts "nil"
  end

end
