#> ckenja.lootender:on_closed2
#
#
#
# @within function ckenja.lootender:on_closed

advancement revoke @s only ckenja.lootender:on_open
tag @s remove ckenja.lootender.opened
stopsound @a[distance=..24] block block.ender_chest.close
