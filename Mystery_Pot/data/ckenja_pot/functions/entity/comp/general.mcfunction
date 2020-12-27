#アマスタの頭にボウルを装備させて、落ちるエフェクトで充填して、渡す。
scoreboard players add @s ckenja_pot 1

execute if entity @s[tag=!ckenja_pot_tekitou] run function ckenja_pot:entity/comp/tekitou

#1の時 : 頭スロットをボウルに
execute if score @s ckenja_pot matches 1 run replaceitem entity @s armor.head bowl 1
#注入エフェクト
#/particle item chorus_plant ~ ~3 ~ 0.125 0.125 0.125 0 16 normal

#10の時：注入開始
execute if score @s ckenja_pot matches 10 run particle falling_obsidian_tear ~ ~3 ~ 0.125 0.125 0.125 0 32 normal

#30の時：頭スロットを不思議スープに
execute if score @s ckenja_pot matches 30 run replaceitem entity @s armor.head suspicious_stew 1

#40の時：ドロップ、スコアリセット、終了ならkill
execute if score @s ckenja_pot matches 40 run function ckenja_pot:entity/comp/40