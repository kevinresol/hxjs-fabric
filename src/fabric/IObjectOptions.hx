package fabric;

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
	// var shadow : haxe.extern.EitherType<IShadow, String>;
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