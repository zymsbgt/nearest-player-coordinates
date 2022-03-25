#> Reset value so it doesn't repeat this command again
scoreboard players set @s npc.information 0

#> Show error message if player withdrew consent
execute if entity @s[scores={npc.toggle=2}] run tellraw @s [{"text":"===== Nearest Player Coordinates =====","color":"gold"}]
execute if entity @s[scores={npc.toggle=2}] run tellraw @s ["",{"text":"You have withdrawn consent from coordinate sharing. To view other's coordinates, "},{"text":"[Click Here]","color":"green","clickEvent":{"action":"run_command","value":"/trigger npc.toggle set 0"},"hoverEvent":{"action":"show_text","contents":[{"text":"By consenting, other players will be able to view your coordinates"}]}},{"text":" to consent to coordinate sharing."}]

#> Show if player opt in to coordinate sharing
execute if entity @s[scores={npc.toggle=0}] run function nearest_player_coordinates:information/consented

#> Return error message if player score is invalid
execute if entity @s[scores={npc.toggle=1}] run tellraw @s {"text":"You are being rate limited. Pleas try again later. ","color":"red"}
execute if entity @s[scores={npc.toggle=3..}] run tellraw @s {"text":"You are being rate limited. Pleas try again later. ","color":"red"}