


execute unless block ~ ~ ~ barrel{Items:[{Slot:6b,tag:{ADCpreview_item:1b}}]} unless block ~ ~ ~ barrel{Items:[{Slot:7b,tag:{ADCpreview_item:1b}}]} unless block ~ ~ ~ barrel{Items:[{Slot:8b,tag:{ADCpreview_item:1b}}]} unless block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{ADCpreview_item:1b}}]} unless block ~ ~ ~ barrel{Items:[{Slot:16b,tag:{ADCpreview_item:1b}}]} unless block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{ADCpreview_item:1b}}]} unless block ~ ~ ~ barrel{Items:[{Slot:24b,tag:{ADCpreview_item:1b}}]} unless block ~ ~ ~ barrel{Items:[{Slot:25b,tag:{ADCpreview_item:1b}}]} unless block ~ ~ ~ barrel{Items:[{Slot:26b,tag:{ADCpreview_item:1b}}]} run tag @s add ADCcraft_lock
execute unless block ~ ~ ~ barrel{Items:[{Slot:6b}]} unless block ~ ~ ~ barrel{Items:[{Slot:7b}]} unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} unless block ~ ~ ~ barrel{Items:[{Slot:15b}]} unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} unless block ~ ~ ~ barrel{Items:[{Slot:17b}]} unless block ~ ~ ~ barrel{Items:[{Slot:24b}]} unless block ~ ~ ~ barrel{Items:[{Slot:25b}]} unless block ~ ~ ~ barrel{Items:[{Slot:26b}]} run tag @s remove ADCcraft_lock

execute if entity @s[tag=!ADCcraft_lock] run tag @s remove ADCcrafted







