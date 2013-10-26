
package org.bigbluebutton.modules.history.events
{
	import flash.events.Event;
	import flash.utils.Dictionary;

	public class HistoryEvent extends Event
	{
		public static const HISTORY_EVENT:String = 'HISTORY_EVENT';
		public static const GET_HISTORY_EVENT:String = 'GET_HISTORY_EVENT';
		public static const RECEIVED_HISTORY_EVENT:String = 'RECEIVED_HISTORY_EVENT';
		
		public var history:Object;
		
		public function HistoryEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}