scoreboard objectives remove cw_poser_limb
scoreboard objectives remove cw_poser_sett
scoreboard objectives remove cw_poser_rot
scoreboard objectives remove cw_poser_wheel
scoreboard objectives remove cw_poser_wheelp
scoreboard objectives remove cw_poser_sneak
scoreboard objectives remove cw_poser_dur

scoreboard objectives remove cw_poser_ani
scoreboard objectives remove cw_poser_anip

tellraw @a {"text":"Armorstand Animator Uninstalled. Safe to Delete","color":"red"}
datapack disable "file/cw_animator"
