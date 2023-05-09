/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation
import Network

class NetworkService {
    
    static let shared = NetworkService()
    private var monitor: NWPathMonitor?
    private let queue = DispatchQueue(label: "network.monitoring")
    private(set) var isConnected: Bool = true
    
    func start() {
        monitor = NWPathMonitor()
        guard let monitor = monitor else {return}
        monitor.pathUpdateHandler = { [ weak self] path in
            self?.isConnected = path.status != .unsatisfied
        }
        monitor.start(queue: queue)
    }
    
    func stop() {
        monitor?.cancel()
        monitor = nil
    }
    
    private init() {  }
    
}
