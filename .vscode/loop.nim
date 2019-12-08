for i in 1..10:
    echo i

for i in countup(1, 10):
    echo i

for i in countdown(10, 1):
    echo i

var x=0
while x < 10:
    echo x
    inc(x)

for x in "abcdefg":
    echo x

# イテレータを定義できる
iterator Skip(this: seq[int], count: int): int = 
    var cnt = 0
    for item in this:
        inc(cnt)
        if cnt-1 < count: 
            continue
        else:
            yield item

for x in @[1,2,3,4].Skip(1):
    echo x

import sequtils
# イテレータのチェインはこう書くらしい。ちょっと微妙だ
var T = toSeq(toSeq(@[1,2,3].Skip(1)).Skip(1))
echo T

import sugar
# リスト内包表記, deprecated
echo lc[x | (x <- 1..10), int]
