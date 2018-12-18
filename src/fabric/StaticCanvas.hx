package fabric;

@:native('fabric.StaticCanvas')
extern class StaticCanvas {
	// IObservable<StaticCanvas>
	// @:overload(function(eventName:{ }):StaticCanvas { })
	// function on(eventName:String, handler:IEvent -> Dynamic):StaticCanvas;
	function trigger(eventName:String, ?options:Dynamic):StaticCanvas;
	// function off(?eventName:haxe.extern.EitherType<String, Dynamic>, ?handler:IEvent -> Dynamic):StaticCanvas;
	// IStaticCanvasOptions
	var allowTouchScrolling : Bool;
	var imageSmoothingEnabled : Bool;
	var preserveObjectStacking : Bool;
	var viewportTransform : Array<Float>;
	var freeDrawingColor : String;
	var freeDrawingLineWidth : Float;
	var backgroundColor : haxe.extern.EitherType<String, Pattern>;
	// var backgroundImage : haxe.extern.EitherType<Image, String>;
	var backgroundImageOpacity : Float;
	var backgroundImageStretch : Float;
	// function clipTo(context:CanvasRenderingContext2D):Void;
	var controlsAboveOverlay : Bool;
	var includeDefaultValues : Bool;
	var overlayColor : haxe.extern.EitherType<String, Pattern>;
	// var overlayImage : Image;
	var overlayImageLeft : Float;
	var overlayImageTop : Float;
	var renderOnAddRemove : Bool;
	var stateful : Bool;
	// ICollection<StaticCanvas>
	function add(object:haxe.extern.Rest<Dynamic>):StaticCanvas;
	function insertAt(object:Dynamic, index:Float, nonSplicing:Bool):StaticCanvas;
	function remove(object:haxe.extern.Rest<Dynamic>):StaticCanvas;
	function forEachObject(callback:Dynamic -> Float -> Array<Dynamic> -> Dynamic, ?context:Dynamic):StaticCanvas;
	function getObjects(?type:String):Array<Dynamic>;
	function item(index:Float):StaticCanvas;
	function isEmpty():Bool;
	function size():Float;
	function contains(object:Dynamic):Bool;
	function complexity():Float;
	// IAnimation<StaticCanvas>
	var FX_DURATION : Float;
	function fxCenterObjectH(object:Dynamic, ?callbacks:{ var onComplete : haxe.Constraints.Function; var onChange : haxe.Constraints.Function; }):StaticCanvas;
	function fxCenterObjectV(object:Dynamic, ?callbacks:{ var onComplete : haxe.Constraints.Function; var onChange : haxe.Constraints.Function; }):StaticCanvas;
	function fxRemove(object:Dynamic, ?callbacks:{ var onComplete : haxe.Constraints.Function; var onChange : haxe.Constraints.Function; }):StaticCanvas;
	// StaticCanvas
	function new(element:haxe.extern.EitherType<js.html.CanvasElement, String>, ?options:ICanvasOptions):Void;
	function calcOffset():StaticCanvas;
	// function setOverlayImage(image:haxe.extern.EitherType<Image, String>, callback:haxe.Constraints.Function, ?options:IObjectOptions):StaticCanvas;
	// function setBackgroundImage(image:haxe.extern.EitherType<Image, String>, callback:haxe.Constraints.Function, ?options:IObjectOptions):StaticCanvas;
	function setOverlayColor(overlayColor:haxe.extern.EitherType<String, Pattern>, callback:haxe.Constraints.Function):StaticCanvas;
	function setBackgroundColor(backgroundColor:haxe.extern.EitherType<String, Pattern>, callback:haxe.Constraints.Function):StaticCanvas;
	function getWidth():Float;
	function getHeight():Float;
	// function setWidth(value:haxe.extern.EitherType<Float, String>, ?options:ICanvasDimensionsOptions):StaticCanvas;
	// function setHeight(value:haxe.extern.EitherType<Float, String>, ?options:ICanvasDimensionsOptions):StaticCanvas;
	// function setDimensions(dimensions:ICanvasDimensions, ?options:ICanvasDimensionsOptions):StaticCanvas;
	function getZoom():Float;
	function setViewportTransform(vpt:Array<Float>):StaticCanvas;
	// function zoomToPoint(point:Point, value:Float):StaticCanvas;
	function setZoom(value:Float):StaticCanvas;
	// function absolutePan(point:Point):StaticCanvas;
	// function relativePan(point:Point):StaticCanvas;
	function getElement():js.html.CanvasElement;
	function getActiveObject():Dynamic;
	// function getActiveGroup():Group;
	// function clearContext(ctx:CanvasRenderingContext2D):StaticCanvas;
	// function getContext():CanvasRenderingContext2D;
	function clear():StaticCanvas;
	function renderAll(?allOnTop:Bool):StaticCanvas;
	function renderTop():StaticCanvas;
	function getCenter():{ var top : Float; var left : Float; };
	function centerObjectH(object:Dynamic):StaticCanvas;
	function centerObjectV(object:Dynamic):StaticCanvas;
	function centerObject(object:Dynamic):StaticCanvas;
	function toDatalessJSON(?propertiesToInclude:Array<Dynamic>):String;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toDatalessObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	var svgViewportTransformation : Bool;
	// function toSVG(options:IToSVGOptions, ?reviver:haxe.Constraints.Function):String;
	function sendToBack(object:Dynamic):StaticCanvas;
	function bringToFront(object:Dynamic):StaticCanvas;
	function sendBackwards(object:Dynamic):StaticCanvas;
	function bringForward(object:Dynamic):StaticCanvas;
	function moveTo(object:Dynamic, index:Float):StaticCanvas;
	function dispose():StaticCanvas;
	function toString():String;
	// function toDataURL(?options:IDataURLOptions):String;
	@:overload(function(methodName:String):Bool { })
	function supports(methodName:String):Bool;
	function loadFromJSON(json:haxe.extern.EitherType<String, Dynamic>, callback:haxe.Constraints.Function, ?reviver:haxe.Constraints.Function):Canvas;
	function clone(callback:StaticCanvas -> Dynamic, ?properties:Array<Dynamic>):Void;
	function cloneWithoutData(callback:StaticCanvas -> Dynamic):Void;
	function onBeforeScaleRotate(target:Dynamic):Void;
	function straightenObject(object:Dynamic):StaticCanvas;
	function fxStraightenObject(object:Dynamic):StaticCanvas;
	static var EMPTY_JSON : String;
	static function toJSON(?propertiesToInclude:Array<Dynamic>):String;
}