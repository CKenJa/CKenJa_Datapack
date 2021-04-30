scoreboard objectives add cw_poser_limb dummy
scoreboard objectives add cw_poser_sett dummy
scoreboard objectives add cw_poser_rot dummy
scoreboard objectives add cw_poser_wheel dummy
scoreboard objectives add cw_poser_wheelp dummy
scoreboard objectives add cw_poser_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add cw_poser_dur dummy

scoreboard objectives add cw_poser_ani dummy
scoreboard objectives add cw_poser_anip dummy

scoreboard objectives add constant dummy
scoreboard players set #100000 constant 100000
scoreboard players set #10000 constant 10000
scoreboard players set #1000 constant 1000
scoreboard players set #100 constant 100
scoreboard players set #10 constant 10

function cw_poser:slow

schedule function cw_menu:message 1t
schedule function cw_poser:message 2t