package ;

import flash.display.Sprite;
import pgr.gconsole.GameConsole;
import flash.events.Event;
import CKongregate;

class SpaceOutpost extends Sprite
{

	public var keystack:Array<Int>;
	static var kongregate;

	public function new() {
		super();
		initialize();
		removeEventListener (Event.ENTER_FRAME, this_onEnterFrame);
		addEventListener (Event.ENTER_FRAME, this_onEnterFrame);
	}
	
	private function initialize() {
			kongregate = new CKongregate();	
			kongregate.SubmitStat( "test1",123);		
	}

	private function this_onEnterFrame(e:Event) {

	}
}

