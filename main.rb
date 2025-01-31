require_relative 'lib/linkedlist.rb'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.prepend('turtle')

puts list.to_s
puts list.size
puts list.head.inspect
puts list.tail.inspect

puts list.at(4)

puts list.pop
puts list.to_s

puts list.contains?("parrot")
puts list.contains?("zebra")

puts list.find("cat")
puts list.find("zebra")

puts list.insert_at("cow", 4)
puts list.remove_at(4)
puts list.size
puts list.to_s