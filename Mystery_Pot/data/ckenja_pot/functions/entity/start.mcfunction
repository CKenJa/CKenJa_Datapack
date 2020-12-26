#召喚☆
execute align xyz run summon armor_stand ~0.5 ~-1.5 ~0.5 {Invulnerable:1b,ShowArms:1b,Invisible:1b,NoGravity:1b,Tags:["ckenja_pot_entity","ckenja_pot_initial"]}
#もうついでに雷とか落としちゃえ
summon lightning_bolt ~ ~ ~
#大釜の水の色を面白くする
data merge block ~ ~-1 ~ {CustomColor:13369599}
#空バケツに
kill @s
say start