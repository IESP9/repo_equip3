extends Node2D
var Izq:bool = false
var Der:bool = false
var puertaDer:bool = true
var puertaIzq:bool = true
var barrader:bool = true
var barraizq:bool = true

func _ready() -> void:
	pass # Replace with function body.

func movCamara(Iqz:bool, Der:bool):
	if Iqz && $Camera.position.x > -127:
		$Camera.position.x -= 20
	if Der && $Camera.position.x < 133:
		$Camera.position.x += 20 	

func _process(delta: float) -> void:
	movCamara(Izq,Der)
	pass

func _on_izq_mouse_entered() -> void:
	Izq = true
	pass # Replace with function body.
	

func _on_izq_mouse_exited() -> void:
	Izq = false
	pass # Replace with function body.

func _on_der_mouse_entered() -> void:
	Der = true
	pass # Replace with function body.

func _on_der_mouse_exited() -> void:
	Der = false
	pass # Replace with function body.

func _on_botonizq_pressed() -> void:
	if not puertaIzq:
		$Botones/Izq/btnizq.play("encender")
		$Puertas/Izq/AnimatedSprite2D.play("default")
		puertaIzq = true
	else:
		$Botones/Izq/btnizq.play("apagado")
		$Puertas/Izq/AnimatedSprite2D.play_backwards("default")
		puertaIzq = false
		
	pass # Replace with function body.
	

func _on_botonder_pressed() -> void:
	if not puertaDer:
		$Botones/Der/btnder.play("encender")
		$Puertas/Der/AnimatedSprite2D.play("default")
		$"Botones/Der/Barra electricidad/AnimatedSprite2D".play("subir")
		puertaDer = true
	else:
		$Botones/Der/btnder.play("apagado")
		$Puertas/Der/AnimatedSprite2D.play_backwards("default")
		$"Botones/Der/Barra electricidad/AnimatedSprite2D".play_backwards("subir")
		puertaDer = false
	pass # Replace with function body.
