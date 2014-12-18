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
     
end