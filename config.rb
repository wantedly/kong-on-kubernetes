require 'erb'
require 'dotenv'

Dotenv.load

erb = File.open('kubernetes/create-secret.sh.erb') { |f| ERB.new(f.read) }
File.write('kubernetes/create-secret.sh', erb.result(binding))

erb = File.open('kubernetes/quay.yaml.erb') { |f| ERB.new(f.read) }
File.write('kubernetes/quay.yaml', erb.result(binding))
