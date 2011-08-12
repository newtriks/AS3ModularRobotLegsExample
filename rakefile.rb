require 'rubygems'
require 'bundler'
Bundler.require

library :robotlegs, :swc

##############################
# Configure

def configure_mxmlc t
  t.default_size = "420,550"
  t.library_path << 'lib/robotlegs/robotlegs-framework-v1.4.0.swc'
  t.library_path << 'lib/robotlegs/robotlegs-utilities-Modular-v0.5.3.swc'
  t.library_path << 'lib/as3-signals-v0.8.swc'
  t.source_path  << "lib/robotlegs"
end

##############################
# Debug

# Compile the debug swf
mxmlc "bin/AS3ModularRobotLegsExample-debug.swf" do |t|
  configure_mxmlc t
  t.input = "src/AS3ModularRobotLegsExample.as"
  t.debug = true
end

desc "Compile and run the debug swf"
flashplayer :debug => "bin/AS3ModularRobotLegsExample-debug.swf"

##############################
# Test

library :asunit4

# Compile the test swf
mxmlc "bin/AS3ModularRobotLegsExample-test.swf" => :asunit4 do |t|
  configure_mxmlc t
  t.input = "src/AS3ModularRobotLegsExampleRunner.as"
  t.library_path << "lib/tdd/AsUnit-4.2.3.pre.swc"
  t.library_path << "lib/tdd/mockolate-0.11.0-as3.swc"
  t.library_path << "lib/tdd/hamcrest-as3-only-1.1.3.swc"
  t.source_path << "test"
  t.default_size = "975,600"
  t.debug = true
end

desc "Compile and run the test swf"
flashplayer :test => "bin/AS3ModularRobotLegsExample-test.swf"

task :default => :debug
