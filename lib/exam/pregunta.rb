class Pregunta

	attr_accessor :enunciado

	def initialize(enunciado)

		@enunciado = enunciado

	end

	def to_s

		cadena = "#{@enunciado}\n"

		cadena

	end

end
