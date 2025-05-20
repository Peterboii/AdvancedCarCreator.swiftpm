import SwiftUI
import PencilKit

class CanvasData: ObservableObject {
    @Published var canvasView = PKCanvasView()
    
    @Published var drawingImage: UIImage? {
        
    }
}
