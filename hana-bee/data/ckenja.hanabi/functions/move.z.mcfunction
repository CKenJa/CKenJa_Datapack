# z move
    scoreboard players set $tmp.if ckenja.hanabi 1
    scoreboard players operation _ ckj.hnb.stm = $tmp.zp ckenja.hanabi
    #tellraw @a {"score":{"name": "$tmp.zp","objective": "ckenja.hanabi"}}
    execute positioned 0 0 0 rotated 90 0 run function ckenja.hanabi.score_to_move:apply