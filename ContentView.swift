import SwiftUI

struct ContentView: View {
    var body: some View {
      Text("Advanced Car Creator")
         
            
        NavigationStack {
            NavigationLink {
                NewCarInfomationView()
            } label: {
                Image(systemName: "figure.archery")
            }
        VStack {
            Text("Advanced Car Creator")
                .font(.largeTitle)
                .padding()
           
            Text("Create New Car Information")
                .font(.title3)
            Spacer()
        }
        
      }
    }

