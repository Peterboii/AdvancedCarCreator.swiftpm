import SwiftUI

struct DisplayView: View {
@Binding var ZeroToSixtyCalculator: Double
@Binding var TorqueCalculator: Double
@Binding var topSpeedCalculator: Double
@State var drawing = PKDrawing()
    var body: some View {
        HStack {
            VStack(spacing: 40) {
                Text("\(ZeroToSixtyCalculator) Seconds")
                Text("\(TorqueCalculator) lbs")
                Text("\(topSpeedCalculator) mph")
                PreviewCanvas(drawing: drawing)
            }
        }
    }
}


