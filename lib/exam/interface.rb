class Interface
    
    attr_reader :exam
    
    def initialize(cexam)
        
        @exam = cexam
       
    end
   
    def realizar
        
        puts "#{@exam.tit}"
      
        aux = @exam.obtenerPreg
      
        while (aux.to_s!=nil)
        
            puts aux.to_s
            
            respuesta = gets
        
            comprobacionRespuesta(respuesta, aux) 
        
            aux = @exam.obtenerPreg
        
        end
       
        nota
       
    end
   
    private 
   
    def comprobacionRespuesta(respuesta, pregunta)
        
        if(respuesta==pregunta.correcta)
            
            @exam.respuesta(true)
          
        else
          
            @exam.respuesta(false)
          
        end
      
    end
   
    def nota
       
        puts "Nota final: "
       
        return (@exam.nota/@exam.nPreg)
   
    end
end