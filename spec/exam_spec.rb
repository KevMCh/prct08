require "lib/exam.rb"

describe Exam do

	describe "#Almacenamiento de la pregunta y opciones" do
		it "Almacenamos correctamente la pregunta" do

			@p1.pregunta.should eq("¿Cuál es el resultado de sumar 2 y 5?")

		end

		it "Almacenamos correctamente las opciones" do

			@p2.op.should eq([4,5,6,"Ninguna de las anteriores"])

		end 
	end
end
