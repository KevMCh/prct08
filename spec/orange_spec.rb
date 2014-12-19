require 'spec_helper'
require 'orange'

describe 'Naranjero' do

    before :each do
    
        @NaranjoP = Orange.new
        
        @NaranjoH = Orange.new
        
    end
    
    it 'Atributos de la clase.' do
        
        expect(@NaranjoP.edad).to eq(0)
        expect(@NaranjoP.altura).to eq(0)
        expect(@NaranjoP.numnaranjas).to eq(0) 
        
    end
    
    it 'Método uno_más' do
        
        @NaranjoP.uno_mas
        expect(@NaranjoP.edad).to eq(1)
        expect(@NaranjoP.altura).to eq(0.75)
        
    end
    
    it 'Método recolectar_una' do
        
        @NaranjoP.uno_mas
        @NaranjoP.uno_mas
        expect(@NaranjoP.edad).to eq(2)
        expect(@NaranjoP.altura).to eq(1.5)
        expect(@NaranjoP.numnaranjas).to eq(0)
        expect(@NaranjoP.recolectar_una).to eq("No hay naranjas")
        @NaranjoP.uno_mas
        @NaranjoP.uno_mas
        @NaranjoP.uno_mas
        @NaranjoP.uno_mas
        @NaranjoP.uno_mas
        expect(@NaranjoP.numnaranjas).to eq(9)
        expect(@NaranjoP.recolectar_una).to eq("Que buena que estaba")
        @NaranjoP.uno_mas
        @NaranjoP.uno_mas
        @NaranjoP.uno_mas
        @NaranjoP.uno_mas
        expect(@NaranjoP.edad).to eq(11)
        expect(@NaranjoP.recolectar_una).to eq("El naranjero se ha secado")
        @NaranjoP.uno_mas
        expect(@NaranjoP.numnaranjas).to eq(0)
        
        
    end
    
    it 'Hilo crecimiento' do
        
        @crecer.join
    
        expect(@NaranjoH.edad).to eq(4)
        expect(@NaranjoH.altura).to eq(3.0)
        expect(@NaranjoH.numnaranjas).to eq(0) 
        
    end
end