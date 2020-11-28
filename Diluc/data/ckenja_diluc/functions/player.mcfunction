execute if data entity @s {SelectedItem:{tag:{ctc:{id:"ckenja_diluc"}}}} run function ckenja_diluc:player/general
execute if entity @s[tag=ckenja_diluc_having] unless data entity @s {SelectedItem:{tag:{ctc:{id:"ckenja_diluc"}}}} run function ckenja_diluc:player/unset
