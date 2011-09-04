class TCPSocket
  
  def solve(server,equation)
    puts "Resolvendo: #{equation}"
    beginning_time = Time.now
    
    a = eval(equation)
    end_time = Time.now
    puts a
    puts "Tempo gasto para calculo #{(end_time - beginning_time)*1000} milisegundos"
    
    return a
    
  end
  
end