proc Fire(str: string) = echo "🔥", str, "🔥"
Fire("fire")

# generics
proc say[T](obj: T) = echo obj

say("abc")
say(1)

# 可変長引数
proc Sum(this: varargs[int]): int = 
    var sum = 0
    for item in this:
        sum += item
    return sum

echo Sum(1,2,3,4)
echo @[1,2,3,4].Sum