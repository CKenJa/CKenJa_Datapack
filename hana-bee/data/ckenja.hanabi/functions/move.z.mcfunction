# 相対座標を求める
    scoreboard players operation $tmp.zp ckenja.hanabi = $tmp.z ckenja.hanabi
    scoreboard players operation $tmp.zp ckenja.hanabi -= $zh ckenja.hanabi

# z move
    scoreboard players set $tmp.if ckenja.hanabi 1
    scoreboard players operation _ ckj.hnb.stm = $tmp.zp ckenja.hanabi
    #tellraw @a {"score":{"name": "$tmp.zp","objective": "ckenja.hanabi"}}
    execute if score $tmp.zp ckenja.hanabi matches ..0 run scoreboard players set $tmp.z- ckenja.hanabi 1
    execute unless score $tmp.z- ckenja.hanabi matches 1 positioned 0 0 0 rotated 0 90 run function ckenja.hanabi.score_to_move:apply
    execute if score $tmp.z- ckenja.hanabi matches 1 positioned 0 0 0 rotated 0 -90 run function ckenja.hanabi.score_to_move:apply