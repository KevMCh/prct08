class Quiz
    
    def initialize(&block)
        
        @listapreg = Lista.new()
        
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
        count = 0
        correcta = nil

        opciones.each do |key, val|
            
            if ("#{key}" == "right")
                
                op[count]= val
                correcta="#{val}"
                count = count + 1
                


            else
                
                op[count]= val
                count = count + 1
            end
        end
        
        preg = SimpleSelection.new(enunciado, op, correcta)
        
        @listapreg.push(preg)
        
    end
    
    def truefalseQuestion(enunciado, correcta)
        
        preg = TrueFalse.new(enunciado, correcta)
        
        @listapreg.push(preg)
        
    end
    
end