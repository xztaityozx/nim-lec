var x: ref int

# 宣言だけで確保はしてないので nil
echo repr x

x = new int
# new したので確保される
echo repr x

# 関節参照[]
x[] = 10
echo x[]
echo repr x
