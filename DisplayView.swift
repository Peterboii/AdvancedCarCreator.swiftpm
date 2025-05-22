import SwiftUI
import PencilKit
struct DisplayView: View {
@Binding var zeroToSixtyCalculator: Double
@Binding var torqueCalculator: Double
@Binding var topSpeedCalculator: Double
@State var drawing = canvasView(canvasData: PKCanvasView())
    var body: some View {
        HStack {
            
            
            VStack {
                CanvasView(drawing: $CanvasData)
                    .frame(height: 350)
                    .border(Color.blue)
                
                if let image = canvasData.drawingImage {
                    
                }
                } else {
                    Text("No Available Drawing")
                }
             
                
               
            }
            
            VStack(spacing: 40) {
                
                Text("\(zeroToSixtyCalculator) Seconds")
                Text("\(torqueCalculator) lbs")
                Text("\(topSpeedCalculator) mph")
                
                
            }
        }
    }
}


