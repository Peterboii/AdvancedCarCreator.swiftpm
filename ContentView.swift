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
        }
      }
    }

