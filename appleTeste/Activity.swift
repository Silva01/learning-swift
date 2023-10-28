//
//  Activity.swift
//  appleTeste
//
//  Created by Daniel Silva on 28/10/23.
//

import Foundation

class Activity {
    
    private var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    private var activitySelected = "Archery"
    
    func modifyActivityRandom() {
        self.activitySelected = self.activities.randomElement() ?? "Archery"
    }
    
    func getActivitySelected() -> String {
        return self.activitySelected
    }
    
}
