import SwiftUI

struct ContentView: View {
    
        var body: some View {
        VStack {
            Text("Advanced Car Creator")
                .font(.largeTitle)
                .padding()
            Divider()
            Text("Create New Car Information")
                .font(.title3)
            NavigationStack {
                NavigationLink {
                    NewCarInfomationPage(ZeroToSixtyResult: Double())
                } label: {
                    Image(systemName: "car.badge.gearshape")
                }
                .padding()
                Spacer()
                Divider()
                    .padding()
                Text("Design New Car Look")
                    .foregroundStyle(.red)
                    .font(.system(size: 25, design: .monospaced))
                    .padding()
                NavigationStack {
                    NavigationLink {
                        
                    } label: {
                        Image(systemName: "car.side")
                    }
                    .padding()

                   Spacer()
              
                    
               
                    
                    
                  

                    Spacer()
         
                    Spacer()

                }
                
            }
        }
        
    }

}


    
    

