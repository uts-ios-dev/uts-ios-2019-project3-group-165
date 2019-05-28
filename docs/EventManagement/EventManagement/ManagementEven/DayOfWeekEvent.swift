//
//  DayOfWeekEvent.swift
//  EventManagement
//
//  Created by Dongsheng Wan on 25/5/19.
//  Copyright © 2019 UTS. All rights reserved.
//

import Foundation
import UIKit


// Contain attributes of Day in Week
class DayOfWeekEvent {
    
    var dayOfWeek : String
    var eventsInDay : [Event]
    
    
    init(dayofweek : String, events : [Event]) {
        dayOfWeek = dayofweek
        eventsInDay = events
    }
    
    func getEvents() -> [Event]{
        return eventsInDay
    }
    
    func setEvents(events : [Event]){
        eventsInDay = events
    }
    
    func getDayOfWeek() -> String{
        return dayOfWeek;
    }
    
    func setDayOfWeek(dayofweek : String)  {
        dayOfWeek = dayofweek
    }
   
}
