Node = Struct.new(:value, :next)
class Lista

	def initialize(val)


 	@head = Node.new(val,)


	end


	def to_s

	puts @head[:value]
	puts @head[:next]

        end

end
