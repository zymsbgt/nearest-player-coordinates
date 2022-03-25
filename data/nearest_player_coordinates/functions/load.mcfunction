#> Create scoreboards for player info
##> Player positions
scoreboard objectives add npc.xpos dummy
scoreboard objectives add npc.ypos dummy
scoreboard objectives add npc.zpos dummy

#> Add triggers
##> Toggle if players want to opt out
scoreboard objectives add npc.toggle trigger
##> Toggle if players want to change target type
scoreboard objectives add npc.priority trigger
##> Show information GUI to player
scoreboard objectives add npc.information trigger
##> Allows players to be tracked individually
scoreboard objectives add npc.track_id trigger

#> Show information when loaded
tellraw @a ["",{"text":"[NPC]","hoverEvent":{"action":"show_text","contents":[{"text":"Nearest Player Coordinates"}]}},{"text":" Datapacks have been successfully loaded!"}]

#> Start tracking/updating players
function nearest_player_coordinates:check_consent