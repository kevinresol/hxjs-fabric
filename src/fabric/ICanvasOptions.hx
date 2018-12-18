package fabric;

typedef ICanvasOptions = {
	>IStaticCanvasOptions,
	@:optional
	var uniScaleTransform : Bool;
	@:optional
	var centeredScaling : Bool;
	@:optional
	var centeredRotation : Bool;
	@:optional
	var interactive : Bool;
	@:optional
	var selection : Bool;
	@:optional
	var selectionColor : String;
	@:optional
	var selectionDashArray : Array<Dynamic>;
	@:optional
	var selectionBorderColor : String;
	@:optional
	var selectionLineWidth : Float;
	@:optional
	var hoverCursor : String;
	@:optional
	var moveCursor : String;
	@:optional
	var defaultCursor : String;
	@:optional
	var freeDrawingCursor : String;
	@:optional
	var rotationCursor : String;
	@:optional
	var containerClass : String;
	@:optional
	var perPixelTargetFind : Bool;
	@:optional
	var targetFindTolerance : Float;
	@:optional
	var skipTargetFind : Bool;
	@:optional
	var isDrawingMode : Bool;
};