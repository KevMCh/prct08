require "bundler/gem_tasks"

task :default => :spec

desc "Ejecutar las espectativas de la clase lista"
task :spec do
sh "rspec -I. spec/list_spec.rb"
end

desc "Ejecutar las espectativas de la clase exam"
task :specExam do
sh "rspec -I. spec/exam_spec.rb"
end

desc "ejecutar con documentacion"
task :doc do
	sh "rspec -I. spec/exam_spec.rb --format documentation"
end

