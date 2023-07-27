require_relative 'perfect_squares'
MAX = 1000
PERFECT_SQUARES = get_perfect_squares(MAX)

def get_euler_bricks
    start_time = Time.now
    a, b, c = 1, 2, 3
    bricks = []
    
    while c < MAX
        if is_pythagorean_thruple(a, b, c)
            bricks << [a, b, c]
        end
        if c == b + 1 && b == a + 1
            p MAX - c
            c += 1
            a = 1
            b = 2
            next
        elsif b == a + 1
            b += 1
            a = 1
            next
        else
            a += 1
        end
    end
    end_time = Time.now
    p "Time is #{end_time - start_time} seconds"
    bricks
end

def is_pythagorean_thruple(a, b, c)
    a_squared = a*a
    b_squared = b*b
    if !PERFECT_SQUARES.include?(a_squared + b_squared)
        return false
    end
    c_squared = c*c
    if !PERFECT_SQUARES.include?(b_squared + c_squared)
        false
    elsif !PERFECT_SQUARES.include?(a_squared + c_squared)
        false
    else
        true
    end
end

print get_euler_bricks