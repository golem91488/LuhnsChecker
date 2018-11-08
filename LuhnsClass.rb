class LuhnsValidator
    def luhnsValidate(input)
        sum = 0
        if (input.respond_to? :each_char) == false
            input = input.to_s
        end
        if !/\A\d+\z/.match(input) == true
            begin
            raise "Invalid Entry"
            rescue => error
                puts error.message
            end
            return false
        end
        input.each_char.with_index do |char,i|
            char = char.to_i
            if i % 2 == 0 or i == input.length - 1
                sum = sum + char
            else
                if char * 2 < 10
                    sum = sum + (char * 2)
                else
                    sum = sum + (char * 2 - 9)
                end
            end
        end
    
        if sum % 10 == 0
            return true
        else
            return false
        end
    end
end