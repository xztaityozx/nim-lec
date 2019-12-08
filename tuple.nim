
# 名前付きタプル
var t = (x: 10, y: "string")

echo t
echo t.x
echo t.y

# インデント定義もできる
type 
    X = tuple
        value: int
        name: string

var k :X = (10, "this is X")

echo k

# 名前なしタプル
var Z = (10, 20, "str")
echo Z
echo Z[0] # 1番目のフィールドへのアクセス

