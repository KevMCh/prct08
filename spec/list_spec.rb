require "spec_helper"
require "lib/exam.rb"

describe Exam do

	before :each do 

		@nodo1 = Node.new(4,nil)

		@nodo = Node.new(2,@nodo1)

		@milista = Lista.new(1)

	end

	describe "Creacion clase lista" do

		it "Comprobacion de valor" do

			@nodo.value.should eq(2)

		end

		it "Extraer primer elemento" do

			@milista.pop.should eq(1)

		end

		it "Añadir valor (push)" do

			@milista.push(8).should    

		end

	end
end

