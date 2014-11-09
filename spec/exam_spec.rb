require "exam"

describe Exam do

	before :each do

		@pregunta1 = SimpleSelection.new("¿Cuál es el resultado de sumar 2 y 5?", ["a) 4", "b) 5","c) 6","d) Ninguna de las anteriores"])
		
		@PVF = TrueFalse.new("2.-) Es apropiado que una clase Tablero herede de una clase Juego.")
 		@preg1 = "1.-)¿Qúe día es hoy?"
		@opPreg1 = {
			"a" => "Lunes",
			"b" => "Martes",
			"c" => "Miercoles",
			"d" => "..."
		}
		
		@PSS = SimpleSelection.new(@preg1, @opPreg1)

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
		
		it "Pregunta verdadero falso" do
			
			expect(@PVF.to_s).to eq ("2.-) Es apropiado que una clase Tablero herede de una clase Juego.\na) Cierto\nb) Falso\n")
	
		end
		
		it "Comprobacion de clases" do
			
			expect(@PVF.is_a? Pregunta).to eq(true)
			expect(@PSS.is_a? Pregunta).to eq(true)
			expect(@PSS.instance_of? SimpleSelection).to eq(true)
			expect(@PVF.instance_of? SimpleSelection).to eq(false)
			expect(@PVF.instance_of? TrueFalse).to eq(true)
			
		end

	end
end
