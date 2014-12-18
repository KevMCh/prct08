require "bundler/gem_tasks"

task :default => :spec

desc "Ejecutar las espectativas de la clase exam"
task :spec do
sh "rspec -I. spec/exam_spec.rb"
end

desc "ejecutar con documentacion"
task :doc do
	sh "rspec -I. spec/exam_spec.rb --format documentation"
end

desc "Ejecutar las espectativas de la clase orange"
task :orange do
sh "rspec -I. spec/orange_spec.rb"
end

