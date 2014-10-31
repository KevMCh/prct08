Node = Struct.new(:value, :next)
class Lista

	def initialize(val, siguiente)

	
		@head = Node.new(val, nil)
	
	end

	def push(valor)

		aux = Node.new(valor,@Inicio)
		@Inicio = aux
	end

end

