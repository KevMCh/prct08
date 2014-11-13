Node = Struct.new(:value, :next, :prev)

class Lista
	
	include Enumerable
	
	def each
		
		aux = @head
		while(aux.next != nil)
		yield aux.value  
		aux = aux.next 
		
		end
	end 	

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

			aux.next = Node.new(value, nil, aux)
			
		else

			@head = Node.new(value, nil, nil)

		end

	end
	
	def mulpush(valores)

                valores.each do |x| 
                push(x)

                end

        end

	def pushbefore(value)

                if(@head != nil)

                        nuevonodo = Node.new(value, @head, @head.prev)
			@head = nuevonodo

                else

                        @head = Node.new(value, nil, nil)

                end

	end
	
	def mulpushbefore(valores)

                valores.each do |x| 
                pushbefore(x)

                end

        end

	def to_s

		cadena = "#{@head.value.to_s}"

		aux = @head	

		while(aux.next != nil)

			aux = aux.next
			cadena += " "
			cadena += "#{aux.value.to_s }"

		end	
		
		cadena

	end
	
    def imprinver

        aux = @head

        while(aux.next != nil)

        	aux = aux.next
                
        end

        cadena = "#{aux.value.to_s}"

        while(aux.prev != nil)

            aux = aux.prev
            cadena += " "
            cadena += "#{aux.value.to_s}"

        end

        cadena

    end
	
end

