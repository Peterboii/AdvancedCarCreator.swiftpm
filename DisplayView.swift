import SwiftUI
import PencilKit
struct DisplayView: View {
@Binding var ZeroToSixtyCalculator: Double
@Binding var TorqueCalculator: Double
@Binding var topSpeedCalculator: Double
//@State var drawing = PKDrawing()
    var body: some View {
        HStack {
            
            
            VStack {
//                CanvasView(drawing: $drawing)
//                    .frame(height: 350)
//                    .border(Color.blue)
//                
//                if !drawing.bounds.isEmpty {
//                    Image(uiImage: drawing.image(from: drawing.bounds, scale: 1.0))
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 350, height: 350)
//                } else {
//                    Text("No Available Drawing")
//                }
             
                
               
            }
            
            VStack(spacing: 40) {
                
                Text("\(ZeroToSixtyCalculator) Seconds")
                Text("\(TorqueCalculator) lbs")
                Text("\(topSpeedCalculator) mph")
                
                
            }
        }
    }
}


