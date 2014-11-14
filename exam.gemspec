# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'exam/version'

Gem::Specification.new do |spec|
  spec.name          = "exam"
  spec.version       = Exam::VERSION
  spec.authors       = ["Kevin Martín"]
  spec.email         = ["alu0100774655@ull.edu.es"]
  spec.description   = ["Clase examen simple"]
  spec.summary       = ["Programa examen con respuesta simple"]
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~>2.11"
  #spec.add_development_dependency "guard"
  #spec.add_development_dependency "guard-rspec"
  #spec.add_development_dependency "guard-bundler"

end
