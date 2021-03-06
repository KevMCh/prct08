# encoding: utf-8
require 'spec_helper.rb'

require "exam"

describe Exam do

	before :each do


		#Preguntas iniciales para comprobar los dos tipos de pregunta

		@PVF = TrueFalse.new("2.-) Es apropiado que una clase Tablero herede de una clase Juego.", "b")

		@pregunta1 = SimpleSelection.new("¿Cuál es el resultado de sumar 2 y 5?", ["a) 4", "b) 5","c) 6","d) Ninguna de las anteriores"], "d")		
 		@preg1 = "1.-)¿Qúe día es hoy?"
		@opPreg1 = {
			"a" => "Lunes",
			"b" => "Martes",
			"c" => "Miercoles",
			"d" => "..."
		}
		
		@PSS = SimpleSelection.new(@preg1, @opPreg1, "d")
		
		#Elementos para comprobar las listas con sus respectivos nodos
		
		@nodo = Node.new(7,nil, nil)

		@milista = Lista.new()
		
		@milista.push(7)

		@listavac = Lista.new()
		
		#Creación de las preguntas para comprobar la lista Exam
		
		
		
		@p1 = "1.-)¿Cuál es la salida del siguiente código Ruby?\nclass Xyz\n\tdef pots\n\t\t@nice\n\tend\nend\n\nxyz = Xyz.new\np xyz.pots"
			@opP1 = {
				"a" => "#<Xyz:0xa000208>",
				"b" => "nil",
				"c" => "0",
				"d" => "Ninguna de las anteriores"
			}

			@p3 = "3.-)¿Cual es la salida del siguiente codigo en Ruby?\nclass Array\n\tdef say_hi\n\t\t\"HEY!\"\n\tend\nend\n\np [1, \"bob\"].say_hi"
			@opP3 = {
				"a" => "1",
				"b" => "Bob",
				"c" => "HEY!",
				"d" => "Ninguna de las anteriores"
			}

			@p4 = "4.-)¿Cual es el tipo del objeto en el siguiente codigo en Ruby?\nclass Objeto\nend"

			@opP4 = {
				"a" => "Una instancia de la clase Class",
				"b" => "Una constante",
				"c" => "Un objeto",
				"d" => "Ninguna de las anteriores"
			}
			
			

			@NP1 = SimpleSelection.new(@p1,@opP1, 3, "b")
 			@NP2 = TrueFalse.new("2.-)La siguiente definicion de hash en Ruby es valida\nhash_raro = {\n\t[1,2,3] => Object.new(),\n\tHash.new => :toto\n}", 4, "b")
 			@NP3 = SimpleSelection.new(@p3,@opP3, 4, "c")
 			@NP4 = SimpleSelection.new(@p4,@opP4, 8, "c")
 			@NP5 = TrueFalse.new("5.-)Es apropiado que una clase Tablero herede de una clase juego.", 7, "a")
		
			@Examen = Lista.new()
			@Examen.push(@NP1)
 			@Examen.push(@NP2)
 			@Examen.push(@NP3)
 			@Examen.push(@NP4)
 			@Examen.push(@NP5)
		
			@Test = CExam.new("LPP", @Examen)
			
			@MakeTest = Interface.new(@Test, ["b", "b","c","c", "a"])

	end

	describe "#Almacenamiento de la pregunta y opciones" do


		it "Almacenamos correctamente la pregunta" do

			expect(@pregunta1.enunciado).to eq("¿Cuál es el resultado de sumar 2 y 5?")

		end

		it "Almacenamos correctamente las opciones" do

			expect(@pregunta1.op).to eq(["a) 4","b) 5","c) 6","d) Ninguna de las anteriores"])

		end

		it "Imprimir por pantalla" do

			expect(@pregunta1.to_s).to eq("¿Cuál es el resultado de sumar 2 y 5?\na) 4\nb) 5\nc) 6\nd) Ninguna de las anteriores\n")
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
	
	describe "# Comparaciones entre preguntas" do
		
	    it "Pregunta menor" do
	    	
	    	test = @NP1 < @NP2
      		expect(test).to eq(true)
    	
    	end
    	
	    it "Pregunta menor o igual" do
	      
	      test = @NP2 <= @NP3
	      expect(test).to eq(true)
	    
	    end
	    
	    it "Pregunta mayor" do
	    
	      test = @NP5 > @NP4
	      expect(test).to eq(false)
	    
	    end
	    
	    it "Mayor o igual" do
	      
	      test = @NP2 >= @NP1
	      expect(test).to eq(true)
	    
	    end
	    
	    it "Preguntas iguales" do
	    
	      test = @NP2 == @NP3
	      expect(test).to eq(false)
	      
    	end
  end
  
  describe "#Creacion clase lista" do

		it "Comprobacion de la cabeza de la lista" do

			expect(@milista.head).to eq(@nodo)

		end

		it "Comprobacion del valor del nodo" do

			expect(@nodo.value).to eq(7)

		end

		it "Extraer primer elemento" do

			expect(@milista.pop).to eq(7)

		end

		it "Añadir valor (push)" do

			@listavac.push(0)
			expect(@listavac.head.value).to eq(0)     

		end

		it "Añadir valor antes" do

			@listavac.push(65)
			@listavac.pushbefore(70)
			expect(@listavac.head.value).to eq (70)
			expect(@listavac.head.next.value).to eq (65)

		end

		it "Introducir varios elementos despues" do

			VarElm = Lista.new()

			VarElm.mulpush([3,4,5])

			expect(VarElm.to_s).to eq("3 4 5")	

		end
		
		it "Introducir varios elementos antes" do

			VarElmAntes = Lista.new()

			VarElmAntes.mulpushbefore([8,7,9])

			expect(VarElmAntes.to_s).to eq("9 7 8")
	

		end

		it "Prueba para la siguiente relaciónn de preguntas de selección simple (imprimir de la 1 - 5 y de la 5 a la 1)." do

			expect(@Examen.to_s).to eq(@NP1.to_s + " " + @NP2.to_s + " " + @NP3.to_s + " " + @NP4.to_s + " " +@NP5.to_s)
			
			expect(@Examen.imprinver).to eq(@NP5.to_s + " " + @NP4.to_s + " " + @NP3.to_s + " " + @NP2.to_s + " " +@NP1.to_s)
			
		
		end
		
		it "Prueba enumerable maximo" do
		
			expect(@Examen.max).to eq(@NP4)
		end
		
		it "Prueba enumerable minimo" do
			expect(@Examen.min).to eq(@NP1)
		end
		
		it "Prueba enumerable all" do
			expect(@Examen.all?).to eq(true)
		end

	end
	
	describe "# Comprobaciones clase Examen" do
		
		it "Atributo titulo" do
	    	
	    	
      		expect(@Test.tit).to eq("LPP")
    	
    	end
		
	    it "Atributo nota" do
	    	
	    	
      		expect(@Test.nota).to eq(0)
    	
    	end
    	
    	it "Atributo lista" do
	    	
	    	
      		expect(@Test.preguntasExam.instance_of? Lista).to eq(true)
    	
    	end
    	
    	it "Atributo número de preguntas" do
	    	
	    	
      		expect(@Test.nPreg).to eq(0)
    	
    	end
    	
  	end
  	
  	describe "#Comprobaciones clase Interface" do
  	
  		it "Atributo interface" do
	    	
	    	
      		expect(@MakeTest.exam.instance_of? CExam).to eq(true)
    	
    	end
  	
  	    it "Clase exam" do
	    	
	    	#@MakeTest.realizar()
      		#expect(@MakeTest.nota).to eq("Nota final:\n5")
      		
		end
  	
	end
	
	describe "#Programacion funcional" do
		
		it "Orden inverso, primer elemento" do
		
			expect(@Test.obtenerInver.to_s).to eq(@NP5.to_s)
		
  		end
  	
	end
	
	describe "#Comprobaciones prct11" do
  	
  		it "Clase Quiz" do
	    	
      		quiz = Quiz.new do 
      			
      			simpleselectionQuestion "¿En que año Cristobal Colón descubrió América?",
      				wrong => "1942",
      				wrong => "1492",
      				right => "1914",
      				wrong => "1808"
      			
      			truefalseQuestion "¿0+8=8?",
      				"Cierto"
      				
      		end
      		
      		expect(quiz.to_s).to eq("¿En que año Cristobal Colón descubrió América?\n1942\n1492\n1914\n1808\n ¿0+8=8?\na) Cierto\nb) Falso\n")
    	end
  	
	end
  
end

