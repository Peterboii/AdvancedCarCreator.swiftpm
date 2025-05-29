import SwiftUI
import PencilKit

struct DesignNewCarPage: View {

    var body: some View {
        Text("Car Design")
            .font(.system(size: 32, design: .serif))
            .foregroundStyle(.red)
            .bold()
            .padding()
    }
}

struct DrawingView: View {
    @State var canvasView = PKCanvasView()
    @AppStorage("savedDrawing") var savedDrawingData: Data = Data()
    var body: some View {
        VStack {
            CanvasView(canvasData: $canvasView)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Button("Clear Drawing") {
                canvasView.drawing = PKDrawing()
            }
            .padding()
        }
        .navigationBarTitle("", displayMode: .inline)
    }
    func saveDrawing(_ drawing: PKDrawing) {
        savedDrawingData = drawing.dataRepresentation()
    }
    func loadDrawing() -> PKDrawing {
       (try? PKDrawing(data: savedDrawingData)) ?? PKDrawing()
    }
}

