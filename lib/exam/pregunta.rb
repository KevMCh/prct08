class Pregunta

	include Comparable

	attr_accessor :enunciado, :dificultad

	def initialize(enunciado, dif = 0)

		@enunciado = enunciado
		@dificultad = dif

	end

	def to_s

		cadena = "#{@enunciado}\n"

		cadena

	end
	
	def <=>(other)
		
    	return nil unless other.is_a? Pregunta
    	
    	@dificultad <=> other.dificultad
    	
  end

end
