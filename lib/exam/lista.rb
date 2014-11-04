Node = Struct.new(:value, :next, :prev)

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

			aux.next = Node.new(value, nil, nil)
		else

			@head = Node.new(value, nil, nil)

		end

	end

	def pushbefore(value)

                if(@head != nil)

                        nuevonodo = Node.new(value, @head, @head.prev)
			@head.prev = nuevonodo

                else

                        @head = Node.new(value, nil, nil)

                end

	end

	def to_s

		impr(@head)

	end

	def impr(nodo)

		if (nodo !=nil)

			 nodo.value.to_s

		end

	end
end

