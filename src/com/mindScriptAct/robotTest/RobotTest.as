package com.mindScriptAct.robotTest {
import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.events.Event;
import flash.utils.getTimer;
import net.bigpoint.utils.benchmark.BenchMark;

/**
 * ...
 * @author Deril (raima156@yahoo.com)
 */
public class RobotTest extends Sprite {
	
	public var initTime:int;
	
	private var context:RobotTestContext;
	
	public function RobotTest():void {
		if (stage)
			init();
		else
			addEventListener(Event.ADDED_TO_STAGE, init);
	}
	
	private function init(event:Event = null):void {
		removeEventListener(Event.ADDED_TO_STAGE, init);
		//
		stage.scaleMode = StageScaleMode.NO_SCALE;
		stage.align = StageAlign.TOP_LEFT;
		//
		//this.addChild(new Stats());
		//BenchMark.monitor(this.stage);
		
		this.initTime = getTimer();
		
		context = new RobotTestContext(this);
	}

}

}