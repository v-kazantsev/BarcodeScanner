//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by mac on 16.11.2022.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @State private var scannedCode = ""
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                Spacer().frame(height: 50)
                Label("Scanned Barcode: ", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text(scannedCode.isEmpty
                     ? "Not yet scanned"
                     : scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
