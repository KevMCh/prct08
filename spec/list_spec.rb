require "spec_helper"
require "lib/exam.rb"

describe Exam do

	before :each do 

		@nodo1 = Node.new(4,nil)

		@nodo = Node.new(2,@nodo1)

		@nodo2 = Node.new(7,nil)

		@milista = Lista.new(4)

	end

	describe "Creacion clase lista" do

		it "Comprobacion de la cabeza de la lista" do

			@milista.head.should eq(@nodo1)

		end

		it "Comprobacion de valor" do

			@nodo2.value.should eq(7)

		end

		it "Extraer primer elemento" do

			@milista.pop.should eq(4)

		end

		it "Añadir valor (push)" do

			@milista.push(8)    

		end

	end
end

