import SwiftUI

struct NewCarInfomationPage: View {
    @State var hp = ""
    @State var engine = ""
    @State var weight = ""
    var body: some View {
        Text("Hosrepower")
        Text("Engine")
            .font(.largeTitle)
        TextField("Enter Horsepower Amount (000-1800)", text: $hp)
        
        TextField("Enter Engine Cylinder Number", value: $engine, format: .number)
            .textFieldStyle(.roundedBorder)
            .padding()
    }
}


