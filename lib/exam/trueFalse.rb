require_relative "pregunta"

class  TrueFalse < Pregunta

	attr_accessor :verdfals

	def initialize(enunciado)

		super(enunciado)
		@verdfals = ['a) Cierto','b) Falso']
	end

	def to_s

		cadena ="#{@enunciado}\n"

		@verdfals.each {|m| cadena += "#{m}\n"}
	
		cadena
        end

	
end