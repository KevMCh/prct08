class Quiz
    
    RIGHT = :right
    WRONG = :wrong
    
    def initialize(&block)
        
        @listapreg = Lista.new()
        @counter = 0
        if block_given?
            if block.arity == 1
                yield self
            else
                instance_eval &block
            end
        end
        
        @examen = CExam.new("Cuestionario",@listapreg)

    end
    
    def to_s
        
        @examen.to_s
        
    end
    
    def simpleselectionQuestion(enunciado, opciones = {})
        
        op =[]
        cnt=0
        correcta =nil
        opciones.each do |key, val|
            
            op[cnt] = "#{val}"
            
            if(key[1]==RIGHT)
               
               correcta = "#{val}"
                
            end
            
            cnt +=1
            
        end
        
        preg = SimpleSelection.new(enunciado, op, correcta)
        
        @listapreg.push(preg)
        
    end
    
    def truefalseQuestion(enunciado, correcta)
        
        preg = TrueFalse.new(enunciado, correcta)
        
        @listapreg.push(preg)
        
    end
    
    def wrong
        
        @counter += 1
        [@counter, WRONG]
        
    end
    
    def right
        
        @counter+= 1
        [@counter, RIGHT]
    end
end