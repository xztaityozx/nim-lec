type
    Chip = object of RootObj
        Name: string
        AttackPower: int
        Code: char
        
    ProgramAdvance{.final.} = object of Chip 
        Pattern: seq[Chip]

    # ProgramAdvanceがfinalなので継承できない
    # DameChip = object of ProgramAdvance
    #     Dame: string


var cA = Chip(Name: "キャノン", AttackPower: 40, Code: 'a')
var cB = Chip(Name: "キャノン", AttackPower: 40, Code: 'b')
var cC = Chip(Name: "キャノン", AttackPower: 40, Code: 'c')

echo cA, cB, cC

let giga = ProgramAdvance(Pattern: @[cA, cB, cC], Name: "ギガキャノン", AttackPower: 400, Code: '*')

echo giga
