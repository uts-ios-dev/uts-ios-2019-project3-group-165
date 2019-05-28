//
//  Event.swift
//  EventManagement
//
//  Created by Dongsheng Wan on 25/5/19.
//  Copyright © 2019 UTS. All rights reserved.
//

import Foundation
import UIKit


// Class contain attributes of event
class Event{
    var eventName: String
    var eventContent: String
    init(name: String, content: String) {
        eventName = name
        eventContent = content
    }
    func getEventName() -> String{
        return eventName
    }
    
    func setEventName(eventContent : String){
        self.eventContent = eventContent
    }
    
    func getEventContent() -> String{
        return eventContent;
    }
    
    func setEventName(eventName: String)  {
        self.eventName = eventName
    }

}
