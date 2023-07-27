def find_pythagorean_prodigy
    1000000.times do |i|
        p 1000000 - i
        if is_pythagorean_prodigy(i + 1)
            return i + 1
        end
    end
end

def is_pythagorean_prodigy(a)
    (Math.sqrt((a**2)* 2)) % 1 == 0
end