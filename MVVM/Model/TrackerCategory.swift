import Foundation

struct TrackerCategory {
    let title: String
}

extension TrackerCategory: Equatable {
    static func == (lrh: TrackerCategory, rhs: TrackerCategory) -> Bool {
<<<<<<< HEAD
        lrh.title == rhs.title
=======
        lrh.title == rhs.title ? true : false
>>>>>>> 5d7a33b1fa47a4e012bc80505ef1b61cb7a52cd8
    }
}
