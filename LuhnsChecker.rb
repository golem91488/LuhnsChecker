require_relative "LuhnsClass"

class String
    # colorization
    def colorize(color_code)
      "\e[#{color_code}m#{self}\e[0m"
    end

    def red
      colorize(31)
    end
end

def luhnsInput
    loop do
        puts "\r\nPlease Enter A Number To Validate or press CTRL + C to exit:"
        input = gets.strip
        if !/\A\d+\z/.match(input) == false
            return input
        else
            puts "\r\nPlease enter a valid whole number.".red
        end
    end
end

puts "This script is designed to ensure a number is Luhn algorithm valid. Common uses for this type of number are; Credit cards, IMEI numbers, and national provider numbers in the US.\r\n\r\nTo learn more visit https://en.wikipedia.org/wiki/Luhn_algorithm"

luhnsValidator = LuhnsValidator.new
loop do
    input = luhnsInput
    if luhnsValidator.luhnsValidate(input)
        puts input + " is valid."
    else
        puts input + " is not valid."
    end
end