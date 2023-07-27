def get_perfect_squares(max)
    perfect_squares = Set.new
    num = 1
    while num <= max
        perfect_squares.add(num**2)
        num += 1
    end
    perfect_squares
end