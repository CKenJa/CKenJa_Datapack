tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
playsound ui.button.click master @s ~ ~ ~
execute as @e[type=armor_stand,tag=cw_poser_edit,limit=1,sort=nearest] run function cw_poser:animate/get_info
scoreboard players remove #frames cw_poser_ani 1

function cw_poser:animate/menu/load_frames
function cw_poser:animate/menu/tellraw_frames

tellraw @s [{"text":"\n \u274f Delay: ","color":"dark_aqua"},{"text":"⫷ ","color":"dark_red","clickEvent":{"action":"run_command","value":"/function cw_poser:animate/menu/dur_down"}},{"score":{"name":"#dur","objective":"cw_poser_ani"},"color":"gold"},{"text":" ⫸","color":"dark_green","clickEvent":{"action":"run_command","value":"/function cw_poser:animate/menu/dur_up"}}]
execute as @e[tag=cw_poser_edit,sort=nearest,limit=1] if entity @s[tag=!cw_poser_loop] run tellraw @p [{"text":"\n ∞ Loop?: ","color":"dark_blue"},{"text":" Y ","bold":false,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function cw_poser:animate/menu/loop_yes"}},{"text":"/","color":"gray"},{"bold":true,"text":" N ","color":"dark_red","clickEvent":{"action":"run_command","value":"/function cw_poser:animate/menu/loop_no"}}]
execute as @e[tag=cw_poser_edit,sort=nearest,limit=1] if entity @s[tag=cw_poser_loop] run tellraw @p [{"text":"\n ∞ Loop?: ","color":"dark_blue"},{"text":" Y ","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function cw_poser:animate/menu/loop_yes"}},{"text":"/","color":"gray"},{"bold":false,"text":" N ","color":"dark_red","clickEvent":{"action":"run_command","value":"/function cw_poser:animate/menu/loop_no"}}]

tellraw @s [{"text":"\n"},{"text":"⫷ Back","color":"dark_red","clickEvent":{"action":"run_command","value":"/function cw_poser:display/directory"}},{"text":" | ","color":"gray"},{"text":"\u274f Delete Frame","color":"red","clickEvent":{"action":"run_command","value":"/function cw_poser:animate/menu/remove_current_frame"}}]