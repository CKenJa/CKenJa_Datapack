function cw_poser:animate/get_info

execute if score #frames cw_poser_ani matches 0 run function cw_poser:animate/init
scoreboard players remove #frames cw_poser_ani 1

### add inserts the frame ur ON ###
execute as @p if score @s cw_poser_ani > #frames cw_poser_ani run scoreboard players operation @s cw_poser_ani = #frames cw_poser_ani
execute as @p if score @s cw_poser_ani matches 0 run scoreboard players operation @s cw_poser_ani = #frames cw_poser_ani
execute as @p if score @s cw_poser_ani matches 0.. unless score #frames cw_poser_ani matches 100.. run scoreboard players operation #frames cw_poser_ani = @s cw_poser_ani
execute unless score #frames cw_poser_ani matches 100.. run function cw_poser:animate/add_selected

execute unless score #frames cw_poser_ani matches 100.. run scoreboard players add @p cw_poser_ani 1
scoreboard players operation @p cw_poser_anip = @p cw_poser_ani

execute as @p run function cw_poser:display/directory