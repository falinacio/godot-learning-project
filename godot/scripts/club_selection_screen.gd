# Club Selection Screen
# This script controls the club selection screen, where the player chooses their historical club.
# It demonstrates: scene control, signal usage, and UI interaction in Godot 4.
# Reference: https://docs.godotengine.org/en/stable/tutorials/ui/index.html

extends Control

# Signal emitted when the player confirms their club selection.
# Other nodes (e.g. GameManager) can connect to this to respond to the selection.
signal club_selected(club: Club)

# List of available clubs, populated in the Godot editor or via code.
# Each entry is a Club resource (see scripts/club.gd).
@export var available_clubs: Array[Club] = []

# Reference to UI nodes — set these in the scene via @onready
@onready var club_list: ItemList = $ClubList
@onready var club_name_label: Label = $Details/ClubName
@onready var club_period_label: Label = $Details/ClubPeriod
@onready var club_description_label: Label = $Details/ClubDescription
@onready var club_crest: TextureRect = $Details/ClubCrest
@onready var club_mascot: TextureRect = $Details/ClubMascot
@onready var confirm_button: Button = $ConfirmButton

# Index of the currently selected club in available_clubs
var _selected_index: int = -1


func _ready() -> void:
	# Fail early: ensure clubs are configured before proceeding
	assert(available_clubs.size() > 0, "No clubs configured for selection screen.")

	_populate_club_list()
	confirm_button.disabled = true
	confirm_button.pressed.connect(_on_confirm_pressed)
	club_list.item_selected.connect(_on_club_selected)


# Populates the ItemList with available club names
func _populate_club_list() -> void:
	club_list.clear()
	for club in available_clubs:
		club_list.add_item("%s (%s)" % [club.name, club.period])


# Called when the player selects a club from the list
func _on_club_selected(index: int) -> void:
	_selected_index = index
	var club: Club = available_clubs[index]

	club_name_label.text = club.name
	club_period_label.text = club.period
	club_description_label.text = club.description

	if club.crest:
		club_crest.texture = club.crest
	if club.mascot:
		club_mascot.texture = club.mascot

	confirm_button.disabled = false


# Called when the player confirms their selection
func _on_confirm_pressed() -> void:
	assert(_selected_index >= 0, "Confirm pressed with no club selected.")
	emit_signal("club_selected", available_clubs[_selected_index])
