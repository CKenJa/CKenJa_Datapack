replaceitem entity @p[gamemode=!creative] weapon.mainhand minecraft:lingering_potion{CustomPotionColor: 6356992, HideFlags: 32, display: {Lore: ['{"text":"周囲のエンティティを削除する。","color":"white","italic":false}', '[{"text":"⚠","color":"red","italic":false},{"text":"取り扱い注意","color":"white","italic":false},{"text":"⚠","color":"red","italic":false}]'], Name: '{"text":"Debug Kill","color":"light_purple","italic":false}'}, ItemName: "Debug_Kill"}
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 10
kill @e[type=!player,distance=..4]