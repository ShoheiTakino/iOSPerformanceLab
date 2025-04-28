import Combine
import SwiftUI

final class ItemModel: ObservableObject, Identifiable {
    let id: Int
    @Published var value: Int

    init(id: Int, value: Int) {
        self.id = id
        self.value = value
    }
}

struct ItemView_Object: View {
    @ObservedObject var item: ItemModel

    var body: some View {
        let _ = print("ObservableObject View Updated: \(item.id)")
        Text("\(item.value)")
            .onTapGesture {
                item.value += 1
            }
    }
}
