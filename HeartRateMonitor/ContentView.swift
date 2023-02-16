//
//  ContentView.swift
//  HeartRateMonitor
//
//  Created by Andy Pham on 16/02/2023.
//

import SwiftUI
import CoreBluetooth

struct ContentView: View {
    
    @EnvironmentObject var bleManager: CoreBluetoothViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Current Heart Rate")
                Text(bleManager.heartRate.description)
                    .font(.largeTitle)
                Text("Hello, world!")
                Text("Body Sensor Location")
                Text(bleManager.bodySensorLocation)
                    .font(.largeTitle)
            }
            .padding()
            .navigationTitle("Heart Rate Monitor")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
