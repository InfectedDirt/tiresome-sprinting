execute as @a[predicate=rpg:sprinting,tag=rpg.tired] run attribute @s movement_speed modifier add rpg_sprinting:no_sprint -0.3 add_multiplied_base
execute as @a[tag=!rpg.tired] run attribute @s movement_speed modifier remove rpg_sprinting:no_sprint
execute as @a[predicate=!rpg:sprinting] run attribute @s movement_speed modifier remove rpg_sprinting:no_sprint
execute as @a[predicate=rpg:sprinting,tag=!rpg.tired] run scoreboard players remove @s rpg.stamina 5

execute as @a[tag=rpg.tired] run attribute @s jump_strength modifier add rpg_sprinting:no_jump -1 add_multiplied_total
execute as @a[tag=!rpg.tired] run attribute @s jump_strength modifier remove rpg_sprinting:no_jump