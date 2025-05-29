import SwiftUI
import PencilKit
struct DisplayView: View {
@Binding var zeroToSixtyCalculator: Double
@Binding var torqueCalculator: Double
@Binding var topSpeedCalculator: Double
@StateObject var IsItCanvasData = CanvasData()
    @AppStorage("savedDrawing") var savedDrawingData: Data = Data()
    var body: some View {
        HStack {
            
            
            VStack {
                DrawingCanvasView(TheCanvasData:  CanvasData())
                    .frame(height: 350)
                    .border(Color.blue)
                    .padding()
                HStack {
                    Button("Save") {
                        IsItCanvasData.saveDrawing()
                    }
                    Button("Load") {
                        IsItCanvasData.loadDrawing()
                    }
                    Button("Eradicate drawing") {
                        IsItCanvasData.clear()
                    }
                }
                
          
                    
                if let image = IsItCanvasData.drawingImage {
                Image(uiImage: image)
                } else {
                    Text("No Available Drawing")
                }
                   
             
                
               
            }
            
            VStack(spacing: 40) {
                
                Text("\(zeroToSixtyCalculator, specifier: "%.2f") Seconds")
                    .padding()
                
                Text("\(torqueCalculator, specifier: "%.1f") lbs")
                    .padding()
                Text("\(topSpeedCalculator, specifier: "%.1f") mph")
                    .padding()
                
                
            }
        }
    }
}


