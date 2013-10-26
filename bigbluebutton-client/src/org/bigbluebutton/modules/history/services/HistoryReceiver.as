package org.bigbluebutton.modules.history.services
{
  import flash.events.IEventDispatcher;
  
  import org.bigbluebutton.common.LogUtil;
  import org.bigbluebutton.core.BBB;
  import org.bigbluebutton.core.EventConstants;
  import org.bigbluebutton.core.events.CoreEvent;
  import org.bigbluebutton.main.model.users.IMessageListener;
  import org.bigbluebutton.modules.history.events.HistoryEvent;
  
  public class HistoryReceiver implements IMessageListener
  {
    public var dispatcher:IEventDispatcher;
    
    public function HistoryReceiver()
    {
      BBB.initConnectionManager().addMessageListener(this);
    }
    
    public function onMessage(messageName:String, message:Object):void
    {
      switch (messageName) {	
        case "HistoryRequestReply":
          handleHistoryRequestReply(message);
          break;	
        default:
          //   LogUtil.warn("Cannot handle message [" + messageName + "]");
      }
    }
    
    private function handleHistoryRequestReply(message:Object):void {
    	var event:HistoryEvent = new HistoryEvent(HistoryEvent.RECEIVED_HISTORY_EVENT);
		event.history = message;
           
    	dispatcher.dispatchEvent(event);
    }
  }
}