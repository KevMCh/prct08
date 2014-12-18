require 'spec_helper'
require 'orange'

describe 'Naranjero' do

    before :each do
    
        @Naranjo = Orange.new
    
    end
    
    it 'Atributos de la clase.' do
        
        expect(@Naranjo.edad).to eq(0)
        expect(@Naranjo.altura).to eq(0)
        expect(@Naranjo.numnaranjas).to eq(0) 
        
    end
    
    it 'Método uno_más' do
        
        @Naranjo.uno_mas
        expect(@Naranjo.edad).to eq(1)
        expect(@Naranjo.altura).to eq(0.75)
        
    end
    
    it 'Método recolectar_una' do
        
        @Naranjo.uno_mas
        @Naranjo.uno_mas
        expect(@Naranjo.edad).to eq(2)
        expect(@Naranjo.altura).to eq(1.5)
        expect(@Naranjo.numnaranjas).to eq(0)
        expect(@Naranjo.recolectar_una).to eq("No hay naranjas")
        @Naranjo.uno_mas
        @Naranjo.uno_mas
        @Naranjo.uno_mas
        @Naranjo.uno_mas
        @Naranjo.uno_mas
        expect(@Naranjo.numnaranjas).to eq(9)
        expect(@Naranjo.recolectar_una).to eq("Que buena que estaba")
        @Naranjo.uno_mas
        @Naranjo.uno_mas
        @Naranjo.uno_mas
        @Naranjo.uno_mas
        expect(@Naranjo.edad).to eq(11)
        expect(@Naranjo.recolectar_una).to eq("El naranjero se ha secado")
        @Naranjo.uno_mas
        expect(@Naranjo.numnaranjas).to eq(0)
        
        
    end
     
end