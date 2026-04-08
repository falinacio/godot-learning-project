# Mock test for ClubSelectionScreen
# This script simulates the club selection flow and prints the result to the console.
# Run with: godot4 --path godot/ --headless --script scripts/test_club_selection.gd
# Reference: https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/index.html

extends SceneTree

const Club = preload("res://scripts/club.gd")

func _init() -> void:
	print("=== Mock: Club Selection Screen ===\n")

	# Load all MVP clubs from their resource files
	var clubs: Array[Club] = [
		load("res://resources/clubs/flamengo_1980.tres"),
		load("res://resources/clubs/cruzeiro_2003.tres"),
		load("res://resources/clubs/atletico_mg_1978.tres"),
		load("res://resources/clubs/sao_paulo_1992.tres"),
	]

	print("Clubes disponíveis:")
	for i in clubs.size():
		print("  [%d] %s (%s)" % [i + 1, clubs[i].name, clubs[i].period])

	print("")
	print("--- Simulando seleção do clube 1: %s ---" % clubs[0].name)
	_simulate_selection(clubs[0])

	print("")
	print("--- Simulando seleção do clube 2: %s ---" % clubs[1].name)
	_simulate_selection(clubs[1])

	print("")
	print("--- Simulando confirmação: %s ---" % clubs[0].name)
	_simulate_confirm(clubs[0])

	quit()


func _simulate_selection(club: Club) -> void:
	print("  Nome:    %s" % club.name)
	print("  Período: %s" % club.period)
	print("  Descrição: %s" % club.description)
	print("  [Botão Confirmar: HABILITADO]")


func _simulate_confirm(club: Club) -> void:
	print("  >> Signal emitido: club_selected(%s)" % club.name)
	print("  >> Partida iniciada com: %s (%s)" % [club.name, club.period])
