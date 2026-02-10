extends Control

@export var tg_label: Label
@export var ct_label: Label

const translations: Dictionary = {
	"godot_exercises": {
		"en": "Godot Exercises 00",
		"fr": "Exercices Godot 00"
	},
	"validation_code": {
		"en": "Validation Code",
		"fr": "Code de Validation"
	}
}

var locale = "en"

func update_locale(new_locale: String) -> void:
	locale = new_locale
	tg_label.text = translations["godot_exercises"][locale]
	ct_label.text = translations["validation_code"][locale]

func _on_locale_option_button_item_selected(index: int) -> void:
	match index:
		0: 
			update_locale("en")
		1: 
			update_locale("fr")
		_:
			update_locale("en")
