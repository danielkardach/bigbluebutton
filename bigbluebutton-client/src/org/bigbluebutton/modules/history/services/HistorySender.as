
package org.bigbluebutton.modules.history.services
{
  import flash.events.IEventDispatcher;
  
  import org.bigbluebutton.common.LogUtil;
  import org.bigbluebutton.core.BBB;
  import org.bigbluebutton.core.managers.ConnectionManager;

  public class HistorySender
  {
    public var dispatcher:IEventDispatcher;
    
    public function getHistory():void
    {
       LogUtil.debug("Sending [history.getHistory] to server.");
      var _nc:ConnectionManager = BBB.initConnectionManager();
      _nc.sendMessage("history.getHistory", 
        function(result:String):void { // On successful result
          LogUtil.debug(result); 
        },	                   
        function(status:String):void { // status - On error occurred
          LogUtil.error(status); 
        }
      );
    }
    
    
  }
}