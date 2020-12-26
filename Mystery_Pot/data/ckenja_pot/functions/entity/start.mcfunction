#召喚☆
execute run summon armor_stand ~ ~-1 ~ {Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["ckenja_pot_entity","ckenja_pot_initial"]}
#もうついでに雷とか落としちゃえ
summon lightning_bolt ~ ~ ~
#大釜の水の色を面白くする
data merge block ~ ~-1 ~ {CustomColor:13369599}
#空バケツに
kill @s
