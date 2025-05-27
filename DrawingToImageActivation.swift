import SwiftUI
import PencilKit

class CanvasData: ObservableObject {
    @Published var drawing = PKDrawing()
    
    var drawingImage: UIImage? {
        let bounds = drawing.bounds
        
        return bounds.isEmpty ? nil : drawing.image(from: bounds, scale: 1.0)
    }
    
    func clear() {
        drawing = PKDrawing()
    }
    
    func exportPNGData() -> Data? {
        guard let image = drawingImage else { return nil }
        return image.pngData()
    }
}

struct DrawingCanvasView: UIViewRepresentable {
    @ObservedObject var TheCanvasData: CanvasData
    
    
    func makeUIView(context: Context) -> PKCanvasView {
        let canvasView = PKCanvasView()
        canvasView.drawing = TheCanvasData.drawing
        canvasView.drawingPolicy = .anyInput
        canvasView.tool = PKInkingTool(.pen, color: .black, width: 5)
        canvasView.delegate = context.coordinator
        return canvasView
    }
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        if uiView.drawing != TheCanvasData.drawing {
            uiView.drawing = TheCanvasData.drawing
        }
    }
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
}

class Coordinator: NSObject, PKCanvasViewDelegate {
    var parent: DrawingCanvasView
    
    init(parent: DrawingCanvasView) {
        self.parent = parent
    }
    
    func canvasViewDrawingDidChange(_ canvasView: PKCanvasView) {
        parent.TheCanvasData.drawing = canvasView.drawing
    }
}

