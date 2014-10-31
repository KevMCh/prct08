require "spec_helper"
require "lib/exam.rb"

describe Exam do

	before :each do 

		@nodo = Node.new(2,nil)
	end

	describe "Creacion nodo" do

		it "Comprobacion de valor" do

			@nodo.value.should eq(2)

		end

	end
end

