require "exam/version.rb"


module Exam


  class Exam
		attr_accessor :text,:right, :distractor

	def initialize(args)
	@text = args[:text]
	raise ArgumentError, 'Specify :text' unless @text
	@right = args[:right]
	raise ArgumentError, 'Specify :right' unless @right
	@distractor = args[:distractor]
	raise ArgumentError, 'Specify :distractor' unless @distractor
  end

end
