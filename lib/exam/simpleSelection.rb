class SimpleSelection

	attr_accessor :enunciado, :op

	def initialize(enunciado, op)

		@enunciado, @op  = enunciado, op

	end

	def improp

		"#{op[0]}\n#{op[1]}\n#{op[2]}\n#{op[3]}" 

	end
end

