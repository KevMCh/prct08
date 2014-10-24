require "lib/pregunta.rb"

describe Exam do

	before :each do

		@pregunta1 = SimpleSelection.new("¿Cuál es el resultado de sumar 2 y 5?", ["a) 4","b) 5","c) 6","Ninguna de las anteriores"])

	@p1 = Pregunta.new(@pregunta1)

	end

	describe "#Almacenamiento de la pregunta y opciones" do
		it "Almacenamos correctamente la pregunta" do

			@p1.preg.enunciado.should eq("¿Cuál es el resultado de sumar 2 y 5?")

		end

		it "Almacenamos correctamente las opciones" do

			@p1.preg.op.should eq(["a) 4","b) 5","c) 6","Ninguna de las anteriores"])

		end 
	end
end
