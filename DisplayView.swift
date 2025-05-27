import SwiftUI
import PencilKit
struct DisplayView: View {
@Binding var zeroToSixtyCalculator: Double
@Binding var torqueCalculator: Double
@Binding var topSpeedCalculator: Double
//@StateObject var IsItCanvasData = CanvasData()
    var body: some View {
        HStack {
            
            
//            VStack {
////                CanvasView(canvasData: DrawingCanvasView(TheCanvasData: $IsItCanvasData))
//                    .frame(height: 350)
//                    .border(Color.blue)
//                Button("Eradicate drawing") {
//                    IsItCanvasData.clear()
//                }
//                
//          
//                    
//                if let image = IsItCanvasData.drawingImage {
//                Image(uiImage: image)
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


