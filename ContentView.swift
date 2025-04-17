import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Advanced Car Creator")
       VStack {
          Text("Advanced Car Creator")
                    .font(.largeTitle)
                    .padding()
            Divider()
            Text("Create New Car Information")
                    .font(.title3)
            NavigationStack {
                NavigationLink {
                    NewCarInfomationView()
                } label: {
                    Image(systemName: "car.badge.gearshape")
                }
                .padding()
                Spacer()
           
                Text("Design New Car Look")
                    .foregroundStyle(.red)
                    .font(.system(size: 25, design: .monospaced))
               
                    
           Divider()
                
                Text("Create New Car Information")
                    .font(.title3)
            NavigationStack {
                NavigationLink {
                    NewCarInfomationView()
                } label: {
                    Image(systemName: "car.badge.gearshape")
                }
                
                Spacer()
                
                Divider()
                Spacer()
            }
            
        }
    }
    
}
