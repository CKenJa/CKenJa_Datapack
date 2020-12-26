#アマスタの頭にボウルを装備させて、落ちるエフェクトで充填して、渡す。
scoreboard players add @s ckenja_pot 1
#1の時 : 頭スロットをボウルに
execute if score @s ckenja_pot matches 1 run function ckenja_pot:entity/comp/1
#注入エフェクト、高速falling_obsidian_tear or falling_dust
#/particle falling_obsidian_tear ^ ^ ^5 0.125 0.125 0.125 0 16 normal
#/particle item chorus_plant ^ ^ ^5 0.125 0.125 0.125 0 16 normal
#30の時：頭スロットを不思議スープに

#40の時：スコアリセット、終了ならkill
execute if score @s ckenja_pot matches 40 run function ckenja_pot:entity/comp/40