import UIKit

struct Tracker {
    let id: String
    let name: String
    let color: UIColor?
    let emoji: String
    let schedule: [String]?
}

extension Tracker: Equatable {
    static func == (lrh: Tracker, rhs: Tracker) -> Bool {
<<<<<<< HEAD
        lrh.id == rhs.id
=======
        lrh.id == rhs.id ? true : false
>>>>>>> 5d7a33b1fa47a4e012bc80505ef1b61cb7a52cd8
    }
}
