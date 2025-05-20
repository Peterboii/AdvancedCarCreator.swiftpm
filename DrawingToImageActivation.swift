import SwiftUI
import PencilKit

class CanvasData: ObservableObject {
@Published var canvasView = PKCanvasView()
    
    var drawingImage: UIImage? {
        let bounds = canvasView.drawing.bounds
        
    }
}
