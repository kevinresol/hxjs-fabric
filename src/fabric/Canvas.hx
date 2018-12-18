package fabric;

@:native('fabric.Canvas')
extern class Canvas extends StaticCanvas {
	// ICanvasOptions
	var uniScaleTransform : Bool;
	var centeredScaling : Bool;
	var centeredRotation : Bool;
	var interactive : Bool;
	var selection : Bool;
	var selectionColor : String;
	var selectionDashArray : Array<Dynamic>;
	var selectionBorderColor : String;
	var selectionLineWidth : Float;
	var hoverCursor : String;
	var moveCursor : String;
	var defaultCursor : String;
	var freeDrawingCursor : String;
	var freeDrawingBrush : Dynamic;
	var rotationCursor : String;
	var containerClass : String;
	var perPixelTargetFind : Bool;
	var targetFindTolerance : Float;
	var skipTargetFind : Bool;
	var isDrawingMode : Bool;
	function new(element:haxe.extern.EitherType<js.html.CanvasElement, String>, ?options:ICanvasOptions):Void;
	var _objects : Array<Dynamic>;
	function containsPoint(e:Event, target:Dynamic):Bool;
	function deactivateAll():Canvas;
	function deactivateAllWithDispatch(?e:Event):Canvas;
	function discardActiveGroup(?e:Event):Canvas;
	function discardActiveObject(?e:Event):Canvas;
	// function drawControls(ctx:CanvasRenderingContext2D):Void;
	function findTarget(e:MouseEvent, skipGroup:Bool):Canvas;
	// function getActiveGroup():Group;
	// function getActiveObject():Dynamic;
	// function getPointer(e:Event, ?ignoreZoom:Bool, ?upperCanvasEl:CanvasRenderingContext2D):{ var x : Float; var y : Float; };
	// function getSelectionContext():CanvasRenderingContext2D;
	function getSelectionElement():js.html.CanvasElement;
	function isTargetTransparent(target:Dynamic, x:Float, y:Float):Bool;
	// function setActiveGroup(group:Group, ?e:Event):Canvas;
	function setActiveObject(object:Dynamic, ?e:Event):Canvas;
	function setCursor(value:String):Void;
	function removeListeners():Void;
	static var EMPTY_JSON : String;
	static function supports(methodName:String):Bool;
	static function toJSON(?propertiesToInclude:Array<Dynamic>):String;
}