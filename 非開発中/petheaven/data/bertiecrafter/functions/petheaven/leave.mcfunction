#Current As/At: Pet who is asked to leave
kill @e[type=item,nbt={Item:{id:"minecraft:poppy"}},limit=1,sort=nearest]
effect give @s minecraft:levitation 1000000 1 true
execute if data entity @s OwnerUUID run data modify entity @s OwnerUUID set value "00000000-0000-0000-0000-000000000000"
tag @s add bcph_leaving