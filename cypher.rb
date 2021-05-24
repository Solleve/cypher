require 'digest'

puts 'Введите слово или фразу для шифрования:'
initial_phrase = STDIN.gets.chomp

puts 'Выберите способ шифрования: '
puts '1. MD5'
puts '2. SHA1'
method = STDIN.gets.to_i

until method.between?(1, 2)
    puts 'Выберите 1 или 2'
    method = STDIN.gets.to_i
end 

puts 'Результат шифрования:'

case method
when 1
    puts Digest::MD5.hexdigest(initial_phrase)
when 2
    puts Digest::SHA1.hexdigest(initial_phrase)
end

