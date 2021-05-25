func roman(number: Int) -> String
{
    let decimals = [1000, 500, 100, 50, 10, 5, 1]
    let numerals = ["M", "D", "C", "L", "X", "V", "I"]

    var result = ""
    var number = number

    while number > 0
    {
        for (index, decimal) in decimals.enumerated()
        {
            if number - decimal >= 0 {
                number -= decimal
                result += numerals[index]
                break
            }
        }
    }

    return result
}

print(roman(number:1234))
