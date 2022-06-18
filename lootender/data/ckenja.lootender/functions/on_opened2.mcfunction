#> ckenja.lootender:on_opened2
#
#
#
# @within function ckenja.lootender:on_opened

tag @s add ckenja.lootender.opened

stopsound @a[distance=..24] block block.ender_chest.open

#チェストの中身データがないなら生成する(後で)

#中身データをエンダーチェストにコピーする
#プレイヤーごとの中身データがないならコピーする
