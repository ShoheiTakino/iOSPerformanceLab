import SwiftUI

struct ContentView: View {
    @State private var objectItems = (0..<1000).map { ItemModel(id: $0, value: $0) }
    @State private var observationItems = (0..<1000).map { ItemObservationModel(id: $0, value: $0) }

    var body: some View {
        TabView {
            // ObservableObject版
            ScrollView {
                LazyVStack {
                    ForEach(objectItems) { item in
                        ItemView_Object(item: item)
                    }
                }
            }
            .tabItem {
                Label("ObservableObject", systemImage: "1.circle")
            }

            // Observation版
            ScrollView {
                LazyVStack {
                    ForEach(observationItems) { item in
                        ItemView_Observation(item: item)
                    }
                }
            }
            .tabItem {
                Label("Observation", systemImage: "2.circle")
            }
        }
    }
}
