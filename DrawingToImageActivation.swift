import SwiftUI
import PencilKit

class CanvasData: ObservableObject {
    @Published var canvasView = PKCanvasView()
    
    var drawingImage: UIImage? {
        let bounds = canvasView.drawing.bounds
        
        return bounds.isEmpty ? nil : canvasView.drawing.image(from: bounds, scale: 1.0).
    }
}

struct CanvasView: UIViewRepresentable {
    @ObservedObject var canvasData = CanvasData()
    
    
    func makeUIView(context: Context) -> PKCanvasView {
        
    }
}

