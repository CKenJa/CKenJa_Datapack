execute as @e[scores={ckenja_chuman=1..}] run function ckenja_classic_human:summon
execute as @e[tag=ckenja_classic_human] run function ckenja_classic_human:move
scoreboard players enable @a ckenja_chuman