require 'socket'      
require './mathTCP.rb'
port = 2000

s = TCPSocket.open("localhost",2000)
while line = s.gets   
  puts line.chop      
end
s.close               