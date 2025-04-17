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
