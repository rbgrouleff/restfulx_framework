/*******************************************************************************
 * Copyright 2008, Ruboss Technology Corporation.
 *
 * This software is dual-licensed under both the terms of the Ruboss Commercial
 * License v1 (RCL v1) as published by Ruboss Technology Corporation and under
 * the terms of the GNU General Public License v3 (GPL v3) as published by the
 * Free Software Foundation.
 *
 * Both the RCL v1 (rcl-1.0.txt) and the GPL v3 (gpl-3.0.txt) are included in
 * the source code. If you have purchased a commercial license then only the
 * RCL v1 applies; otherwise, only the GPL v3 applies. To learn more or to buy a
 * commercial license, please go to http://ruboss.com.
 ******************************************************************************/
package org.ruboss.events {
  import flash.events.Event;
  
  import org.ruboss.controllers.RubossCommandsEventDispatcher;
  
  public class RubossEvent extends Event {

    // command data
    public var data:*;
    
    // since we deal with many services commands may need to know which service 
    // to delegate low-level behaviour to
    public var targetServiceId:int;
    
    public function RubossEvent(type:String, bubbles:Boolean = false, 
      cancelable:Boolean = false) {
      super(type, bubbles, cancelable);
    }
    
    public function dispatch():Boolean {
      return RubossCommandsEventDispatcher.getInstance().dispatchEvent(this);
    }
  }
}