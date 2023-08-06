//
//  ScrumsIView.swift
//  Scrumdinger
//
//  Created by Roman Vronsky on 06/08/23.
//

import SwiftUI

struct ScrumsIView: View {
    let scrums: [DailyScrum]
    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                NavigationLink(destination: Text(scrum.title)) {
                    CardView(scrum: scrum)
                        
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily scrums")
            .toolbar{
                Button(action: {}) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

struct ScrumsIView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsIView(scrums: DailyScrum.sampleData)
    }
}
