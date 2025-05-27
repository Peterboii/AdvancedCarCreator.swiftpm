import SwiftUI

struct ContentView: View {
    @State var zeroToSixy: Double = 0.0
    @State var torque: Double = 0.0
    @State var topSpeed: Binding<Double> = .constant(0.0)
    @State var returnZeroToSixty: Double = 0.0
    @State var ReturnTorque: Double = 0.0
    @State var returnTopSpeed: Binding<Double> = .constant(0.0)
    
        var body: some View {
            
        VStack {
            Text("Advanced Car Creator")
                .font(.system(size: 35, design: .serif))
                .font(.largeTitle)
                .foregroundStyle(.blue)
                .bold()
                .underline()
                .padding()
            Divider()
            
            NavigationStack {
                Text("Create New Car Information")
                    .font(.system(size: 25, design: .serif))
                    .font(.title3)
                    .foregroundStyle(.red)
                    .bold()
                    .underline()
                    .padding()
                NavigationLink {
                    NewCarInfomationPage(ZeroToSixtyResult: $zeroToSixy, returnTorque: $torque, topSpeedCalculator: topSpeed)
                } label: {
                    Image(systemName: "car.badge.gearshape")
                }
                
                .foregroundStyle(.blue)
                .padding()
                Spacer()
                Divider()
                    .padding()
                Text("Design New Car Look")
                    .foregroundStyle(.red)
                    .font(.system(size: 25, design: .serif))
                    .bold()
                    .underline()
                    .padding()
                NavigationStack {
                    NavigationLink {
                        DesignNewCarPage()
                        DrawingView()
                    } label: {
                        Image(systemName: "car.side")
                    }
                    .foregroundStyle(.blue)
                    .padding()

                   Spacer()
              Text("Once you have entered and calculated your car's infromation and design, Click icon to view your new car, and its stats.")
                        .font(.system(size: 15, design: .serif))
                        .padding()
                    NavigationStack {
                        NavigationLink {
//   DisplayView(zeroToSixtyCalculator: $zeroToSixy, torqueCalculator: $torque, topSpeedCalculator: $topSpeed)
                        } label: {
                            Image(systemName: "display.and.arrow")
                        }
                        
                    }
                    
               
                    
                    
                  

                    Spacer()
         
                    Spacer()

                }
                
            }
        }
   
    }

}


    
    

