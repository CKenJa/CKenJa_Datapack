#replaceitem entity @s weapon.mainhand minecraft:crossbow{display:{Name:'{"text":"Potato Cannon","color":"gold","bold":true,"italic":false}',Lore:['{"text":"火薬と栄養の詰まったジャガイモを発射する最終兵器"}']},HideFlags:7,RepairCost:2147483647,Unbreakable:1b,CustomModelData:126000,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.5,Operation:2,UUIDLeast:2133975,UUIDMost:929557,Slot:"mainhand"},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.5,Operation:2,UUIDLeast:-6224520,UUIDMost:4069814,Slot:"offhand"}],Charged:1b} 1
execute unless score @s ckenja_potato matches 1.. if score #infinity ckenja_potato matches 1 run function ckenja_potato:cannon/shot
execute unless score @s ckenja_potato matches 1.. if score #infinity ckenja_potato matches 0 if entity @s[nbt={Inventory:[{id:"minecraft:potato"}]}] run function ckenja_potato:cannon/shot