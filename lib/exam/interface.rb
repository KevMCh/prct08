class Interface
    
    attr_reader :exam
    
    def initialize(cexam, respuestas)
        
        @exam = cexam
        @respuestas = respuestas
       
    end
   
    def realizar
        
        aux = @exam.obtenerPreg
        
        i = 0
      
        while (aux.to_s!=nil)
        
            comprobacionRespuesta(@respuestas[i], aux) 
        
            i = i + 1
        
            aux = @exam.obtenerPreg
        
        end
       
        nota
       
    end
    
    def nota
       
        puts "Nota final: "
       
        return @exam.nota
   
    end
   
    private 
   
    def comprobacionRespuesta(respuesta, pregunta)
        
        if(respuesta == pregunta.correcta)
            
            @exam.respuestaComp(true)
          
        else
          
            @exam.respuestaComp(false)
          
        end
      
    end
   
end