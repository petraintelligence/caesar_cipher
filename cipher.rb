def shift_character(a, base_number, shift_number)
    (((a.ord - base_number + shift_number) % 26 + base_number)).chr
end

def caesar_cipher(string, shift_number)
    string.chars.map do |a|
        case a
        when "a".."z"
            shift_character(a, "a".ord, shift_number)
        when "A".."Z"
            shift_character(a, "A".ord, shift_number)
        else
            a 
        end
    end.join
end

puts "Input your word to cipher: "
input_string = gets.chomp

puts "Input your number to shift by: "
shift_number = gets.chomp.to_i

p caesar_cipher(input_string, shift_number)

