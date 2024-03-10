import Foundation

struct TrackerRecord: Hashable {
    let checkDate: Date
}

extension TrackerRecord: Equatable {
    static func == (lrh: TrackerRecord, rhs: TrackerRecord) -> Bool {
<<<<<<< HEAD
        lrh.checkDate == rhs.checkDate
=======
       lrh.checkDate == rhs.checkDate ? true : false
>>>>>>> 5d7a33b1fa47a4e012bc80505ef1b61cb7a52cd8
    }
}
