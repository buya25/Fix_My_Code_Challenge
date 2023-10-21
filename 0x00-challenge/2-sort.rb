# Sort integer arguments (ascending)

result = []
ARGV.each do |arg|
    # Use begin-rescue to handle invalid integers
    begin
        i_arg = Integer(arg)
        is_inserted = false

        # Insert result at the right position
        result.each_with_index do |item, i|
            if item < i_arg
                next
            else
                result.insert(i, i_arg)
                is_inserted = true
                break
            end
        end

        # If it's larger than all existing values, add to the end
        result << i_arg if !is_inserted
    rescue ArgumentError
        # Handle non-integer arguments
    end
end

puts result
