
require 'socket'                # Get sockets from stdlib
require './mathTCP.rb'
@server        = TCPServer.open(2000)   # Socket to listen on port 2000
@escravos     = []
loop {                          # Servers run forever
  Thread.start(@server.accept) do |escravo|
    @escravos << escravo
    while msg = gets().chop do
      # if msg == "/clientes"
      #       puts @escravos.size.to_s
      #     
      if msg == "/resolver"
        puts "distribuindo"
      
        a = @escravos[0].solve(@server,"867**1000") + @escravos[1].solve(@server,"997**992")
        puts "Resultado: " + a.to_s
        puts "Casas decimais: " + a.size.to_s
      else
        @escravos.each {|e| puts e}
      end
    end

end


}
