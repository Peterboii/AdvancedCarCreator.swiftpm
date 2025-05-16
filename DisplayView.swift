import SwiftUI
import PencilKit
struct DisplayView: View {
@Binding var ZeroToSixtyCalculator: Double
@Binding var TorqueCalculator: Double
@Binding var topSpeedCalculator: Double
@State var drawing = PKDrawing()
    var body: some View {
        HStack {
            
            
            VStack {
                PreviewCanvas(drawing: drawing)
                if let image = drawing.image (from: drawing.bounds, scale: 1.0) {
                    
                } else {
                    Text("No Available Drawing")
                }
            }
            
            VStack(spacing: 40) {
                
                Text("\(ZeroToSixtyCalculator) Seconds")
                Text("\(TorqueCalculator) lbs")
                Text("\(topSpeedCalculator) mph")
                
                
            }
        }
    }
}


