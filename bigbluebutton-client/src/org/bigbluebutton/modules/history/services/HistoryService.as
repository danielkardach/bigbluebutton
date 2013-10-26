
package org.bigbluebutton.modules.history.services
{
  import flash.events.IEventDispatcher;
  
  import org.bigbluebutton.common.LogUtil;
  import org.bigbluebutton.core.BBB;
  import org.bigbluebutton.core.managers.ConnectionManager;
  import org.bigbluebutton.modules.history.events.HistoryEvent;

  public class HistoryService
  {
    public var sender:HistorySender;
    public var receiver:HistoryReceiver;
    public var dispatcher:IEventDispatcher;
    
    public function getHistory():void
    {
       sender.getHistory();
    }
  }
}