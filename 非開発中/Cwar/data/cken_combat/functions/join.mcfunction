execute at @s run scoreboard players operation @s ccombat_village = @e[type=villager,limit=1,sort=nearest,tag=!cken_combat_villager] ccombat_village
tag @s add cken_combat_villager
say join
#一番近い村人と同じ派閥に入るが、ディメンションは考慮されないのが問題