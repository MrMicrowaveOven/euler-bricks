MAX = 1000

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
    a_squared = a**2
    b_squared = b**2
    if Math.sqrt(a_squared + b_squared) % 1 != 0
        return false
    end
    c_squared = c**2
    if Math.sqrt(b_squared + c_squared) % 1 != 0
        false
    elsif Math.sqrt(a_squared + c_squared) % 1 != 0
        false
    else
        true
    end
end

print get_euler_bricks