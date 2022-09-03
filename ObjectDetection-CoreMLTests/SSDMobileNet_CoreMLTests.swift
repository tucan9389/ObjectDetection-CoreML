//
//  SSDMobileNet_CoreMLTests.swift
//  SSDMobileNet-CoreMLTests
//
//  Created by GwakDoyoung on 01/02/2019.
//  Copyright © 2019 tucan9389. All rights reserved.
//

import XCTest
import Vision

class SSDMobileNet_CoreMLTests: XCTestCase {

    // MARK: - Vision Properties
    var cpmRequest: VNCoreMLRequest?
    var cpmModel: VNCoreMLModel?
    
    var ssdRequest: VNCoreMLRequest?
    var ssdModel: VNCoreMLModel?
    
    let image = UIImage(named: "adult-building-business-1436289")
    var pixelBuffer: CVPixelBuffer?
    
    override func setUp() {
        // <# SSD Mobilenet v1 model #>
        ssdModel = try? VNCoreMLModel(for: ssd_mobilenet_feature_extractor().model)
        if let visionModel = ssdModel {
            ssdRequest = VNCoreMLRequest(model: visionModel, completionHandler: nil)
        }
        ssdRequest?.imageCropAndScaleOption = .scaleFill
        
        // image configuration
        pixelBuffer = image?.pixelBufferFromImage()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPerformanceSSDMobileNetV1Model() {
        guard let pixelBuffer = pixelBuffer,
            let request = ssdRequest else {
                fatalError()
        }
        self.measure {
            let handler = VNImageRequestHandler(cvPixelBuffer: pixelBuffer)
            try? handler.perform([request])
        }
    }

}
