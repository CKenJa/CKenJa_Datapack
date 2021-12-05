#領地システムの住民登録
#execute as @e[limit=1,tag=!cken_combat_head,nbt={VillagerData:{profession:"minecraft:cleric"}}] run function cken_combat:create
#execute as @e[limit=1,tag=!cken_combat_villager,type=villager,nbt={Age:0}] run function cken_combat:join
