# 相対座標を求める
    scoreboard players operation $tmp.xp ckenja.hanabi = $tmp.x ckenja.hanabi
    scoreboard players operation $tmp.xp ckenja.hanabi -= $xh ckenja.hanabi

# move(x-->y-->particle)
    scoreboard players operation $tmp.xp ckenja.hanabi *= $size ckenja.hanabi
    scoreboard players set $tmp.if ckenja.hanabi 0
    #tellraw @a {"score":{"name": "$tmp.xp","objective": "ckenja.hanabi"}}
    execute if score $tmp.xp ckenja.hanabi matches ..0 run scoreboard players set $tmp.x- ckenja.hanabi 1
    execute unless score $tmp.x- ckenja.hanabi matches 1 positioned 0.0 0.0 0.0 run function ckenja.hanabi:move.x/plus
    execute if score $tmp.x- ckenja.hanabi matches 1 positioned 0.0 0.0 0.0 run function ckenja.hanabi:move.x/minus
    scoreboard players reset $tmp.x- ckenja.hanabi