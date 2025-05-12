import SwiftUI

struct NewCarInfomationPage: View {
    @State var gr: Double?
    @State var acc: Double?
    @State var efficiency: Double?
    @State var hp: Double?
    @State var engine: Double?
    @State var weight: Double?
    @State var ZeroToSixtyResult: Double
    @State var wr: Double?
    @State var returnTorque: Double
    @State var dragCoefficient: Double?
    @State var frontalArea: Double?
    var body: some View {
        ScrollView {
            Text("Hosrepower")
                .font(.largeTitle)
            TextField("Enter Horsepower Amount (000-1800)", value: $hp, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("Weight")
                .font(.largeTitle)
            TextField("Enter weight in kilograms", value: $weight, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("Engine")
                .font(.largeTitle)
            TextField("Enter Engine Cylinder Number", value: $engine, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("Efficiency")
                .font(.largeTitle)
                .padding()
            TextField("Enter Efficiency", value: $efficiency, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("Gear Ratio")
                .font(.largeTitle)
                .padding()
            TextField("Enter Gear Ratio (2.0 - 8.0)", value: $gr, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("Acceleration")
                .font(.largeTitle)
            TextField("Enter Acceleration (1.0-10.0)", value: $acc, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("Wheel Radius")
                .font(.largeTitle)
            TextField("Enter Wheel Radius (0.1-0.9)", value: $wr, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            HStack(spacing: 30) {
                VStack {
                    Text("\(ZeroToSixtyResult, specifier: "%.2f")")
                        .font(.title)
                    
                    Button("Calculate 0-60") {
                        ZeroToSixtyCalculator()
                    }
                    .buttonStyle(.borderedProminent)
                    
                }
                VStack {
                    Text("\(returnTorque, specifier: "%.2f")")
                        .font(.title)
                    
                    Button("Calculate Torque") {
                        TorqueCalculator()
                    }
                    .buttonStyle(.borderedProminent)
                    VStack {
                        Text("\(TopSpeedCalculator(), specifier: "%.1f")")
                            .font(.largeTitle)
                    }
                    
                }
            }
            
            
            
        }
        
        
        
    }
    func ZeroToSixtyCalculator() {
        ZeroToSixtyResult = (weight ?? 0)/(hp ?? 0) * 0.07
    }
    func TorqueCalculator() {
        let force = (weight ?? 0) * (acc ?? 0)
        returnTorque = (force * (wr ?? 0))/((gr ?? 0) * (efficiency ?? 0))
    }
    func TopSpeedCalculator() -> Double {
        let hpFactor = (hp ?? 0) * 375.0
        let drag = (dragCoefficient ?? 0.0) * (frontalArea ?? 0.0)
        let speedMph = (hpFactor / drag)
        return speedMph
    }
}

