class Orange
    
    attr_reader :edad, :altura, :numnaranjas
    
    ADULTO = 5
    MUERTO = 10
   
    def initialize()
        
        @edad = 0
        @altura = 0
        @numnaranjas = 0
        @mutex = Mutex.new
        
    end
    
    def uno_mas
        
        if MUERTO > @edad
            
            @edad += 1
            @altura += 0.75
            
            if ((@edad>5) && (@edad<7))
                
                @mutex.synchronize{ 
                    
                    @numnaranjas += 3 
                    
                }
            else
                
                @mutex.synchronize{
                    
                    @numnaranjas +=5
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