//
//  TrackerExtension.swift
//  TrackerYandex
//
//  Created by Сергей Ващенко on 25.09.23.
//

import UIKit

extension Tracker {
    struct Data {
        var label: String = ""
        var emoji: String? = nil
        var color: UIColor? = nil
        var schedule: [Weekday]? = nil
    }
}
