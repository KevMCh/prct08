require "lib/exam/simpleSelection"
require "lib/exam/lista"

describe Exam do

	before :each do

		@pregunta1 = SimpleSelection.new("¿Cuál es el resultado de sumar 2 y 5?", ["a) 4", "b) 5","c) 6","d) Ninguna de las anteriores"])

		@list = Lista.new(2)


	end

	describe "#Almacenamiento de la pregunta y opciones" do


		it "Almacenamos correctamente la pregunta" do

			@pregunta1.enunciado.should eq("¿Cuál es el resultado de sumar 2 y 5?")

		end

		it "Almacenamos correctamente las opciones" do

			@pregunta1.op.should eq(["a) 4","b) 5","c) 6","d) Ninguna de las anteriores"])

		end

		it "Imprimir por pantalla" do

			@pregunta1.to_s.should eq("¿Cuál es el resultado de sumar 2 y 5?\na) 4\nb) 5\nc) 6\nd) Ninguna de las anteriores\n")
		end

		it "Almacenar datos en nodo y nodo siguiente en el nodo" do

			@list.to_s.should eq(2)
			
		end

	end
end
