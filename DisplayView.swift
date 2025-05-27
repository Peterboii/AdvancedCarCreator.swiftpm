import SwiftUI
import PencilKit
struct DisplayView: View {
@Binding var zeroToSixtyCalculator: Double
@Binding var torqueCalculator: Double
@Binding var topSpeedCalculator: Double
//@StateObject var canvasData = CanvasData()
    var body: some View {
        HStack {
            
            
//            VStack {
//                CanvasView(canvasData: canvasData)
//                    .frame(height: 350)
//                    .border(Color.blue)
                
          
                    
//                if let pngData = image.pngData {
//                    
//                
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 350, height: 350)
//                } else {
//                    Text("No Available Drawing")
//                }
//             
//                
//               
//            }
            
            VStack(spacing: 40) {
                
                Text("\(zeroToSixtyCalculator) Seconds")
                Text("\(torqueCalculator) lbs")
                Text("\(topSpeedCalculator) mph")
                
                
            }
        }
    }
}


