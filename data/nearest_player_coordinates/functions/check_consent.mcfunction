#> Enable triggers
title @a times 0 5 1
scoreboard players enable @a npc.toggle
scoreboard players enable @a npc.priority
scoreboard players enable @a npc.information
scoreboard players enable @a npc.track_id

#> Run functions
execute as @a[scores={npc.toggle=0}] run function nearest_player_coordinates:get_player_location
execute as @a[scores={npc.toggle=1}] run function nearest_player_coordinates:opt_out
execute as @a[scores={npc.toggle=3}] run function nearest_player_coordinates:opt_in
execute as @a[scores={npc.information=1}] run function nearest_player_coordinates:information
execute unless entity @a[tag=npc.player3] at @r run tag @r[distance=10..,scores={npc.toggle=0}] add npc.player3
## Add code for players to detect if there's another tagged player
execute as @a[tag=npc.player3] at @s if entity @a[distance=2..,tag=npc.player3] run tag @s remove npc.player3

execute as @a[scores={npc.track_id=4}] at @s if entity @a[distance=2..,scores={npc.track_id=4}] run tellraw @a[scores={npc.track_id=4}] ["",{"text":"[NPC] Your coordinate sharing slot has timed out. "},{"text":"[Click Here]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger npc.information"},"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger npc.information"}]}},{"text":" to claim another slot."}]
execute as @a[scores={npc.track_id=4}] at @s if entity @a[distance=2..,scores={npc.track_id=4}] run scoreboard players remove @a[scores={npc.track_id=4}] npc.track_id

#> Run this function again
schedule function nearest_player_coordinates:check_consent 2s