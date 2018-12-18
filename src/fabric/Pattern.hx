package fabric;

extern class Pattern {
	var repeat : String;
	var offsetX : Float;
	var offsetY : Float;
	var source : haxe.extern.EitherType<String, js.html.ImageElement>;
	function new(?options:IPatternOptions):Void;
	function initialise(?options:IPatternOptions):Pattern;
	// function toLive(ctx:CanvasRenderingContext2D):Pattern;
	function toObject():Dynamic;
	function toSVG(object:Dynamic):String;
}