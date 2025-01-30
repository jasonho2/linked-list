require_relative 'lib/linkedlist.rb'

list = LinkedList.new

list.append('dog')
list.append('cat')
#list.append('parrot')
#list.append('hamster')
#list.append('snake')
#list.append('turtle')

puts list.inspect
puts list.size
puts list.head.inspect
puts list.tail.inspect