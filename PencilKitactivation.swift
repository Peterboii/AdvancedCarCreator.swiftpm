import SwiftUI
import PencilKit

struct CanvasView: UIViewRepresentable {
    @Binding var canvasData: PKCanvasView
    var toolPicker = PKToolPicker()
    
    func makeUIView(context: Context) -> PKCanvasView {
        canvasData.drawingPolicy = .anyInput
        canvasData.backgroundColor = .white
        
        if let windowScene = UIApplication.shared.connectedScenes.first(where: { $0 is UIWindowScene }) as? UIWindowScene, let window = windowScene.windows.first {
            toolPicker.setVisible(true, forFirstResponder: canvasData)
            toolPicker.addObserver(canvasData)
            canvasData.becomeFirstResponder()
        }
        
        return canvasData
    }
        
        func updateUIView(_ uiView: PKCanvasView, context: Context) {
            
        
    }
}

