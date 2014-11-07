require_relative "pregunta"

class SimpleSelection < Pregunta

	attr_accessor :op

	def initialize(enunciado, op)

		super(enunciado)
		@op = op

	end

	def to_s

		cadena ="#{@enunciado}\n"

		@op.each {|m| cadena += "#{m}\n"}
	
		cadena
        end

	
end


