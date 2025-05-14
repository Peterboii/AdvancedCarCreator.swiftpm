import SwiftUI

struct DisplayView: View {
    @Binding var topSpeedCalculator: Double
    var body: some View {
         Text("\(topSpeedCalculator) mph")
    }
}


