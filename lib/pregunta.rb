require "exam/version.rb"
require "exam/simpleSelection.rb"

class Pregunta

	attr_accessor :preg

	def initialize(preg)

		@preg = preg

	end

	def to_s

		"#{@preg.enunciado}\n#{@preg.improp}"

	end
end
