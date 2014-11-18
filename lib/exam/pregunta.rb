class Pregunta

	include Comparable

	attr_accessor :enunciado, :dificultad, :correcta

	def initialize(enunciado, dif = 0, correcta)

		@enunciado = enunciado
		@dificultad = dif
		@correcta = correcta

	end

	def to_s

		cadena = "#{@enunciado}\n"

		cadena

	end
	
	def <=>(other)
		
    	return nil unless other.is_a? Pregunta
    	
    	@dificultad <=> other.dificultad
    	
  	end
  	
  	def ==(other)
  	
  		(@dificultad == other.dificultad) && (@enunciado == other.enunciado)
  			
  	end	
  
  

end
