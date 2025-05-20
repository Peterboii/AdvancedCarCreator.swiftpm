import SwiftUI
import PencilKit

class CanvasData: ObservableObject {
@Published var canvasView = PKCanvasView()
    
    var drawingImage: UIImage? {
        return bounds.isEmpty ? nil : canvasView.drawing.image(from: bounds, scale: 1.0). }
    }

