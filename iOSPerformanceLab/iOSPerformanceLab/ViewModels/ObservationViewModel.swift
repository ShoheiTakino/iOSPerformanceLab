import SwiftUI
import Observation

@Observable
class ItemObservationModel: Identifiable {
    let id: Int
    var value: Int

    init(id: Int, value: Int) {
        self.id = id
        self.value = value
    }
}

struct ItemView_Observation: View {
    @Bindable var item: ItemObservationModel

    var body: some View {
        print("Observation View Updated: \(item.id)")
        return Text("\(item.value)")
            .onTapGesture {
                item.value += 1
            }
    }
}
