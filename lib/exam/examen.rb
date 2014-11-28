class CExam
    
    attr_accessor :tit, :nota, :preguntasExam, :nPreg
    
    def initialize(titulo, lista)
        
        @tit = titulo
        
        @nota = 0
		
	    @preguntasExam = lista
    	
        @nPreg = 0
        
        @block = Proc.new{
        
        @preguntasExam.popend()
    }
        
    end
    
    def to_s
    
        @preguntasExam.to_s
    end
    
    def obtenerPreg
       
       @nPreg = @nPreg + 1
       
       return @preguntasExam.pop()
        
    end
    
    def respuestaComp(correcta)
        
        if(correcta)
            
            @nota = @nota + 1
            
        else
        
            @nota = @nota - 0.25
                
        end
       
    end
    
    def obtenerInver
        
        @nPreg = @nPreg + 1
        
        return @block.call
    end
    
end