import Foundation
import YandexMobileMetrica

struct AnalyticsService {
    static func activate() {
        guard let configuration = YMMYandexMetricaConfiguration(apiKey: "890c3c39-5974-43a6-8158-84faefd0a686") else { return }
        
        YMMYandexMetrica.activate(with: configuration)
    }
    
    func report(event: Events, params : [AnyHashable : Any]) {
        YMMYandexMetrica.reportEvent(event.rawValue, parameters: params, onFailure: { error in
            print("REPORT ERROR: %@", error.localizedDescription)
        })
    }
}

