execute if entity @s[tag=ckj03_merge_entitydata] run data modify entity @s {} merge from storage ckj03: merge_entitydata
data modify storage test: merge_entitydata set from storage ckj03: merge_entitydata
data remove storage ckj03: merge_entitydata