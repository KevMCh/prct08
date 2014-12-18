class Orange
    
    attr_reader :edad, :altura, :numnaranjas, @naranAnual
    
    ADULTO = 5
    MUERTO = 10
   
    def initialize()
        
        @edad = 0
        @altura = 0
        @numnaranjas = 0
        @mutex = Mutex.new
        @naranAnual = []
        
    end
    
    def uno_mas
        
        if MUERTO > @edad
            
            @edad += 1
            @altura += 0.75
            
            if ((@edad>5) && (@edad<7))
                
                @mutex.synchronize{ 
                    
                    @numnaranjas += 3
                    @naranAnual[@edad] += 3 
                    
                }
            else
                
                @mutex.synchronize{
                    
                    @numnaranjas +=5
                    @naranAnual[@edad] += 5
                }
                
            end
            
        else
            
            @altura = 0
            @mutex.synchronize{ 
                @numnaranjas = 0
                
            }
            
        end
    end
end