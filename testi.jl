function kertoma(x)
    if x == 0
        return 1
    end
    return x * kertoma(x - 1)
end
function plusyksi(x)
    x + 1
end
function miinusyksi(x)
    x - 1
end
function yhteenlasku(x, y)
    if y == 0
        return x
    else
        return yhteenlasku(plusyksi(x), miinusyksi(y))
    end
end

function onkoalkuluku(x)
    if x == 0 || x == 1
        return false
    end
    for i in collect(2:round(sqrt(x)))
        if x % i == 0
            return false
        end
    end
    return true
end

function tekija(x)
    a = []
    for i in collect(1:x)
        print(onkoalkuluku(i), '\n')

        if x % i == 0 && onkoalkuluku(x) == true
            print("hei")
            push!(a, i)
            x /= i
            i = 0
        end
    end
    return a
end
i = 0
print(tekija(9), '\n')
