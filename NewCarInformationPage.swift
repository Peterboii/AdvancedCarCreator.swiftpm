import SwiftUI

struct NewCarInfomationPage: View {
    @State var hp = ""
    @State var engine = ""
    @State var weight = ""
    var body: some View {
        Text("Hosrepower")
            .font(.largeTitle)
        TextField("Enter Horsepower Amount (000-1800)", text: $hp)
            .textFieldStyle(.roundedBorder)
            .padding()
    }
}


