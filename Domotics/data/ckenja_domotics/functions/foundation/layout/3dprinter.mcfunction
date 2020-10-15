#ckenja_domotics;core/device/gui/general as @s[tag=ckenja_domotics_gui_3dprinter] at @s
#空スロットをemptyで埋める
#execute unless block ~ ~ ~ barrel{Items:[{Slot:1b}]} run replaceitem block ~ ~ ~ container.1 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:empty"]}} 1
#execute unless block ~ ~ ~ barrel{Items:[{Slot:2b}]} run replaceitem block ~ ~ ~ container.2 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:empty"]}} 1
#execute unless block ~ ~ ~ barrel{Items:[{Slot:3b}]} run replaceitem block ~ ~ ~ container.3 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:empty"]}} 1
#execute unless block ~ ~ ~ barrel{Items:[{Slot:4b}]} run replaceitem block ~ ~ ~ container.4 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:empty"]}} 1
#execute unless block ~ ~ ~ barrel{Items:[{Slot:5b}]} run replaceitem block ~ ~ ~ container.5 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:empty"]}} 1
#execute unless block ~ ~ ~ barrel{Items:[{Slot:10b}]} run replaceitem block ~ ~ ~ container.10 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:empty"]}} 1
#execute unless block ~ ~ ~ barrel{Items:[{Slot:11b}]} run replaceitem block ~ ~ ~ container.11 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:empty"]}} 1
#execute unless block ~ ~ ~ barrel{Items:[{Slot:12b}]} run replaceitem block ~ ~ ~ container.12 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:empty"]}} 1
#execute unless block ~ ~ ~ barrel{Items:[{Slot:13b}]} run replaceitem block ~ ~ ~ container.13 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:empty"]}} 1
#execute unless block ~ ~ ~ barrel{Items:[{Slot:14b}]} run replaceitem block ~ ~ ~ container.14 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:empty"]}} 1
#execute unless block ~ ~ ~ barrel{Items:[{Slot:19b}]} run replaceitem block ~ ~ ~ container.19 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:empty"]}} 1
#execute unless block ~ ~ ~ barrel{Items:[{Slot:20b}]} run replaceitem block ~ ~ ~ container.20 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:empty"]}} 1
#execute unless block ~ ~ ~ barrel{Items:[{Slot:21b}]} run replaceitem block ~ ~ ~ container.21 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:empty"]}} 1
#execute unless block ~ ~ ~ barrel{Items:[{Slot:22b}]} run replaceitem block ~ ~ ~ container.22 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:empty"]}} 1
#execute unless block ~ ~ ~ barrel{Items:[{Slot:23b}]} run replaceitem block ~ ~ ~ container.23 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:empty"]}} 1
#異物があったら排出後、not_slotで置き換え
execute unless block ~ ~ ~ barrel{Items:[{Slot:0b,tag:{ckenja:{tags:["ckenja_domotics:not_slot"]}}}]} run function ckenja_domotics:core/device/gui/not_slot/0
execute unless block ~ ~ ~ barrel{Items:[{Slot:6b,tag:{ckenja:{tags:["ckenja_domotics:not_slot"]}}}]} run function ckenja_domotics:core/device/gui/not_slot/6
execute unless block ~ ~ ~ barrel{Items:[{Slot:7b,tag:{ckenja:{tags:["ckenja_domotics:not_slot"]}}}]} run function ckenja_domotics:core/device/gui/not_slot/7
execute unless block ~ ~ ~ barrel{Items:[{Slot:8b,tag:{ckenja:{tags:["ckenja_domotics:not_slot"]}}}]} run function ckenja_domotics:core/device/gui/not_slot/8
execute unless block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{ckenja:{tags:["ckenja_domotics:not_slot"]}}}]} run function ckenja_domotics:core/device/gui/not_slot/9
execute unless block ~ ~ ~ barrel{Items:[{Slot:16b,tag:{ckenja:{tags:["ckenja_domotics:not_slot"]}}}]} run function ckenja_domotics:core/device/gui/not_slot/16
execute unless block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{ckenja:{tags:["ckenja_domotics:not_slot"]}}}]} run function ckenja_domotics:core/device/gui/not_slot/17
execute unless block ~ ~ ~ barrel{Items:[{Slot:18b,tag:{ckenja:{tags:["ckenja_domotics:not_slot"]}}}]} run function ckenja_domotics:core/device/gui/not_slot/18
execute unless block ~ ~ ~ barrel{Items:[{Slot:24b,tag:{ckenja:{tags:["ckenja_domotics:not_slot"]}}}]} run function ckenja_domotics:core/device/gui/not_slot/24
execute unless block ~ ~ ~ barrel{Items:[{Slot:25b,tag:{ckenja:{tags:["ckenja_domotics:not_slot"]}}}]} run function ckenja_domotics:core/device/gui/not_slot/25
execute unless block ~ ~ ~ barrel{Items:[{Slot:26b,tag:{ckenja:{tags:["ckenja_domotics:not_slot"]}}}]} run function ckenja_domotics:core/device/gui/not_slot/26
#ボタン
execute unless block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{ckenja:{tags:["ckenja_domotics:not_slot"]}}}]} run function ckenja_domotics:core/device/gui/button/lime15