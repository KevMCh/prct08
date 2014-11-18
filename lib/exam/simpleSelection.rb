require_relative "pregunta"

class SimpleSelection < Pregunta
	
	include Comparable

	attr_accessor :op

	def initialize(enunciado, op, dif = 0, correcta)

		super(enunciado, dif, correcta)
		@op = op

	end

	def to_s

		cadena ="#{@enunciado}\n"

		@op.each {|m| cadena += "#{m}\n"}
	
		cadena
        end

	
end


