#=====<root>=====#
execute if entity @a[scores={msg_XI=2}] run function no.11_spawnchecker:root/enter

#=====<main>=====#
#ゴリ押しドモルガン。一応思いつく限り湧き潰しできるアイテムは書いといた！
execute as @a unless entity @s[nbt=!{SelectedItem:{id:"minecraft:torch"}},nbt=!{SelectedItem:{id:"minecraft:sea_lantern"}},nbt=!{SelectedItem:{id:"minecraft:end_rod"}},nbt=!{SelectedItem:{id:"minecraft:lava_bucket"}},nbt=!{SelectedItem:{id:"minecraft:jack_o_lantern"}},nbt=!{SelectedItem:{id:"minecraft:glowstone"}},nbt=!{SelectedItem:{id:"minecraft:flint_and_steel"}},nbt=!{SelectedItem:{id:"minecraft:fire_charge"}},nbt=!{SelectedItem:{id:"minecraft:beacon"}},nbt=!{SelectedItem:{id:"minecraft:campfire"}},nbt=!{SelectedItem:{id:"minecraft:lantern"}}] at @s anchored feet positioned ^ ^ ^4 align xyz positioned ~-2.5 ~-2.5 ~-2.5 run function no.11_spawnchecker:main/x