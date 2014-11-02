Node = Struct.new(:value, :next)
class Lista

	attr_reader :head

	def initialize()

	
		@head
	
	end

	def pop()

		if(@head != nil)

			aux = @head
			@head = @head.next
			return aux.value

		else

			return nil

		end

	end

	def push(value)

		if(@head != nil)

			aux = @head

			while (aux.next !=nil)

			aux = aux.next

			end

			aux.next = Node.new(value, nil)
		else

			@head = Node.new(value, nil)

		end

	end

	def to_s

		aux = @head

		while (aux.next !=nil)

			return aux.head.to_s

			aux = aux.next

		end

	end


end

