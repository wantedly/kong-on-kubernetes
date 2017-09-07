require 'erb'
require 'dotenv'

Dotenv.load

erb = File.open('script/create-secret.sh.erb') { |f| ERB.new(f.read) }
File.write('script/create-secret.sh', erb.result(binding))
