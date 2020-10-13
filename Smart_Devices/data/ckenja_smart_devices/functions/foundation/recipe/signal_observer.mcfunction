clear @s minecraft:knowledge_book
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'{"text":"ネザースターの剣","color":"light_purple","bold":true,"italic":false}'}}}}
advancement revoke @s only ckenja_smart_devices:foundation/recipe/signal_observer
recipe take @s ckenja_smart_devices:foundation/signal_observer