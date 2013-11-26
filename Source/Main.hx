package;


import flash.display.Sprite;
import pgr.gconsole.GameConsole;
import flash.events.Event;
import flash.events.KeyboardEvent;

class Main extends Sprite {
	
	private var game:SpaceOutpost;	
	
	public function new () {
		
		super ();
		game = new SpaceOutpost();
		game.keystack = [];
		stage.addEventListener (KeyboardEvent.KEY_DOWN, stage_onKeyDown);
		GameConsole.init();
		addChild(game);
	}

	private function stage_onKeyDown (event:KeyboardEvent):Void {
		game.keystack.insert(event.keyCode,0);
	}
	
}