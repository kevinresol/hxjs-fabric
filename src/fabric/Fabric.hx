typedef IDataURLOptions = {
	@:optional
	var format : String;
	@:optional
	var quality : Float;
	@:optional
	var multiplier : Float;
	@:optional
	var left : Float;
	@:optional
	var top : Float;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
};
typedef IEvent = {
	var e : Event;
	@:optional
	var target : Dynamic;
};
typedef IFillOptions = {
	var source : haxe.extern.EitherType<String, HTMLImageElement>;
	@:optional
	var repeat : String;
	@:optional
	var offsetX : Float;
	@:optional
	var offsetY : Float;
};
typedef IToSVGOptions = {
	var suppressPreamble : Bool;
	var viewBox : IViewBox;
	var encoding : String;
};
typedef IViewBox = {
	var x : Float;
	var y : Float;
	var width : Float;
	var height : Float;
};
typedef ICollection<T> = {
	function add(object:haxe.extern.Rest<Dynamic>):T;
	function insertAt(object:Dynamic, index:Float, nonSplicing:Bool):T;
	function remove(object:haxe.extern.Rest<Dynamic>):T;
	function forEachObject(callback:Dynamic -> Float -> Array<Dynamic> -> Dynamic, ?context:Dynamic):T;
	function getObjects(?type:String):Array<Dynamic>;
	function item(index:Float):T;
	function isEmpty():Bool;
	function size():Float;
	function contains(object:Dynamic):Bool;
	function complexity():Float;
};
typedef IObservable<T> = {
	@:overload(function(eventName:{ }):T { })
	function on(eventName:String, handler:IEvent -> Dynamic):T;
	function trigger(eventName:String, ?options:Dynamic):T;
	function off(?eventName:haxe.extern.EitherType<String, Dynamic>, ?handler:IEvent -> Dynamic):T;
};
typedef ICanvasAnimation<T> = {
	var FX_DURATION : Float;
	function fxCenterObjectH(object:Dynamic, ?callbacks:{ var onComplete : haxe.Constraints.Function; var onChange : haxe.Constraints.Function; }):T;
	function fxCenterObjectV(object:Dynamic, ?callbacks:{ var onComplete : haxe.Constraints.Function; var onChange : haxe.Constraints.Function; }):T;
	function fxRemove(object:Dynamic, ?callbacks:{ var onComplete : haxe.Constraints.Function; var onChange : haxe.Constraints.Function; }):T;
};
typedef IObjectAnimation<T> = {
	@:overload(function(properties:Dynamic, ?options:IAnimationOptions):Dynamic { })
	function animate(property:String, value:haxe.extern.EitherType<Float, String>, ?options:IAnimationOptions):Dynamic;
};
typedef IAnimationOptions = {
	@:optional
	var from : haxe.extern.EitherType<String, Float>;
	@:optional
	var duration : Float;
	@:optional
	var onChange : haxe.Constraints.Function;
	@:optional
	var onComplete : haxe.Constraints.Function;
	@:optional
	var easing : haxe.Constraints.Function;
	@:optional
	var by : Float;
};
extern class Color {
	function new(?color:String):Void;
	function getSource():Array<Float>;
	function setSource(source:Array<Float>):Void;
	function toRgb():String;
	function toRgba():String;
	function toHsl():String;
	function toHsla():String;
	function toHex():String;
	function getAlpha():Float;
	function setAlpha(alpha:Float):Void;
	function toGrayscale():Color;
	function toBlackWhite(threshold:Float):Color;
	function overlayWith(otherColor:haxe.extern.EitherType<String, Color>):Color;
	static function fromRgb(color:String):Color;
	static function fromRgba(color:String):Color;
	static function sourceFromRgb(color:String):Array<Float>;
	static function fromHsl(color:String):Color;
	static function fromHsla(color:String):Color;
	static function sourceFromHsl(color:String):Array<Float>;
	static function fromHex(color:String):Color;
	static function sourceFromHex(color:String):Array<Float>;
	static function fromSource(source:Array<Float>):Color;
}
typedef IGradientOptions = {
	@:optional
	var type : String;
	@:optional
	var x1 : Float;
	@:optional
	var y1 : Float;
	@:optional
	var x2 : Float;
	@:optional
	var y2 : Float;
	@:optional
	var r1 : Float;
	@:optional
	var r2 : Float;
	@:optional
	var colorStops : Dynamic;
};
typedef IGradient = {
	>IGradientOptions,
	function addColorStop(colorStop:Dynamic):IGradient;
	function toObject():Dynamic;
	function toSVG(object:Dynamic, ?normalize:Bool):String;
	function toLive(ctx:CanvasRenderingContext2D, ?object:PathGroup):CanvasGradient;
};
typedef IGrandientStatic = {
	function new(?options:IGradientOptions):IGradient;
	function fromElement(el:SVGGradientElement, instance:Dynamic):IGradient;
	function fromObject(obj:Dynamic, options:Array<Dynamic>):IGradient;
};
extern class Intersection {
	function new(?status:String):Void;
	function appendPoint(point:Point):Void;
	function appendPoints(points:Array<Point>):Void;
	static function intersectPolygonPolygon(points1:Array<Point>, points2:Array<Point>):Intersection;
	static function intersectLinePolygon(a1:Point, a2:Point, points:Array<Point>):Intersection;
	static function intersectLineLine(a1:Point, a2:Point, b1:Point, b2:Point):Intersection;
	static function intersectPolygonRectangle(points:Array<Point>, r1:Float, r2:Float):Intersection;
}
typedef IPatternOptions = {
	var repeat : String;
	var offsetX : Float;
	var offsetY : Float;
	var source : haxe.extern.EitherType<String, HTMLImageElement>;
};
typedef Pattern = {
	>IPatternOptions,
};
extern class Pattern {
	var repeat : String;
	var offsetX : Float;
	var offsetY : Float;
	var source : haxe.extern.EitherType<String, HTMLImageElement>;
	function new(?options:IPatternOptions):Void;
	function initialise(?options:IPatternOptions):Pattern;
	function toLive(ctx:CanvasRenderingContext2D):Pattern;
	function toObject():Dynamic;
	function toSVG(object:Dynamic):String;
}
extern class Point {
	var x : Float;
	var y : Float;
	function new(x:Float, y:Float):Void;
	function add(that:Point):Point;
	function addEquals(that:Point):Point;
	function scalarAdd(scalar:Float):Point;
	function scalarAddEquals(scalar:Float):Point;
	function subtract(that:Point):Point;
	function subtractEquals(that:Point):Point;
	function scalarSubtract(scalar:Float):Point;
	function scalarSubtractEquals(scalar:Float):Point;
	function multiply(scalar:Float):Point;
	function multiplyEquals(scalar:Float):Point;
	function divide(scalar:Float):Point;
	function divideEquals(scalar:Float):Point;
	function eq(that:Point):Point;
	function lt(that:Point):Point;
	function lte(that:Point):Point;
	function gt(that:Point):Point;
	function gte(that:Point):Point;
	function lerp(that:Point, t:Float):Point;
	function distanceFrom(that:Point):Float;
	function midPointFrom(that:Point):Point;
	function min(that:Point):Point;
	function max(that:Point):Point;
	function toString():String;
	function setXY(x:Float, y:Float):Point;
	function setFromPoint(that:Point):Point;
	function swap(that:Point):Point;
}
typedef IShadowOptions = {
	var affectStrike : Bool;
	var blur : Float;
	var color : String;
	var includeDefaultValues : Bool;
	var offsetX : Float;
	var offsetY : Float;
};
typedef IShadow = {
	>IShadowOptions,
};
extern class IShadow {
	function new(?options:IShadowOptions):Void;
	function initialize(?options:haxe.extern.EitherType<IShadowOptions, String>):IShadow;
	function toObject():Dynamic;
	function toString():String;
	function toSVG(object:Dynamic):String;
	var reOffsetsAndBlur : js.RegExp;
}
typedef ICanvasDimensions = {
	var width : Float;
	var height : Float;
};
typedef ICanvasDimensionsOptions = {
	@:optional
	var backstoreOnly : Bool;
	@:optional
	var cssOnly : Bool;
};
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
	var backgroundImage : haxe.extern.EitherType<Image, String>;
	@:optional
	var backgroundImageOpacity : Float;
	@:optional
	var backgroundImageStretch : Float;
	@:optional
	function clipTo(context:CanvasRenderingContext2D):Void;
	@:optional
	var controlsAboveOverlay : Bool;
	@:optional
	var includeDefaultValues : Bool;
	@:optional
	var overlayColor : haxe.extern.EitherType<String, Pattern>;
	@:optional
	var overlayImage : Image;
	@:optional
	var overlayImageLeft : Float;
	@:optional
	var overlayImageTop : Float;
	@:optional
	var renderOnAddRemove : Bool;
	@:optional
	var stateful : Bool;
};
typedef StaticCanvas = {
	>IObservable<StaticCanvas>,
	>IStaticCanvasOptions,
	>ICollection<StaticCanvas>,
	>ICanvasAnimation<StaticCanvas>,
};
extern class StaticCanvas {
	function new(element:haxe.extern.EitherType<HTMLCanvasElement, String>, ?options:ICanvasOptions):Void;
	function calcOffset():StaticCanvas;
	function setOverlayImage(image:haxe.extern.EitherType<Image, String>, callback:haxe.Constraints.Function, ?options:IObjectOptions):StaticCanvas;
	function setBackgroundImage(image:haxe.extern.EitherType<Image, String>, callback:haxe.Constraints.Function, ?options:IObjectOptions):StaticCanvas;
	function setOverlayColor(overlayColor:haxe.extern.EitherType<String, Pattern>, callback:haxe.Constraints.Function):StaticCanvas;
	function setBackgroundColor(backgroundColor:haxe.extern.EitherType<String, Pattern>, callback:haxe.Constraints.Function):StaticCanvas;
	function getWidth():Float;
	function getHeight():Float;
	function setWidth(value:haxe.extern.EitherType<Float, String>, ?options:ICanvasDimensionsOptions):StaticCanvas;
	function setHeight(value:haxe.extern.EitherType<Float, String>, ?options:ICanvasDimensionsOptions):StaticCanvas;
	function setDimensions(dimensions:ICanvasDimensions, ?options:ICanvasDimensionsOptions):StaticCanvas;
	function getZoom():Float;
	function setViewportTransform(vpt:Array<Float>):StaticCanvas;
	function zoomToPoint(point:Point, value:Float):StaticCanvas;
	function setZoom(value:Float):StaticCanvas;
	function absolutePan(point:Point):StaticCanvas;
	function relativePan(point:Point):StaticCanvas;
	function getElement():HTMLCanvasElement;
	function getActiveObject():Dynamic;
	function getActiveGroup():Group;
	function clearContext(ctx:CanvasRenderingContext2D):StaticCanvas;
	function getContext():CanvasRenderingContext2D;
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
	function toSVG(options:IToSVGOptions, ?reviver:haxe.Constraints.Function):String;
	function sendToBack(object:Dynamic):StaticCanvas;
	function bringToFront(object:Dynamic):StaticCanvas;
	function sendBackwards(object:Dynamic):StaticCanvas;
	function bringForward(object:Dynamic):StaticCanvas;
	function moveTo(object:Dynamic, index:Float):StaticCanvas;
	function dispose():StaticCanvas;
	function toString():String;
	function toDataURL(?options:IDataURLOptions):String;
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
typedef Canvas = {
	>StaticCanvas,
};
typedef Canvas = {
	>ICanvasOptions,
};
extern class Canvas {
	function new(element:haxe.extern.EitherType<HTMLCanvasElement, String>, ?options:ICanvasOptions):Void;
	var _objects : Array<Dynamic>;
	function containsPoint(e:Event, target:Dynamic):Bool;
	function deactivateAll():Canvas;
	function deactivateAllWithDispatch(?e:Event):Canvas;
	function discardActiveGroup(?e:Event):Canvas;
	function discardActiveObject(?e:Event):Canvas;
	function drawControls(ctx:CanvasRenderingContext2D):Void;
	function findTarget(e:MouseEvent, skipGroup:Bool):Canvas;
	function getActiveGroup():Group;
	function getActiveObject():Dynamic;
	function getPointer(e:Event, ?ignoreZoom:Bool, ?upperCanvasEl:CanvasRenderingContext2D):{ var x : Float; var y : Float; };
	function getSelectionContext():CanvasRenderingContext2D;
	function getSelectionElement():HTMLCanvasElement;
	function isTargetTransparent(target:Dynamic, x:Float, y:Float):Bool;
	function setActiveGroup(group:Group, ?e:Event):Canvas;
	function setActiveObject(object:Dynamic, ?e:Event):Canvas;
	function setCursor(value:String):Void;
	function removeListeners():Void;
	static var EMPTY_JSON : String;
	static function supports(methodName:String):Bool;
	static function toJSON(?propertiesToInclude:Array<Dynamic>):String;
}
typedef ICircleOptions = {
	>IObjectOptions,
	@:optional
	var radius : Float;
	@:optional
	var startAngle : Float;
	@:optional
	var endAngle : Float;
};
typedef Circle = {
	>Dynamic,
	>ICircleOptions,
};
extern class Circle {
	function new(?options:ICircleOptions):Void;
	function complexity():Float;
	function getRadiusX():Float;
	function getRadiusY():Float;
	function setRadius(value:Float):Float;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toSVG(?reviver:haxe.Constraints.Function):String;
	static var ATTRIBUTE_NAMES : Array<String>;
	static function fromElement(element:SVGElement, options:ICircleOptions):Circle;
	static function fromObject(object:Dynamic):Circle;
}
typedef IEllipseOptions = {
	>IObjectOptions,
	@:optional
	var rx : Float;
	@:optional
	var ry : Float;
};
typedef Ellipse = {
	>Dynamic,
	>IEllipseOptions,
};
extern class Ellipse {
	function new(?options:IEllipseOptions):Void;
	function getRx():Float;
	function getRy():Float;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toSVG(?reviver:haxe.Constraints.Function):String;
	function complexity():Float;
	static var ATTRIBUTE_NAMES : Array<String>;
	static function fromElement(element:SVGElement, ?options:IEllipseOptions):Ellipse;
	static function fromObject(object:Dynamic):Ellipse;
}
typedef Group = {
	>Dynamic,
	>ICollection<Group>,
};
extern class Group {
	function new(?items:Array<Dynamic>, ?options:IObjectOptions):Void;
	function activateAllObjects():Group;
	function addWithUpdate(object:Dynamic):Group;
	function containsPoint(point:Point):Bool;
	function destroy():Group;
	function get(prop:String):Dynamic;
	function hasMoved():Bool;
	function removeWithUpdate(object:Dynamic):Group;
	function render(ctx:CanvasRenderingContext2D):Void;
	function remove(object:haxe.extern.Rest<Dynamic>):Group;
	function saveCoords():Group;
	function setObjectsCoords():Group;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toString():String;
	function toSVG(?reviver:haxe.Constraints.Function):String;
	static function fromObject(object:Dynamic, callback:Group -> Dynamic):Void;
}
typedef IImageOptions = {
	>IObjectOptions,
	var crossOrigin : String;
	var alignX : String;
	var alignY : String;
	var meetOrSlice : String;
	var filters : Array<IBaseFilter>;
};
typedef Image = {
	>Dynamic,
	>IImageOptions,
};
extern class Image {
	function new(element:HTMLImageElement, objObjects:IObjectOptions):Void;
	function initialize(?element:haxe.extern.EitherType<String, HTMLImageElement>, ?options:IImageOptions):Void;
	function applyFilters(callback:haxe.Constraints.Function):Void;
	function clone(?callback:haxe.Constraints.Function, ?propertiesToInclude:Array<Dynamic>):Dynamic;
	function complexity():Float;
	function getElement():HTMLImageElement;
	function getOriginalSize():{ var width : Float; var height : Float; };
	function getSrc():String;
	function render(ctx:CanvasRenderingContext2D, noTransform:Bool):Void;
	function setElement(element:HTMLImageElement, callback:haxe.Constraints.Function, options:IImageOptions):Image;
	function setCrossOrigin(value:String):Image;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toString():String;
	function toSVG(?reviver:haxe.Constraints.Function):String;
	function setSrc(src:String, ?callback:haxe.Constraints.Function, ?options:IImageOptions):Image;
	static function fromURL(url:String, ?callback:Image -> Dynamic, ?objObjects:IObjectOptions):Image;
	static function fromObject(object:Dynamic, callback:Image -> { }):Void;
	static function fromElement(element:SVGElement, callback:haxe.Constraints.Function, ?options:IImageOptions):Void;
	static var CSS_CANVAS : String;
	static var filters : IAllFilters;
}
typedef ILineOptions = {
	>IObjectOptions,
	var x1 : Float;
	var x2 : Float;
	var y1 : Float;
	var y2 : Float;
};
typedef Line = {
	>Dynamic,
	>ILineOptions,
};
extern class Line {
	function new(?points:Array<Float>, ?objObjects:IObjectOptions):Void;
	function complexity():Float;
	function initialize(?points:Array<Float>, ?options:ILineOptions):Line;
	function toObject(propertiesToInclude:Array<Dynamic>):Dynamic;
	function toSVG(?reviver:haxe.Constraints.Function):String;
	static var ATTRIBUTE_NAMES : Array<String>;
	static function fromElement(element:SVGElement, ?options:ILineOptions):Line;
	static function fromObject(object:Dynamic):Line;
}
typedef IObjectOptions = {
	@:optional
	var type : String;
	@:optional
	var originX : String;
	@:optional
	var originY : String;
	@:optional
	var top : Float;
	@:optional
	var left : Float;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var scaleX : Float;
	@:optional
	var scaleY : Float;
	@:optional
	var flipX : Bool;
	@:optional
	var flipY : Bool;
	@:optional
	var opacity : Float;
	@:optional
	var angle : Float;
	@:optional
	var cornerSize : Float;
	@:optional
	var transparentCorners : Bool;
	@:optional
	var hoverCursor : String;
	@:optional
	var padding : Float;
	@:optional
	var borderColor : String;
	@:optional
	var cornerColor : String;
	@:optional
	var centeredScaling : Bool;
	@:optional
	var centeredRotation : Bool;
	@:optional
	var fill : String;
	@:optional
	var fillRule : String;
	@:optional
	var globalCompositeOperation : String;
	@:optional
	var backgroundColor : String;
	@:optional
	var stroke : String;
	@:optional
	var strokeWidth : Float;
	@:optional
	var strokeDashArray : Array<Dynamic>;
	@:optional
	var strokeLineCap : String;
	@:optional
	var strokeLineJoin : String;
	@:optional
	var strokeMiterLimit : Float;
	@:optional
	var shadow : haxe.extern.EitherType<IShadow, String>;
	@:optional
	var borderOpacityWhenMoving : Float;
	@:optional
	var borderScaleFactor : Float;
	@:optional
	var transformMatrix : Array<Dynamic>;
	@:optional
	var minScaleLimit : Float;
	@:optional
	var selectable : Bool;
	@:optional
	var evented : Bool;
	@:optional
	var visible : Bool;
	@:optional
	var hasControls : Bool;
	@:optional
	var hasBorders : Bool;
	@:optional
	var hasRotatingPoint : Bool;
	@:optional
	var rotatingPointOffset : Float;
	@:optional
	var perPixelTargetFind : Bool;
	@:optional
	var includeDefaultValues : Bool;
	@:optional
	var clipTo : haxe.Constraints.Function;
	@:optional
	var lockMovementX : Bool;
	@:optional
	var lockMovementY : Bool;
	@:optional
	var lockRotation : Bool;
	@:optional
	var lockScalingX : Bool;
	@:optional
	var lockScalingY : Bool;
	@:optional
	var lockUniScaling : Bool;
	@:optional
	var lockScalingFlip : Bool;
	@:optional
	var name : String;
	@:optional
	var data : Dynamic;
};
typedef Object = {
	>IObservable<Dynamic>,
	>IObjectOptions,
	>IObjectAnimation<Dynamic>,
};
extern class Object {
	function getCurrentWidth():Float;
	function getCurrentHeight():Float;
	function getAngle():Float;
	@:overload(function(angle:Float):Dynamic { })
	function setAngle(value:Float):Dynamic;
	function getBorderColor():String;
	function setBorderColor(value:String):Dynamic;
	function getBorderScaleFactor():Float;
	function getCornersize():Float;
	function setCornersize(value:Float):Dynamic;
	function getFill():String;
	function setFill(value:String):Dynamic;
	function getFillRule():String;
	function setFillRule(value:String):Dynamic;
	function getFlipX():Bool;
	function setFlipX(value:Bool):Dynamic;
	function getFlipY():Bool;
	function setFlipY(value:Bool):Dynamic;
	function getHeight():Float;
	function setHeight(value:Float):Dynamic;
	function getLeft():Float;
	function setLeft(value:Float):Dynamic;
	function getOpacity():Float;
	function setOpacity(value:Float):Dynamic;
	var overlayFill : String;
	function getOverlayFill():String;
	function setOverlayFill(value:String):Dynamic;
	function getScaleX():Float;
	function setScaleX(value:Float):Dynamic;
	function getScaleY():Float;
	function setScaleY(value:Float):Dynamic;
	@:overload(function(?options:String):Dynamic { })
	@:overload(function(options:IShadow):Dynamic { })
	function setShadow(options:Dynamic):Dynamic;
	function getShadow():Dynamic;
	var stateProperties : Array<Dynamic>;
	function getTop():Float;
	function setTop(value:Float):Dynamic;
	function getWidth():Float;
	function setWidth(value:Float):Dynamic;
	@:overload(function(options:Dynamic):Void { })
	function setOptions(options:Dynamic):Void;
	function transform(ctx:CanvasRenderingContext2D, fromLeft:Bool):Void;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toDatalessObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toString():String;
	function get(property:String):Dynamic;
	@:overload(function(key:Dynamic):Dynamic { })
	function set(key:String, value:haxe.extern.EitherType<Dynamic, haxe.Constraints.Function>):Dynamic;
	function toggle(property:String):Dynamic;
	@:overload(function(value:String):Dynamic { })
	function setSourcePath(value:String):Dynamic;
	function getViewportTransform():Bool;
	function render(ctx:CanvasRenderingContext2D, ?noTransform:Bool):Void;
	function clone(callback:haxe.Constraints.Function, ?propertiesToInclude:Array<Dynamic>):Dynamic;
	function cloneAsImage(callback:Image -> Dynamic):Dynamic;
	function toDataURL(options:IDataURLOptions):String;
	function isType(type:String):Bool;
	function complexity():Float;
	function toJSON(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function setGradient(property:String, options:IGradientOptions):Dynamic;
	function setPatternFill(options:IFillOptions):Dynamic;
	function setColor(color:String):Dynamic;
	function rotate(angle:Float):Dynamic;
	function centerH():Void;
	function centerV():Void;
	function center():Void;
	function remove():Dynamic;
	function getLocalPointer(e:Event, pointer:Dynamic):Dynamic;
	function getSvgStyles():String;
	function getSvgTransform():String;
	function getSvgTransformMatrix():String;
	function hasStateChanged():Bool;
	function saveState(?options:{ var stateProperties : Array<Dynamic>; }):Dynamic;
	function setupState():Dynamic;
	function straighten():Dynamic;
	function fxStraighten(callbacks:{ @:optional
	var onComplete : haxe.Constraints.Function; var onChange : haxe.Constraints.Function; }):Dynamic;
	function bringForward(?intersecting:Bool):Dynamic;
	function bringToFront():Dynamic;
	function sendBackwards(?intersecting:Bool):Dynamic;
	function sendToBack():Dynamic;
	function moveTo(index:Float):Dynamic;
	function translateToCenterPoint(point:Point, originX:String, originY:String):Point;
	function translateToOriginPoint(center:Point, originX:String, originY:String):Point;
	function getCenterPoint():Point;
	function getPointByOrigin():Point;
	function toLocalPoint(point:Point, originX:String, originY:String):Point;
	function setPositionByOrigin(pos:Point, originX:String, originY:String):Void;
	function adjustPosition(to:String):Void;
	function drawBorders(context:CanvasRenderingContext2D):Dynamic;
	function drawCorners(context:CanvasRenderingContext2D):Dynamic;
	function isControlVisible(controlName:String):Bool;
	function setControlVisible(controlName:String, visible:Bool):Dynamic;
	function setControlsVisibility(?options:{ @:optional
	var bl : Bool; @:optional
	var br : Bool; @:optional
	var mb : Bool; @:optional
	var ml : Bool; @:optional
	var mr : Bool; @:optional
	var mt : Bool; @:optional
	var tl : Bool; @:optional
	var tr : Bool; @:optional
	var mtr : Bool; }):Dynamic;
	function setCoords():Dynamic;
	function getBoundingRect():{ var left : Float; var top : Float; var width : Float; var height : Float; };
	function isContainedWithinObject(other:Dynamic):Bool;
	function isContainedWithinRect(pointTL:Dynamic, pointBR:Dynamic):Bool;
	function containsPoint(point:Point):Bool;
	function scale(value:Float):Dynamic;
	function scaleToHeight(value:Float):Dynamic;
	function scaleToWidth(value:Float):Dynamic;
	function intersectsWithObject(other:Dynamic):Bool;
	function intersectsWithRect(pointTL:Dynamic, pointBR:Dynamic):Bool;
}
typedef IPathOptions = {
	>IObjectOptions,
	@:optional
	var path : Array<Dynamic>;
	@:optional
	var minX : Float;
	@:optional
	var minY : Float;
};
typedef IPath = {
	>Dynamic,
	>IPathOptions,
};
extern class IPath {
	function new(?path:haxe.extern.EitherType<String, Array<Dynamic>>, ?options:IPathOptions):Void;
	function initialize(?path:Array<Dynamic>, ?options:IPathOptions):IPath;
	function complexity():Float;
	function render(ctx:CanvasRenderingContext2D, noTransform:Bool):Void;
	function toDatalessObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toString():String;
	function toSVG(?reviver:haxe.Constraints.Function):String;
	static function fromElement(element:SVGElement, callback:IPath -> Dynamic, ?options:IPathOptions):Void;
	static function fromObject(object:Dynamic, callback:IPath -> Dynamic):Void;
}
extern class PathGroup extends Dynamic {
	function new(paths:Array<IPath>, ?options:IObjectOptions):Void;
	function initialize(paths:Array<IPath>, ?options:IObjectOptions):Void;
	function complexity():Float;
	function isSameColor():Bool;
	function render(ctx:CanvasRenderingContext2D):Void;
	function toDatalessObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toString():String;
	function toSVG(?reviver:haxe.Constraints.Function):String;
	function getObjects():Array<IPath>;
	@:overload(function(object:Dynamic, callback:PathGroup -> Dynamic):Void { })
	static function fromObject(object:Dynamic):PathGroup;
}
typedef IPolygonOptions = {
	>IObjectOptions,
	@:optional
	var points : Array<Point>;
	@:optional
	var minX : Float;
	@:optional
	var minY : Float;
};
typedef Polygon = {
	>IPolygonOptions,
};
extern class Polygon extends Dynamic {
	function new(points:Array<{ var x : Float; var y : Float; }>, ?options:IObjectOptions, ?skipOffset:Bool):Void;
	function complexity():Float;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toSVG(?reviver:haxe.Constraints.Function):String;
	static var ATTRIBUTE_NAMES : Array<String>;
	static function fromElement(element:SVGElement, ?options:IPolygonOptions):Polygon;
	static function fromObject(object:Dynamic):Polygon;
}
typedef IPolylineOptions = {
	>IObjectOptions,
	@:optional
	var points : Array<Point>;
	@:optional
	var minX : Float;
	@:optional
	var minY : Float;
};
typedef Polyline = {
	>IPolylineOptions,
};
extern class Polyline extends Dynamic {
	function new(points:Array<{ var x : Float; var y : Float; }>, ?options:IPolylineOptions):Void;
	function initialize(points:Array<Point>, ?options:IPolylineOptions):Void;
	function complexity():Float;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toSVG(?reviver:haxe.Constraints.Function):String;
	static var ATTRIBUTE_NAMES : Array<String>;
	static function fromElement(element:SVGElement, ?options:IPolylineOptions):Polyline;
	static function fromObject(object:Dynamic):Polyline;
}
typedef IRectOptions = {
	>IObjectOptions,
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var rx : Float;
	@:optional
	var ry : Float;
};
typedef Rect = {
	>IRectOptions,
};
extern class Rect extends Dynamic {
	// IObjectOptions
	@:optional
	var type : String;
	@:optional
	var originX : String;
	@:optional
	var originY : String;
	@:optional
	var top : Float;
	@:optional
	var left : Float;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var scaleX : Float;
	@:optional
	var scaleY : Float;
	@:optional
	var flipX : Bool;
	@:optional
	var flipY : Bool;
	@:optional
	var opacity : Float;
	@:optional
	var angle : Float;
	@:optional
	var cornerSize : Float;
	@:optional
	var transparentCorners : Bool;
	@:optional
	var hoverCursor : String;
	@:optional
	var padding : Float;
	@:optional
	var borderColor : String;
	@:optional
	var cornerColor : String;
	@:optional
	var centeredScaling : Bool;
	@:optional
	var centeredRotation : Bool;
	@:optional
	var fill : String;
	@:optional
	var fillRule : String;
	@:optional
	var globalCompositeOperation : String;
	@:optional
	var backgroundColor : String;
	@:optional
	var stroke : String;
	@:optional
	var strokeWidth : Float;
	@:optional
	var strokeDashArray : Array<Dynamic>;
	@:optional
	var strokeLineCap : String;
	@:optional
	var strokeLineJoin : String;
	@:optional
	var strokeMiterLimit : Float;
	@:optional
	var shadow : haxe.extern.EitherType<IShadow, String>;
	@:optional
	var borderOpacityWhenMoving : Float;
	@:optional
	var borderScaleFactor : Float;
	@:optional
	var transformMatrix : Array<Dynamic>;
	@:optional
	var minScaleLimit : Float;
	@:optional
	var selectable : Bool;
	@:optional
	var evented : Bool;
	@:optional
	var visible : Bool;
	@:optional
	var hasControls : Bool;
	@:optional
	var hasBorders : Bool;
	@:optional
	var hasRotatingPoint : Bool;
	@:optional
	var rotatingPointOffset : Float;
	@:optional
	var perPixelTargetFind : Bool;
	@:optional
	var includeDefaultValues : Bool;
	@:optional
	var clipTo : haxe.Constraints.Function;
	@:optional
	var lockMovementX : Bool;
	@:optional
	var lockMovementY : Bool;
	@:optional
	var lockRotation : Bool;
	@:optional
	var lockScalingX : Bool;
	@:optional
	var lockScalingY : Bool;
	@:optional
	var lockUniScaling : Bool;
	@:optional
	var lockScalingFlip : Bool;
	@:optional
	var name : String;
	@:optional
	var data : Dynamic;
	// IRectOptions
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var rx : Float;
	@:optional
	var ry : Float;
	function new(?options:IRectOptions):Void;
	function initialize(?points:Array<Float>, ?options:Dynamic):Rect;
	function complexity():Float;
	function toObject(propertiesToInclude:Array<Dynamic>):Dynamic;
	function toSVG(?reviver:haxe.Constraints.Function):String;
	static var ATTRIBUTE_NAMES : Array<String>;
	static function fromElement(element:SVGElement, ?options:IRectOptions):Rect;
	static function fromObject(object:Dynamic):Rect;
}
typedef ITextOptions = {
	>IObjectOptions,
	@:optional
	var fontSize : Float;
	@:optional
	var fontWeight : haxe.extern.EitherType<Float, String>;
	@:optional
	var fontFamily : String;
	@:optional
	var textDecoration : String;
	@:optional
	var textAlign : String;
	@:optional
	var fontStyle : String;
	@:optional
	var lineHeight : Float;
	@:optional
	var stroke : String;
	@:optional
	var shadow : haxe.extern.EitherType<IShadow, String>;
	@:optional
	var textBackgroundColor : String;
	@:optional
	var path : String;
	@:optional
	var useNative : Bool;
	@:optional
	var text : String;
};
typedef Text = {
	>ITextOptions,
};
extern class Text extends Dynamic {
	function new(text:String, ?options:ITextOptions):Void;
	function complexity():Float;
	function toString():String;
	function render(ctx:CanvasRenderingContext2D, noTransform:Bool):Void;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toSVG(?reviver:haxe.Constraints.Function):String;
	function getFontSize():Float;
	function setFontSize(fontSize:Float):Text;
	function getFontWeight():haxe.extern.EitherType<Float, String>;
	function setFontWeight(fontWeight:haxe.extern.EitherType<String, Float>):Text;
	function getFontFamily():String;
	function setFontFamily(fontFamily:String):Text;
	function getText():String;
	function setText(text:String):Text;
	function getTextDecoration():String;
	function setTextDecoration(textDecoration:String):Text;
	function getFontStyle():String;
	function setFontStyle(fontStyle:String):Text;
	function getLineHeight():Float;
	function setLineHeight(lineHeight:Float):Text;
	function getTextAlign():String;
	function setTextAlign(textAlign:String):Text;
	function getTextBackgroundColor():String;
	function setTextBackgroundColor(textBackgroundColor:String):Text;
	static var ATTRIBUTE_NAMES : Array<String>;
	static var DEFAULT_SVG_FONT_SIZE : Float;
	static function fromElement(element:SVGElement, ?options:ITextOptions):Text;
	static function fromObject(object:Dynamic):Text;
}
typedef IITextOptions = {
	>IObjectOptions,
	>ITextOptions,
	@:optional
	var selectionStart : Float;
	@:optional
	var selectionEnd : Float;
	@:optional
	var selectionColor : String;
	@:optional
	var isEditing : Bool;
	@:optional
	var editable : Bool;
	@:optional
	var editingBorderColor : String;
	@:optional
	var cursorWidth : Float;
	@:optional
	var cursorColor : String;
	@:optional
	var cursorDelay : Float;
	@:optional
	var cursorDuration : Float;
	@:optional
	var styles : Dynamic;
	@:optional
	var caching : Bool;
};
typedef IText = {
	>Text,
	>IITextOptions,
};
extern class IText extends Dynamic {
	function new(text:String, ?options:IITextOptions):Void;
	function isEmptyStyles():Bool;
	function render(ctx:CanvasRenderingContext2D, noTransform:Bool):Void;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function setText(value:String):Text;
	function setSelectionStart(index:Float):Void;
	function setSelectionEnd(index:Float):Void;
	function getSelectionStyles(startIndex:Float, endIndex:Float):Dynamic;
	function setSelectionStyles(styles:Dynamic):Text;
	function renderCursorOrSelection():Void;
	function get2DCursorLocation(?selectionStart:Float):Void;
	function getCurrentCharStyle(lineIndex:Float, charIndex:Float):Dynamic;
	function getCurrentCharFontSize(lineIndex:Float, charIndex:Float):Float;
	function getCurrentCharColor(lineIndex:Float, charIndex:Float):String;
	function renderCursor(boundaries:Dynamic):Void;
	function renderSelection(chars:Array<String>, boundaries:Dynamic):Void;
	function initBehavior():Void;
	function initSelectedHandler():Void;
	function initAddedHandler():Void;
	function initRemovedHandler():Void;
	function initDelayedCursor(restart:Bool):Void;
	function abortCursorAnimation():Void;
	function selectAll():Void;
	function getSelectedText():String;
	function findWordBoundaryLeft(startFrom:Float):Float;
	function findWordBoundaryRight(startFrom:Float):Float;
	function findLineBoundaryLeft(startFrom:Float):Float;
	function findLineBoundaryRight(startFrom:Float):Float;
	function getNumNewLinesInSelectedText():Float;
	function searchWordBoundary(selectionStart:Float, direction:Float):Float;
	function selectWord(selectionStart:Float):Void;
	function selectLine(selectionStart:Float):Void;
	function enterEditing():IText;
	function initMouseMoveHandler():Void;
	function exitEditing():IText;
	function insertChars(_chars:String, ?useCopiedStyle:Bool):Void;
	function insertNewlineStyleObject(lineIndex:Float, charIndex:Float, isEndOfLine:Bool):Void;
	function insertCharStyleObject(lineIndex:Float, charIndex:Float, isEndOfLine:Bool):Void;
	function insertStyleObjects(_chars:String, isEndOfLine:Bool, ?useCopiedStyle:Bool):Void;
	function shiftLineStyles(lineIndex:Float, offset:Float):Void;
	function removeStyleObject(isBeginningOfLine:Bool, ?index:Float):Void;
	function insertNewline():Void;
	static function fromObject(object:Dynamic):IText;
}
typedef ITriangleOptions = {
	>IObjectOptions,
};
extern class Triangle extends Dynamic {
	function new(?options:ITriangleOptions):Void;
	function complexity():Float;
	function toSVG(?reviver:haxe.Constraints.Function):String;
	static function fromObject(object:Dynamic):Triangle;
}
typedef IAllFilters = {
	var BaseFilter : { function new(?options:Dynamic):IBaseFilter; };
	var Blend : { function new(?options:{ @:optional
	var color : String; @:optional
	var mode : String; @:optional
	var alpha : Float; @:optional
	var image : Image; }):IBlendFilter; function fromObject(object:Dynamic):IBlendFilter; };
	var Brightness : { function new(?options:{ var brightness : Float; }):IBrightnessFilter; function fromObject(object:Dynamic):IBrightnessFilter; };
	var Convolute : { function new(?options:{ @:optional
	var opaque : Bool; @:optional
	var matrix : Array<Float>; }):IConvoluteFilter; function fromObject(object:Dynamic):IConvoluteFilter; };
	var GradientTransparency : { function new(?options:{ @:optional
	var threshold : Float; }):IGradientTransparencyFilter; function fromObject(object:Dynamic):IGradientTransparencyFilter; };
	var Grayscale : { function new(?options:Dynamic):IGrayscaleFilter; function fromObject(object:Dynamic):IGrayscaleFilter; };
	var Invert : { function new(?options:Dynamic):IInvertFilter; function fromObject(object:Dynamic):IInvertFilter; };
	var Mask : { function new(?options:{ @:optional
	var mask : Image; var channel : Float; }):IMaskFilter; function fromObject(object:Dynamic):IMaskFilter; };
	var Multiply : { function new(?options:{ var color : String; }):IMultiplyFilter; function fromObject(object:Dynamic):IMultiplyFilter; };
	var Noise : { function new(?options:{ var noise : Float; }):INoiseFilter; function fromObject(object:Dynamic):INoiseFilter; };
	var Pixelate : { function new(?options:{ @:optional
	var blocksize : Float; }):IPixelateFilter; function fromObject(object:Dynamic):IPixelateFilter; };
	var RemoveWhite : { function new(?options:{ @:optional
	var threshold : Float; @:optional
	var distance : Float; }):IRemoveWhiteFilter; function fromObject(object:Dynamic):IRemoveWhiteFilter; };
	var Resize : { function new(?options:Dynamic):IResizeFilter; function fromObject(object:Dynamic):IResizeFilter; };
	var Sepia2 : { function new(?options:Dynamic):ISepia2Filter; function fromObject(object:Dynamic):ISepia2Filter; };
	var Sepia : { function new(?options:Dynamic):ISepiaFilter; function fromObject(object:Dynamic):ISepiaFilter; };
	var Tint : { function new(?options:{ @:optional
	var color : String; @:optional
	var opacity : Float; }):ITintFilter; function fromObject(object:Dynamic):ITintFilter; };
};
typedef IBaseFilter = {
	function setOptions(?options:Dynamic):Void;
	function toObject():Dynamic;
	function toJSON():String;
};
typedef IBlendFilter = {
	>IBaseFilter,
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IBrightnessFilter = {
	>IBaseFilter,
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IConvoluteFilter = {
	>IBaseFilter,
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IGradientTransparencyFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IGrayscaleFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IInvertFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IMaskFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IMultiplyFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef INoiseFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IPixelateFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IRemoveWhiteFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IResizeFilter = {
	var resizeType : String;
	var scaleX : Float;
	var scaleY : Float;
	var lanczosLobes : Float;
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef ISepiaFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef ISepia2Filter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef ITintFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
extern class BaseBrush {
	var color : String;
	var width : Float;
	var shadow : haxe.extern.EitherType<IShadow, String>;
	var strokeLineCap : String;
	var strokeLineJoin : String;
	var strokeDashArray : Array<Dynamic>;
	function setShadow(options:haxe.extern.EitherType<String, Dynamic>):BaseBrush;
}
extern class CircleBrush extends BaseBrush {
	var width : Float;
	function drawDot(pointer:Dynamic):Void;
	function addPoint(pointer:Dynamic):Point;
}
extern class SprayBrush extends BaseBrush {
	var width : Float;
	var density : Float;
	var dotWidth : Float;
	var dotWidthVariance : Float;
	var randomOpacity : Bool;
	var optimizeOverlapping : Bool;
	function addSprayChunk(pointer:Dynamic):Void;
}
extern class PatternBrush extends PencilBrush {
	function getPatternSrc():HTMLCanvasElement;
	function getPatternSrcFunction():String;
	function getPattern():Dynamic;
	function createPath(pathData:String):IPath;
}
extern class PencilBrush extends BaseBrush {
	function convertPointsToSVGPath(points:Array<{ var x : Float; var y : Float; }>, ?minX:Float, ?minY:Float):Array<String>;
	function createPath(pathData:String):IPath;
}
typedef IUtilAnimationOptions = {
	@:optional
	var startValue : Float;
	@:optional
	var endValue : Float;
	var byValue : Float;
	@:optional
	var duration : Float;
	@:optional
	var onChange : haxe.Constraints.Function;
	@:optional
	var onComplete : haxe.Constraints.Function;
	@:optional
	var easing : haxe.Constraints.Function;
};
typedef IUtilAnimation = {
	function animate(?options:IUtilAnimationOptions):Void;
	function requestAnimFrame(callback:haxe.Constraints.Function):Void;
};
typedef IUtilAnimEase = {
	var easeInBack : IUtilAminEaseFunction;
	var easeInBounce : IUtilAminEaseFunction;
	var easeInCirc : IUtilAminEaseFunction;
	var easeInCubic : IUtilAminEaseFunction;
	var easeInElastic : IUtilAminEaseFunction;
	var easeInExpo : IUtilAminEaseFunction;
	var easeInOutBack : IUtilAminEaseFunction;
	var easeInOutBounce : IUtilAminEaseFunction;
	var easeInOutCirc : IUtilAminEaseFunction;
	var easeInOutCubic : IUtilAminEaseFunction;
	var easeInOutElastic : IUtilAminEaseFunction;
	var easeInOutExpo : IUtilAminEaseFunction;
	var easeInOutQuad : IUtilAminEaseFunction;
	var easeInOutQuart : IUtilAminEaseFunction;
	var easeInOutQuint : IUtilAminEaseFunction;
	var easeInOutSine : IUtilAminEaseFunction;
	var easeInQuad : IUtilAminEaseFunction;
	var easeInQuart : IUtilAminEaseFunction;
	var easeInQuint : IUtilAminEaseFunction;
	var easeInSine : IUtilAminEaseFunction;
	var easeOutBack : IUtilAminEaseFunction;
	var easeOutBounce : IUtilAminEaseFunction;
	var easeOutCirc : IUtilAminEaseFunction;
	var easeOutCubic : IUtilAminEaseFunction;
	var easeOutElastic : IUtilAminEaseFunction;
	var easeOutExpo : IUtilAminEaseFunction;
	var easeOutQuad : IUtilAminEaseFunction;
	var easeOutQuart : IUtilAminEaseFunction;
	var easeOutQuint : IUtilAminEaseFunction;
	var easeOutSine : IUtilAminEaseFunction;
};
typedef IUtilArc = {
	function drawArc(ctx:CanvasRenderingContext2D, fx:Float, fy:Float, coords:Array<Float>):Void;
	function getBoundsOfArc(fx:Float, fy:Float, rx:Float, ry:Float, rot:Float, large:Float, sweep:Float, tx:Float, ty:Float):Array<Point>;
	function getBoundsOfCurve(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float):Array<Point>;
};
typedef IUtilDomEvent = {
	function getPointer(event:Event, upperCanvasEl:HTMLCanvasElement):Point;
	function addListener(element:HTMLElement, eventName:String, handler:haxe.Constraints.Function):Void;
	function removeListener(element:HTMLElement, eventName:String, handler:haxe.Constraints.Function):Void;
};
typedef IUtilDomMisc = {
	function getById(id:haxe.extern.EitherType<String, HTMLElement>):HTMLElement;
	function toArray(arrayLike:Dynamic):Array<Dynamic>;
	function makeElement(tagName:String, ?attributes:Dynamic):HTMLElement;
	function addClass(element:HTMLElement, classname:String):Void;
	function wrapElement(element:HTMLElement, wrapper:haxe.extern.EitherType<HTMLElement, String>, ?attributes:Dynamic):HTMLElement;
	function getScrollLeftTop(element:HTMLElement, upperCanvasEl:HTMLElement):{ var left : Float; var right : Float; };
	function getElementOffset(element:HTMLElement):{ var left : Float; var right : Float; };
	function getElementStyle(elment:HTMLElement, attr:String):String;
	function getScript(url:String, callback:haxe.Constraints.Function):Void;
	function makeElementUnselectable(element:HTMLElement):HTMLElement;
	function makeElementSelectable(element:HTMLElement):HTMLElement;
};
typedef IUtilDomRequest = {
	function request(url:String, ?options:{ @:optional
	var method : String; var onComplete : haxe.Constraints.Function; }):XMLHttpRequest;
};
typedef IUtilDomStyle = {
	function setStyle(element:HTMLElement, styles:Dynamic):HTMLElement;
};
typedef IUtilArray = {
	function invoke(array:Array<Dynamic>, method:String):Array<Dynamic>;
	function min(array:Array<Dynamic>, byProperty:String):Dynamic;
	function max(array:Array<Dynamic>, byProperty:String):Dynamic;
};
typedef IUtilClass = {
	@:overload(function(?properties:Dynamic):Void { })
	function createClass(parent:haxe.Constraints.Function, ?properties:Dynamic):Void;
};
typedef IUtilObject = {
	function extend(destination:Dynamic, source:Dynamic):Dynamic;
	function clone(object:Dynamic):Dynamic;
};
typedef IUtilString = {
	function camelize(string:String):String;
	function capitalize(string:String, firstLetterOnly:Bool):String;
	function escapeXml(string:String):String;
};
typedef IUtilMisc = {
	function removeFromArray(array:Array<Dynamic>, value:Dynamic):Array<Dynamic>;
	function getRandomInt(min:Float, max:Float):Float;
	function degreesToRadians(degrees:Float):Float;
	function radiansToDegrees(radians:Float):Float;
	function rotatePoint(point:Point, origin:Point, radians:Float):Point;
	function transformPoint(p:Point, t:Array<Dynamic>, ?ignoreOffset:Bool):Point;
	function invertTransform(t:Array<Dynamic>):Array<Dynamic>;
	function toFixed(number:Float, fractionDigits:Float):Float;
	function parseUnit(value:haxe.extern.EitherType<Float, String>, ?fontSize:Float):haxe.extern.EitherType<Float, String>;
	function falseFunction():Bool;
	function getKlass(type:String, namespace:String):Dynamic;
	function resolveNamespace(namespace:String):Dynamic;
	function loadImage(url:String, callback:HTMLImageElement -> { }, ?context:Dynamic, ?crossOrigin:Bool):Void;
	function enlivenObjects(objects:Array<Dynamic>, callback:haxe.Constraints.Function, namespace:String, ?reviver:haxe.Constraints.Function):Void;
	function groupSVGElements(elements:Array<Dynamic>, ?options:Dynamic, ?path:Dynamic):PathGroup;
	function populateWithProperties(source:Dynamic, destination:Dynamic, properties:Dynamic):Void;
	function drawDashedLine(ctx:CanvasRenderingContext2D, x:Float, y:Float, x2:Float, y2:Float, da:Array<Dynamic>):Void;
	function createCanvasElement(?canvasEl:HTMLCanvasElement):HTMLCanvasElement;
	function createImage():HTMLImageElement;
	function createAccessors(klass:Dynamic):Dynamic;
	function clipContext(receiver:Dynamic, ctx:CanvasRenderingContext2D):Void;
	function multiplyTransformMatrices(a:Array<Dynamic>, b:Array<Dynamic>):Array<Dynamic>;
	function getFunctionBody(fn:haxe.Constraints.Function):String;
	function isTransparent(ctx:CanvasRenderingContext2D, x:Float, y:Float, tolerance:Float):Bool;
};
typedef IUtil = {
	>IUtilAnimation,
	>IUtilArc,
	>IObservable<IUtil>,
	>IUtilDomEvent,
	>IUtilDomMisc,
	>IUtilDomRequest,
	>IUtilDomStyle,
	>IUtilClass,
	>IUtilMisc,
	var ease : IUtilAnimEase;
	var array : IUtilArray;
	var object : IUtilObject;
	var string : IUtilString;
};
extern class IndexTopLevel {
	static var isLikelyNode : Bool;
	static var isTouchSupported : Bool;
	static function createCanvasForNode(width:Float, height:Float):Canvas;
	static function createSVGRefElementsMarkup(canvas:StaticCanvas):String;
	static function createSVGFontFacesMarkup(objects:Array<Dynamic>):String;
	static function loadSVGFromString(string:String, callback:Array<Dynamic> -> Dynamic -> Void, ?reviver:haxe.Constraints.Function):Void;
	static function loadSVGFromURL(url:String, callback:Array<Dynamic> -> Dynamic -> Void, ?reviver:haxe.Constraints.Function):Void;
	static function getCSSRules(doc:SVGElement):Dynamic;
	static function parseElements(elements:Array<Dynamic>, callback:haxe.Constraints.Function, options:Dynamic, ?reviver:haxe.Constraints.Function):Void;
	static function parsePointsAttribute(points:String):Array<Dynamic>;
	static function parseStyleAttribute(element:SVGElement):Dynamic;
	static function parseElements(elements:Array<Dynamic>, callback:haxe.Constraints.Function, ?options:Dynamic, ?reviver:haxe.Constraints.Function):Void;
	static function parseAttributes(element:HTMLElement, attributes:Array<String>, ?svgUid:String):{ };
	static function getGradientDefs(doc:SVGElement):{ };
	static function parseFontDeclaration(value:String, oStyle:Dynamic):Void;
	static function parseSVGDocument(doc:SVGElement, callback:Array<Dynamic> -> Dynamic -> Void, ?reviver:haxe.Constraints.Function):Void;
	static function parseTransformAttribute(attributeValue:String):Array<Float>;
	static function log(values:haxe.extern.Rest<Dynamic>):Void;
	static function warn(values:haxe.extern.Rest<Dynamic>):Void;
	static var util : IUtil;
}
