package fabric;

typedef IPatternOptions = {
	var repeat : String;
	var offsetX : Float;
	var offsetY : Float;
	var source : haxe.extern.EitherType<String, js.html.ImageElement>;
};