fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace red_mushroom_block
fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace birch_stairs
fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace player_head
fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace birch_planks
#fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace black_concrete
#execute if score # ckenja.pigmin matches ..7 run fill ~ ~2 ~ ~-1 ~2 ~ black_concrete 
execute at @s run particle explosion ~ ~ ~ 0 0 0 1 1 normal
playsound entity.phantom.bite master @p ~ ~ ~ 100 2 100
execute as @e[tag=ckenja.pigmin.attack] run function ckenja.pigmin:entity/attack
kill @s