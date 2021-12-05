#GUI変更検知
execute store success score #ckenja_domotics_whether_change ckj01_data run data modify storage ckenja_domotics:working_memory Items set from entity @s Items
execute if score #ckenja_domotics_whether_change ckj01_data matches 1 run function ckenja_domotics:core/device/cart/general