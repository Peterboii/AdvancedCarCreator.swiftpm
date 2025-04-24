import SwiftUI

struct NewCarInfomationPage: View {
    @State var hp: Int?
    @State var engine: Int?
    @State var weight: Int?
    @State var gr: Double
    @State var acc: Double
    @State var efficiency: Double

    @State var hp: Double?
    @State var engine: Double?
    @State var weight: Double?
    @State var ZeroToSixtyResult: Double
    var body: some View {
        Text("Hosrepower")
            .font(.largeTitle)
        TextField("Enter Horsepower Amount (000-1800)", value: $hp, format: .number)
            .textFieldStyle(.roundedBorder)
            .padding()
        Text("Engine")
            .font(.largeTitle)
        TextField("Enter Engine Cylinder Number", value: $engine, format: .number)
            .textFieldStyle(.roundedBorder)
            .padding()
        Text("Weight")
            .font(.largeTitle)
        TextField("Enter weight in kilograms", value: $weight, format: .number)
            .textFieldStyle(.roundedBorder)
            .padding()
    }
    func ZeroToSixtyCalculator() {
        ZeroToSixtyResult = (weight ?? 0)/(hp ?? 0) * 0.07
    }
}


