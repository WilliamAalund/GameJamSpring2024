extends Control

@onready var initial_ui = $InitialDisplayUI
@onready var main_ui = $MainUI

var on_view_title_screen = true

func _input(event):
    if event.is_action_pressed("ui_accept"):
        if on_view_title_screen:
            transition_from_initial_to_main_ui()

func transition_from_initial_to_main_ui():
    on_view_title_screen = false
    initial_ui.hide()
    main_ui.show()