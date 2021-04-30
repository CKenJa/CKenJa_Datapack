tag @e[type=armor_stand,tag=!cw_poser_editp,distance=..0.75] add cw_poser_editp

tellraw @s ["",{"text":"[ Edit this armorstand? ]","color":"green","clickEvent":{"action":"run_command","value":"/function cw_poser:edit1"}}]