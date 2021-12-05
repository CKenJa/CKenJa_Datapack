#防具スロットのアイテムをドロップ
execute if data entity @s ArmorItems[0].Count run function ckenja_pot:entity/drop/0
execute if data entity @s ArmorItems[1].Count run function ckenja_pot:entity/drop/1
execute if data entity @s ArmorItems[2].Count run function ckenja_pot:entity/drop/2
execute if data entity @s ArmorItems[3].Count run function ckenja_pot:entity/drop/3
#アイテム検知したら処理
execute if data entity @s HandItems[0].Count run function ckenja_pot:entity/item/hand

