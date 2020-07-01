#武器持ってるタグをもっててアイテムエンティティが近くにあったら戦闘モードに。
execute as @e[tag=ckenja_combat_selected] run execute if entity @e[distance=..3,nbt={Item:{id:"minecraft:iron_sword",Count:1b}}] run say hahaha!
#戦闘モードの処理云々
execute at @e[tag=ckenja_combat_selected] run particle sweep_attack ~ ~1 ~ 0 0 0 1 6
#武器持ってるタグを外す
execute as @e[tag=ckenja_combat_selected] run execute unless entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword",Count:1b}}] run tag @s remove ckenja_combat_selected
#武器持ってるタグをつける
execute as @e[tag=!ckenja_combat_selected,nbt={SelectedItem:{id:"minecraft:iron_sword",Count:1b}}] run tag @s add ckenja_combat_selected