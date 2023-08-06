//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Roman Vronsky on 05/08/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsIView(scrums: DailyScrum.sampleData)
        }
    }
}
