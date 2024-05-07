//
//  TrackerYandexTests.swift
//  TrackerYandexTests
//
//  Created by Сергей Ващенко on 07.05.24.
//

import XCTest
import SnapshotTesting
@testable import TrackerYandex

final class TrackerTests: XCTestCase {

    func testTrackersVCLight() throws {
        let vc = TrackersVC()
        assertSnapshot(
            matching: vc,
            as: .image(traits: .init(userInterfaceStyle: .light)))
    }
    
    func testTrackersVCDark() throws {
        let vc = TrackersVC()
        assertSnapshot(
            matching: vc,
            as: .image(traits: .init(userInterfaceStyle: .dark)))
    }
}
