import SwiftUI
import PencilKit

class CanvasData: ObservableObject {
    @Published var canvasView = PKCanvasView()
    
    var drawingImage: UIImage? {
        let bounds = canvasView.drawing.bounds
        
        return bounds.isEmpty ? nil : canvasView.drawing.image(from: bounds, scale: 1.0)
    }
    
    func clear() {
        canvasView.drawing = PKDrawing()
    }
    
    func exportPNGData() -> Data? {
        guard let image = drawingImage else { return nil }
        return image.pngData()
    }
}

struct CanvasView: UIViewRepresentable {
    @ObservedObject var canvasData = CanvasData
    
    
    func makeUIView(context: Context) -> PKCanvasView {
        canvasData.canvasView.drawingPolicy = .anyInput
        canvasData.canvasView.tool = PKInkingTool(.pen, color: .black, width: 5)
        return canvasData.canvasView
    }
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        
    }
}

