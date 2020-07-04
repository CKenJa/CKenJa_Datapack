execute as @e[tag=ckenja_nether_core_initial] run function ckenja_nether:core
execute as @e[tag=ckenja_nether_marker,limit=1,sort=random] run function ckenja_nether:marker
execute as @e[tag=ckenja_nether_marker_initial] run tag @s add ckenja_nether_marker