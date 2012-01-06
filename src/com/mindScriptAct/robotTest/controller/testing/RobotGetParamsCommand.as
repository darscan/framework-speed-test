package com.mindScriptAct.robotTest.controller.testing {
import org.robotlegs.mvcs.Command;

/**
 * ...
 * @author Deril (raima156@yahoo.com)
 */
public class RobotGetParamsCommand extends Command {
	
	[Inject]
	public var event:TestEvent;
	
	override public function execute():void {
		//trace( "RobotGetParamsCommand.execute" );
		var data:String = event.data;
	}

}

}