import SwiftUI

struct NewCarInfomationPage: View {
    @State var hp = 0
    @State var engine = 0
    @State var weight = 0
    var body: some View {
        Text("Hosrepower")
        Text("Engine")
            .font(.largeTitle)
        TextField("Enter Horsepower Amount (000-1800)", value: $hp, format: .number)
        
        TextField("Enter Engine Cylinder Number", value: $engine, format: .number)
            .textFieldStyle(.roundedBorder)
            .padding()
    }
}


