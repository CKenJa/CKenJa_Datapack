tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
playsound ui.button.click master @s ~ ~ ~
tag @e[tag=cw_poser_edit,sort=nearest,limit=1] remove animate
data remove storage cw_poser Display

function cw_poser:select/decode

function cw_poser:display/head
function cw_poser:display/left_arm
function cw_poser:display/body
function cw_poser:display/right_arm
function cw_poser:display/left_leg
function cw_poser:display/right_leg

function cw_poser:display/whell

tellraw @s ["",{"text":"                                                         ❌Stop Editing","color":"dark_red","clickEvent":{"action":"run_command","value":"/function cw_poser:close"}}]

tellraw @s [{"text":"⟲ Reset All","color":"red","clickEvent":{"action":"run_command","value":"/function cw_poser:reset_all"}},{"text":"        ","color":"gray"},{"nbt":"Display[17]","storage":"cw_poser","interpret":true},{"text":"\n                      "},{"nbt":"Display[18]","storage":"cw_poser","interpret":true},{"text":"\n      ","color":"gray"},{"nbt":"Display[0]","interpret":true,"storage":"cw_poser"},{"text":".           "},{"nbt":"Display[19]","storage":"cw_poser","interpret":true},{"text":"\n      ","color":"gray"},{"nbt":"Display[1]","interpret":true,"storage":"cw_poser"},{"text":".           "},{"nbt":"Display[20]","storage":"cw_poser","interpret":true},{"text":"\n                      "},{"nbt":"Display[21]","storage":"cw_poser","interpret":true},{"text":"\n  ","color":"gray"},{"nbt":"Display[2]","interpret":true,"storage":"cw_poser"},{"text":"  ","color":"gray"},{"nbt":"Display[5]","interpret":true,"storage":"cw_poser"},{"text":"  ","color":"gray"},{"nbt":"Display[8]","interpret":true,"storage":"cw_poser"},{"text":"       "},{"nbt":"Display[22]","storage":"cw_poser","interpret":true},{"text":"\n  ","color":"gray"},{"nbt":"Display[3]","interpret":true,"storage":"cw_poser"},{"text":"  ","color":"gray"},{"nbt":"Display[6]","interpret":true,"storage":"cw_poser"},{"text":"  ","color":"gray"},{"nbt":"Display[9]","interpret":true,"storage":"cw_poser"},{"text":"       "},{"nbt":"Display[23]","storage":"cw_poser","interpret":true},{"text":"\n  ","color":"gray"},{"nbt":"Display[4]","interpret":true,"storage":"cw_poser"},{"text":"  ","color":"gray"},{"nbt":"Display[7]","interpret":true,"storage":"cw_poser"},{"text":"  ","color":"gray"},{"nbt":"Display[10]","interpret":true,"storage":"cw_poser"},{"text":"       "},{"nbt":"Display[24]","storage":"cw_poser","interpret":true},{"text":"\n                      "},{"nbt":"Display[25]","storage":"cw_poser","interpret":true},{"text":"\n      ","color":"gray"},{"nbt":"Display[11]","interpret":true,"storage":"cw_poser"},{"text":" ","color":"gray"},{"nbt":"Display[14]","interpret":true,"storage":"cw_poser"},{"text":".          "},{"nbt":"Display[26]","storage":"cw_poser","interpret":true},{"text":"\n      ","color":"gray"},{"nbt":"Display[12]","interpret":true,"storage":"cw_poser"},{"text":" ","color":"gray"},{"nbt":"Display[15]","interpret":true,"storage":"cw_poser"},{"text":".          "},{"nbt":"Display[27]","storage":"cw_poser","interpret":true},{"text":"\n      ","color":"gray"},{"nbt":"Display[13]","interpret":true,"storage":"cw_poser"},{"text":" ","color":"gray"},{"nbt":"Display[16]","interpret":true,"storage":"cw_poser"},{"text":".          "},{"nbt":"Display[28]","storage":"cw_poser","interpret":true},{"text":"\n                      "},{"nbt":"Display[29]","storage":"cw_poser","interpret":true}]

execute at @s as @e[type=armor_stand,limit=1,sort=nearest] run function cw_poser:animate/get_info
scoreboard players remove #frames cw_poser_ani 1

tellraw @s ["",{"text":"(","color":"gray"},{"text":"\u274f","color":"gold"},{"score":{"name":"#frames","objective":"cw_poser_ani"},"color":"gold"},{"text":")","color":"gray"},{"text":"\n\u274fRemove Frame","color":"red","clickEvent":{"action":"run_command","value":"/execute as @e[type=armor_stand,sort=nearest,limit=1] run function cw_poser:animate/remove_frame"}},{"text":"  |  ","color":"gray"},{"text":"\u274fAdd Frame","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=armor_stand,sort=nearest,limit=1] run function cw_poser:animate/new_frame"}},{"text":"  |  ","color":"gray"},{"text":"\u2591Menu","color":"yellow","clickEvent":{"action":"run_command","value":"/function cw_poser:animate/menu/directory"}}]

#tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
#tellraw @s {"nbt":"Display[17]","storage":"cw_poser","interpret":true}
#tellraw @s {"nbt":"Display[18]","storage":"cw_poser","interpret":true}
#tellraw @s {"nbt":"Display[19]","storage":"cw_poser","interpret":true}
#tellraw @s {"nbt":"Display[20]","storage":"cw_poser","interpret":true}
#tellraw @s {"nbt":"Display[21]","storage":"cw_poser","interpret":true}
#tellraw @s {"nbt":"Display[22]","storage":"cw_poser","interpret":true}
#tellraw @s {"nbt":"Display[23]","storage":"cw_poser","interpret":true}
#tellraw @s {"nbt":"Display[24]","storage":"cw_poser","interpret":true}
#tellraw @s {"nbt":"Display[25]","storage":"cw_poser","interpret":true}
#tellraw @s {"nbt":"Display[26]","storage":"cw_poser","interpret":true}
#tellraw @s {"nbt":"Display[27]","storage":"cw_poser","interpret":true}
#tellraw @s {"nbt":"Display[28]","storage":"cw_poser","interpret":true}
#tellraw @s {"nbt":"Display[29]","storage":"cw_poser","interpret":true}