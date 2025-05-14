import SwiftUI
import PencilKit
struct DisplayView: View {
@Binding var ZeroToSixtyCalculator: Double
    @Binding var TorqueCalculator: Double

    @Binding var topSpeedCalculator: Double
    var body: some View {
         VStack {
            
        }
        VStack(spacing: 40) {
            
            Text("\(ZeroToSixtyCalculator) Seconds")
            Text("\(TorqueCalculator) lbs")
            Text("\(topSpeedCalculator) mph")
            
        }
    }
}


