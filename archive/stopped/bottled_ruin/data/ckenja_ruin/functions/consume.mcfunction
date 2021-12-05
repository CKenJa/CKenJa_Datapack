#
execute if predicate ckj03:sneak run function ckenja_ruin:consume/cancel
execute unless predicate ckj03:sneak run function ckenja_ruin:consume/not_sneak

execute if entity @s[gamemode=!creative] run function ckenja_ruin:recipe