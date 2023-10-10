//
//  TrackerCategory.swift
//  TrackerYandex
//
//  Created by Сергей Ващенко on 25.09.23.
//

import UIKit

struct TrackerCategory {
    let label: String
    let trackers: [Tracker]
    
    init(label: String, trackers: [Tracker]) {
        self.label = label
        self.trackers = trackers
    }
}
