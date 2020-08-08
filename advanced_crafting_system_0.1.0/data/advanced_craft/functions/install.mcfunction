tellraw @a [{"text":"データパック","color":"green"}]
tellraw @a [{"text":"Advanced Crafting System 1.0.0","color":"aqua","bold":true}]
tellraw @a [{"text":"のダウンロードありがとうございます。","color":"green"},{"text":"無事にインストールが成功しました。","color":"green"}]
tellraw @a [{"text":"ご意見、ご感想、不具合などは全て制作者のtwitter、"},{"text":"こちら","color":"gold","bold":true,"underlined":true,"clickEvent":{"action":"open_url","value":"https://twitter.com/MCredshirt53072"}},{"text":"まで。"}]

#スコアボード追加
#general
scoreboard objectives add ADCcrafter_id dummy
scoreboard objectives add ADCitems_change dummy

#recipe

scoreboard objectives add ADCrecipe_id dummy
scoreboard objectives add ADCmatch_recipe dummy
scoreboard objectives add ADCmatch_count dummy

scoreboard objectives add ADCslot0_count dummy
scoreboard objectives add ADCslot1_count dummy
scoreboard objectives add ADCslot2_count dummy
scoreboard objectives add ADCslot9_count dummy
scoreboard objectives add ADCslot10_count dummy
scoreboard objectives add ADCslot11_count dummy
scoreboard objectives add ADCslot18_count dummy
scoreboard objectives add ADCslot19_count dummy
scoreboard objectives add ADCslot20_count dummy

#crafter
scoreboard objectives add ADCbreak_all trigger





data modify storage advanced_datapacks:craft work_space set value [{Items:[],input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:1b},{Items:[],input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:2b},{Items:[],input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:3b},{Items:[],input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:4b},{Items:[],input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:5b},{Items:[],input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:6b},{Items:[],input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:7b},{Items:[],input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:8b},{Items:[],input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:9b},{Items:[],input_nbt:[],recipes:[],output_nbt:[[],[],[],[],[],[],[],[],[]],crafter_id:10b}]
data modify storage advanced_datapacks:craft recipes set value {type1:[{recipe_id:1,count0:2b,count1:1b,count2:1b,count9:1b,count10:1b,count11:1b,count18:1b,count19:1b,count20:1b,production:[{Slot:16b,id:"minecraft:creeper_spawn_egg",Count:1b,tag:{ADCpreview_item:1b}},{Slot:25b,id:"minecraft:firework_rocket",Count:1b,tag:{ADCpreview_item:1b}}],recipe_nbt:[{Slot:0b,id:"minecraft:piston"},{Slot:1b,id:"minecraft:tnt"},{Slot:2b,id:"minecraft:piston"},{Slot:9b,id:"minecraft:tnt"},{Slot:10b,id:"minecraft:oak_button"},{Slot:11b,id:"minecraft:tnt"},{Slot:18b,id:"minecraft:piston"},{Slot:19b,id:"minecraft:tnt"},{Slot:20b,id:"minecraft:piston"}]}]}




function advanced_craft:recipes








































































