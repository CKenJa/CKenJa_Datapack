#tellraw @a {"score":{"name": "$tmp.if","objective": "ckenja.hanabi"}}
execute if score $tmp.if ckenja.hanabi matches 1 run function ckenja.hanabi:particle
execute if score $tmp.if ckenja.hanabi matches 0 run function ckenja.hanabi:move.z