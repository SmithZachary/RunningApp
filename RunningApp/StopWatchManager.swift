//
//  StopWatchManager.swift
//  RunningApp
//
//  Created by Zach Smith on 9/15/21.
//

import SwiftUI

class StopWatchManager: ObservableObject {
    @Published var mode: stopWatchMode = .stopped
    
    @Published var secondsElapsed = 0.0
    var timer = Timer()
    
    func start() {
        mode = .running
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
               self.secondsElapsed += 0.1
}
    }
    func stop() {
           timer.invalidate()
           secondsElapsed = 0
           mode = .stopped
       }
}

struct TimerButton: View {
    
    let label: String
    let buttonColor: Color
    
    var body: some View {
        Text(label)
            .foregroundColor(.white)
         
            .background(buttonColor)
            .cornerRadius(10)
    }
}
enum stopWatchMode {
    case running
    case stopped
    case paused
}

