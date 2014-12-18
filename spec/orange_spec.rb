require 'require spec_helper'

describe 'Naranjero' do

    before :each do
    
    
    end
    
    it 'Atributos de la clase.' do
        
        expect(@Naranjero.edad).to eq(0)
        expect(@Naranjero.altura).to eq(0)
        expect(@Naranjero.numnaranjas).to eq(0) 
        
    end
    
    

end