execute store success score #tmp ckj01_data run execute if block ~ ~-1 ~ #minecraft:soul_fire_base_blocks if data entity @s Item.tag.ckenja{id:"ckenja_ghost:summon_candy"} run function ckenja_ghost:candy/summon
execute if score #tmp ckj01_data matches 0 if entity @e[tags=ckenja_ghost_young,distance=..1] run function ckenja_ghost:candy/growth
execute if score #tmp ckj01_data matches 0 if entity @e[tags=ckenja_ghost_polgei,distance=..1] run function ckenja_ghost:candy/tame
