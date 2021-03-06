################################################################################################
#
# Scroll Direction Detection
#
################################################################################################

scoreboard objectives add sdd_last_slot dummy

execute as @a[scores={sdd_last_slot=0}] run function scroll_direction_detection:scroll_direction_slot0
execute as @a[scores={sdd_last_slot=1}] run function scroll_direction_detection:scroll_direction_slot1
execute as @a[scores={sdd_last_slot=2}] run function scroll_direction_detection:scroll_direction_slot2
execute as @a[scores={sdd_last_slot=3}] run function scroll_direction_detection:scroll_direction_slot3
execute as @a[scores={sdd_last_slot=4}] run function scroll_direction_detection:scroll_direction_slot4
execute as @a[scores={sdd_last_slot=5}] run function scroll_direction_detection:scroll_direction_slot5
execute as @a[scores={sdd_last_slot=6}] run function scroll_direction_detection:scroll_direction_slot6
execute as @a[scores={sdd_last_slot=7}] run function scroll_direction_detection:scroll_direction_slot7
execute as @a[scores={sdd_last_slot=8}] run function scroll_direction_detection:scroll_direction_slot8

execute as @a store result score @s sdd_last_slot run data get entity @s SelectedItemSlot