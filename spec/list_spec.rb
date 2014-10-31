require "spec_helper"
require "lib/exam.rb"

describe Exam do

	before :each do 

		@nodo = Node.new(2,nil)

		@nodo1 = Node.new(4,nil)
	end

	describe "Creacion clase lista" do

		it "Comprobacion de valor" do

			@nodo.value.should eq(2)

		end

		it "Añadir un segundo nodo a la lista" do

			@nodo.next.should eq(@nodo1)

		end

	end
end

