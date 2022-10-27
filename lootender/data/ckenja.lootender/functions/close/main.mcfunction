#> ckenja.lootender:close/main
#
#
#
# @within function ckenja.lootender:close/check_block

advancement revoke @s only ckenja.lootender:on_open
tag @s remove ckenja.lootender.opened
stopsound @a[distance=..24] block block.ender_chest.close
