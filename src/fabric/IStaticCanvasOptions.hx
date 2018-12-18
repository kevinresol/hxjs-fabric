package fabric;

typedef IStaticCanvasOptions = {
	@:optional
	var allowTouchScrolling : Bool;
	@:optional
	var imageSmoothingEnabled : Bool;
	@:optional
	var preserveObjectStacking : Bool;
	@:optional
	var viewportTransform : Array<Float>;
	@:optional
	var freeDrawingColor : String;
	@:optional
	var freeDrawingLineWidth : Float;
	@:optional
	var backgroundColor : haxe.extern.EitherType<String, Pattern>;
	@:optional
	// var backgroundImage : haxe.extern.EitherType<Image, String>;
	@:optional
	var backgroundImageOpacity : Float;
	@:optional
	var backgroundImageStretch : Float;
	@:optional
	// function clipTo(context:CanvasRenderingContext2D):Void;
	@:optional
	var controlsAboveOverlay : Bool;
	@:optional
	var includeDefaultValues : Bool;
	@:optional
	var overlayColor : haxe.extern.EitherType<String, Pattern>;
	@:optional
	// var overlayImage : Image;
	@:optional
	var overlayImageLeft : Float;
	@:optional
	var overlayImageTop : Float;
	@:optional
	var renderOnAddRemove : Bool;
	@:optional
	var stateful : Bool;
};