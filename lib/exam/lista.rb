<<<<<<< HEAD
Node = Struct.new(:value, :next)
class Lista

	def initialize(val)


 	@head = Node.new(val,)


	end


	def to_s

	puts @head[:value]
	puts @head[:next]

        end

end
=======
Cell = Struct.new(:value, :next)


list = Cell.new(2,nil)


def linked_list(value, cell)
  return Cell.new(value, cell)
end


def recursive_print(list)
  p list.value
  recursive_print(list.next) unless list.next == nil
end



i = 0
10.times {
  i += 1
  list = linked_list(i, list)
}

recursive_print(list) 
>>>>>>> 6d517e42483e5babd3ef86a6311d0f90cc9d27b7
