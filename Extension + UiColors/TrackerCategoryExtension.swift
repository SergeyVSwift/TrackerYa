//
//  TrackerCategoryExtension.swift
//  Tracker
//
//  Created by Сергей Ващенко on 14.08.23.
//

import UIKit

extension TrackerCategory {
    static let sampleData: [TrackerCategory] = [
        TrackerCategory(
            label: "Домашний уют",
            trackers: [
                Tracker(
                    label: "Поливать растения",
                    emoji: "❤️",
                    color: UIColor(named: "ColorS5")!,
                    schedule: [.saturday]
                )
            ]
        )
    ]
}
