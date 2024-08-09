//
//  image_extension.swift
//  whatsAppClone
//
//  Created by Yiğit ARİK on 8.08.2024.
//

import Foundation
import UIKit
import SVGKit
extension UIImage {
    static func fromSVG(imageName: String, subDirectory: String, withExtension: String) -> UIImage? {
        // Dosya URL'sini al
        guard let imageUrl = Bundle.main.url(forResource: imageName, withExtension: withExtension, subdirectory: subDirectory) else {
            print("SVG dosyasının yolu bulunamadı.")
            return nil
        }
        
        do {
            // SVG verilerini al
            let svgData = try Data(contentsOf: imageUrl)
            
            // SVGKImage nesnesini oluştur
            let svgImage = SVGKImage(data: svgData)
            
            // UIImage olarak döndür
            return svgImage?.uiImage
        } catch {
            // Hata durumunda hata mesajını yazdır
            print("SVG verisi alınırken bir hata oluştu: \(error.localizedDescription)")
            return nil
        }
    }
}
