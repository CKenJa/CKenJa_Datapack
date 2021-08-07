#setblock ~ ~ ~ acacia_planks
    scoreboard players operation $tmp.xp ckenja.hanabi = $tmp.x ckenja.hanabi
    scoreboard players operation $tmp.yp ckenja.hanabi = $tmp.y ckenja.hanabi
    scoreboard players operation $tmp.zp ckenja.hanabi = $tmp.z ckenja.hanabi

# $tmp.p-$h
    scoreboard players operation $tmp.xp ckenja.hanabi -= $xh ckenja.hanabi
    scoreboard players operation $tmp.yp ckenja.hanabi -= $yh ckenja.hanabi
    scoreboard players operation $tmp.zp ckenja.hanabi -= $zh ckenja.hanabi

# move(x-->y-->particle)
    scoreboard players set $tmp.if ckenja.hanabi 0
    scoreboard players operation _ ckj.hnb.stm = $tmp.xp ckenja.hanabi
    #tellraw @a {"score":{"name": "$tmp.xp","objective": "ckenja.hanabi"}}
    execute positioned 0 0 0 rotated 0 0 run function ckenja.hanabi.score_to_move:apply