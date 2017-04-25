# TABLA DE MULTIPLICAR
10.times do |number|
  puts "5 x #{number+1} = #{(number+1*5)}"
end

# PROCESO EN UNA SOLA LÍNEA
10.times do |number| puts "5 x #{number+1} = #{(number+1*5)}" end

# TABLA DE MULTIPLICAR CLASE PROC
print_table  = Proc.new do |number|
  puts "5 x #{number+1} = #{(number+1)*5}"
end
10.times &print_table

# USO DE VARIABLE PARA IMPRIMIR EL APELLIDO
full_name = Proc.new do |firts, last|
  puts "#{last}, #{firts}"
end
full_name.call('Valentin', 'Romero')

# USO DE ARGUMENTOS PARA CLARIFICAR EL CÓDIGO
full_name =Proc.new do |first: name, last: surname|
  puts "#{last}, #{first}"
end
full_name.call(first: 'Valentin', last: 'Romero')
full_name.call(last: 'Romero', first: 'Valentin')

# MÉTODO QUE SIMULA LA CARGA DE UNA BD
def load_users(database, &block)
  puts database
  puts block.class
  puts block.source_location
  puts block.parameters
  block.call(first: 'Valentin', last: 'Romero' )
end
load_users('users.sqlite3', &full_name)

# USO DE YIELD
users = ['Valentin', 'Fernanda', 'Luis', 'Laura']
def last_user(users)
  yield(users.last.downcase) if block_given?
  users.last
end
last_user(users) do |user|
  puts "El Ultimo Usuario es: #{user}"
end
puts last_user(users)

# ASIGNACIÓN DE PARÁMETROS VARIABLES A BLOQUES CON EL NOMBRE LIST
full_name = Proc.new do |first: 'Fernanda', last: 'Romero', **list|
  puts "#{last}, #{first}: #{list}"
end

full_name.call(first: 'Valentin', last: 'Romero', birth:1995, male: true)
full_name.call(birth: 1993, female: true)

# USO DE LAMBDA
full_name = lambda do |first: 'Fernanda', last: 'Romero', **list|
  puts "#{last}, #{first}: #{list}"
end

full_name.call(first: 'Valentin', last: 'Romero', birth:1995, male: true)
full_name.call(birth: 1993, female: true)

# TIPOS Y DIFERENCIAS ENTRE BLOQUES
block_proc = proc  do |a, b|
  [a, b]
end
block_lambda =lambda do |a, b|
  [a,b]
end
p block_proc.call('A', true, 2)
p block_proc.call('A')
p block_proc.call(['A', false])
#p block_lambda.call('A', true, 2)
#p block_lambda.call('A')
#p block_lambda.call(['A', false])
p block_proc.lambda?
p block_lambda.lambda?

