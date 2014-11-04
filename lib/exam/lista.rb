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

			auxprev = aux

			aux = aux.next

			end

			aux.next = Node.new(value, nil, auxprev)
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

		cadena = "#{@head.value.to_s}"

		aux = @head	

		while(aux.next != nil)

			aux = aux.next
			cadena += "#{aux.value.to_s}"

		end	
		
		cadena

	end
end

