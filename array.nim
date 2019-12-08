var x: seq[int] = @[]

for k in countup(1, 20):
    x.add k

echo x

var y: array[8, int] = [1,2,3,4,5,6,7,8]

echo y

y[3]=10
echo y

# slice に対する代入もできる
y[2..4]=[50,60,70]
echo y