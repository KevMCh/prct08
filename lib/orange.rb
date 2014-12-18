class Orange
    
    attr_reader :edad, :altura, :numnaranjas
    
    def initialize()
        
        @edad = 0
        @altura = 0
        @numnaranjas = 0
        @mutex = Mutex.new
        @naranAnual = []
        @vivo = true
        @JOVEN = 5
        @ADULTO = 7
        @MUERTO = 10
        
    end
    
    def uno_mas
        
        if @vivo
            
            @edad += 1
            
            if(@edad > @MUERTO)
                
                @vivo = false
                
            end
            
            @altura += 0.75
            
            if @edad.between?(@JOVEN,@ADULTO)
                
                @mutex.synchronize{ 
                    
                    @numnaranjas += 3
                    @naranAnual << 3 
                    
                }
            elsif @edad.between?(@ADULTO,@MUERTO)
                
                @mutex.synchronize{
                    
                    @numnaranjas +=5
                    @naranAnual << 5
                }
                
            end
            
        else
            
            @altura = 0
            @mutex.synchronize{
                
                @numnaranjas = 0
                
            }
            
        end
    end
    
    def recolectar_una
        
        if !@vivo
            
            return "El naranjero se ha secado"
            
        elsif @numnaranjas != 0
            
            @mutex.synchronize{
                
                @numnaranjas -= 1
                
            }
            
            return "Que buena que estaba"
            
            else
                
                return "No hay naranjas"
                
            end
        end
end