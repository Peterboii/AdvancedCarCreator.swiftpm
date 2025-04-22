import SwiftUI

struct NewCarInfomationView: View {
    var body: some View {
        Text("Engine")
            .font(.largeTitle)
        
        TextField("Enter Engine Cylinder Number", value: $engine, format: .number)
            .textFieldStyle(.roundedBorder)
            .padding()
    }
}


