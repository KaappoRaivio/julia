function kertoma(x)
    if x == 0
        return 1
    end
    return x * kertoma(x - 1)
    end

print(kertoma(10), '\n')
