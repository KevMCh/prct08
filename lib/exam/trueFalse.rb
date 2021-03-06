require_relative "pregunta"

class  TrueFalse < Pregunta

	include Comparable

	attr_accessor :verdfals

	def initialize(enunciado, dif = 0, correcta)

		super(enunciado, dif, correcta)
		@verdfals = ['a) Cierto','b) Falso']
	end

	def to_s

		cadena ="#{@enunciado}\n"

		@verdfals.each {|m| cadena += "#{m}\n"}
	
		cadena
        end

	
end