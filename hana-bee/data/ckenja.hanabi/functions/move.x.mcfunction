# 相対座標を求める
    scoreboard players operation $tmp.xp ckenja.hanabi = $tmp.x ckenja.hanabi
    scoreboard players operation $tmp.xp ckenja.hanabi -= $xh ckenja.hanabi

# move(x-->y-->particle)
    scoreboard players set $tmp.if ckenja.hanabi 0
    scoreboard players operation _ ckj.hnb.stm = $tmp.xp ckenja.hanabi
    #tellraw @a {"score":{"name": "$tmp.xp","objective": "ckenja.hanabi"}}
    execute if score $tmp.xp ckenja.hanabi matches ..0 run scoreboard players set $tmp.x- ckenja.hanabi 1
    execute if score $tmp.x- ckenja.hanabi matches 1 positioned 0 0 0 rotated 180 0 run function ckenja.hanabi.score_to_move:apply
    execute unless score $tmp.x- ckenja.hanabi matches 1 positioned 0 0 0 rotated 0 0 run function ckenja.hanabi.score_to_move:apply