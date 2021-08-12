# 相対座標を求める
    scoreboard players operation $tmp.zp ckenja.hanabi = $tmp.z ckenja.hanabi
    scoreboard players operation $tmp.zp ckenja.hanabi -= $zh ckenja.hanabi

# z move
    scoreboard players operation $tmp.zp ckenja.hanabi *= $size ckenja.hanabi
    scoreboard players set $tmp.if ckenja.hanabi 1
    #tellraw @a {"score":{"name": "$tmp.zp","objective": "ckenja.hanabi"}}
    execute if score $tmp.zp ckenja.hanabi matches ..0 run scoreboard players set $tmp.z- ckenja.hanabi 1
    execute unless score $tmp.z- ckenja.hanabi matches 1 run function ckenja.hanabi:move.z/plus
    execute if score $tmp.z- ckenja.hanabi matches 1 run function ckenja.hanabi:move.z/minus
    scoreboard players reset $tmp.z- ckenja.hanabi