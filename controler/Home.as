package controler {
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import mx.collections.ArrayCollection;
	import mx.collections.ArrayList;
	import mx.core.ClassFactory;
	import mx.events.FlexEvent;
	import spark.components.Button;
	import spark.components.Grid;
	import spark.components.List;
	import renderer.ButtonRenderer;
	import spark.components.TileGroup;
	import spark.components.View;
	import spark.components.DataGrid;
	import spark.primitives.BitmapImage;
	import spark.layouts.ColumnAlign;
	import spark.layouts.RowAlign;
	import spark.components.Image;
	
	public class Home extends View {
		public var monButton:Button;
		public var buttonsTileGroup:TileGroup;
		
		[Embed(source = "../assets/humanseal.png")]
		private var HumanSeal:Class;
		[Embed(source = "../assets/orcseal.png")]
		private var OrcSeal:Class;
		[Embed(source = "../assets/undeadseal.png")]
		private var UndeadSeal:Class;
		[Embed(source = "../assets/nightelfseal.png")]
		private var NightElfSeal:Class;
		[Embed(source = "../assets/nightelfseal.png")]
		private var NeutralSeal:Class;
		[Embed(source = "../assets/favoriteseal.png")]
		private var FavoriteSeal:Class;
		
		private var _array:Array = [HumanSeal,		OrcSeal,
									UndeadSeal,		NightElfSeal,
									NeutralSeal,	FavoriteSeal];
		private var image:Image;
		
		public function Home() {
			super();
			this.actionBarVisible = false;
			addEventListener(FlexEvent.CONTENT_CREATION_COMPLETE, onContentCreationComplete);
		}
		
		public function onContentCreationComplete(pEvent:FlexEvent):void {
			monButton.addEventListener(MouseEvent.CLICK, onClick);
			
			this.buttonsTileGroup.columnAlign = ColumnAlign.JUSTIFY_USING_GAP;
			this.buttonsTileGroup.rowAlign = RowAlign.JUSTIFY_USING_GAP;
			
			for each (var imageClass:Class in _array) {
				image = new Image();
				image.source = new imageClass() as Bitmap;
				image.width = 100;
				image.height = 100;
				this.buttonsTileGroup.addElement(image);
				trace(image);
				trace((this.buttonsTileGroup.getElementAt(0) as Image).source);
			}
			
		}
		
		private function onClick(e:MouseEvent):void {
			trace((this.buttonsTileGroup.getElementAt(5) as Image).source);
		}
	}
}