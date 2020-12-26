scoreboard players add @s ckenja_pot 1
#1の時 : 頭スロットをボウルに
execute if score @s ckenja_pot matches 1 run function ckenja_pot:entity/comp/rotate
#注入エフェクト、高速falling_obsidian_tear or falling_dust

#30の時：頭スロットを不思議スープに

#40の時：スコアリセット、終了ならkill