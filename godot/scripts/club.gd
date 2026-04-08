# Club data resource
# This script defines the data structure for a football club.
# In Godot 4, Resources are used to store structured data and can be saved/loaded as .tres files.
# Reference: https://docs.godotengine.org/en/stable/tutorials/scripting/resources.html

extends Resource

class_name Club

# Club's display name (used in the UI, in Portuguese BR)
@export var name: String = ""

# The historical period this club represents (e.g. "1980")
@export var period: String = ""

# A short description of the club's history shown in the selection screen
@export var description: String = ""

# Path to the club's crest/shield image
@export var crest: Texture2D

# Path to the club's mascot image
@export var mascot: Texture2D
