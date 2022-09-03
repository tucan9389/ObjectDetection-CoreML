//
//  ViewController.swift
//  SSDMobileNet-CoreML
//
//  Created by GwakDoyoung on 01/02/2019.
//  Copyright © 2019 tucan9389. All rights reserved.
//

import UIKit
import Vision
import CoreMedia

class ViewController: UIViewController {

    // MARK: - UI Properties
    @IBOutlet weak var videoPreview: UIView!
    @IBOutlet weak var boxesView: DrawingBoundingBoxView!
    @IBOutlet weak var labelsTableView: UITableView!
    
    @IBOutlet weak var inferenceLabel: UILabel!
    @IBOutlet weak var etimeLabel: UILabel!
    @IBOutlet weak var fpsLabel: UILabel!
    
    // MARK - Core ML model
    // YOLOv3(iOS12+), YOLOv3FP16(iOS12+), YOLOv3Int8LUT(iOS12+)
    // YOLOv3Tiny(iOS12+), YOLOv3TinyFP16(iOS12+), YOLOv3TinyInt8LUT(iOS12+)
    // MobileNetV2_SSDLite(iOS12+), ObjectDetector(iOS12+)
    let objectDectectionModel = YOLOv3Tiny()
    
    //XS
    //XS Max
    //XR
    //X
    //8
    //8+
    //7
    //6S+
    //6+
    
    //XS
    // YOLOv3              : 108 108 8
    // YOLOv3FP16          : 104 104 9
    // YOLOv3Int8LUT       : 101 102 9
    // YOLOv3Tiny          : 46 46 21
    // YOLOv3TinyFP16      : 51 51 19
    // YOLOv3TinyInt8LUT   : 45 45 21
    // MobileNetV2_SSDLite : 31 32 23
    // ObjectDetector      : 24 25 23
    //    
    //XS Max
    // YOLOv3              : 93 93 10
    // YOLOv3FP16          : 89 89 10
    // YOLOv3Int8LUT       : 92 92 10
    // YOLOv3Tiny          : 41 42 22
    // YOLOv3TinyFP16      : 41 41 23
    // YOLOv3TinyInt8LUT   : 39 39 24
    // MobileNetV2_SSDLite : 31 31 23
    // ObjectDetector      : 26 26 23
    //
    //XR
    // YOLOv3              : 100 100 9
    // YOLOv3FP16          : 101 101 8
    // YOLOv3Int8LUT       : 100 102 9
    // YOLOv3Tiny          : 47 48 20
    // YOLOv3TinyFP16      : 44 44 21
    // YOLOv3TinyInt8LUT   : 39 40 23
    // MobileNetV2_SSDLite : 31 32 23
    // ObjectDetector      : 23 23 24
    //
    //X
    // YOLOv3              : 356 357 2
    // YOLOv3FP16          : 348 348 2
    // YOLOv3Int8LUT       : 337 338 2
    // YOLOv3Tiny          : 106 106 8
    // YOLOv3TinyFP16      : 103 104 9
    // YOLOv3TinyInt8LUT   : 106 107 8
    // MobileNetV2_SSDLite : 109 109 8
    // ObjectDetector      : 63 64 14
    //    
    //7+
    // YOLOv3              : 569 569 1
    // YOLOv3FP16          : 572 572 1
    // YOLOv3Int8LUT       : 575 576 1
    // YOLOv3Tiny          : 165 166 5
    // YOLOv3TinyFP16      : 165 165 5
    // YOLOv3TinyInt8LUT   : 160 160 5
    // MobileNetV2_SSDLite : 141 142 6
    // ObjectDetector      : 86 87 10
    //
    //7
    // YOLOv3              : 561 561 1
    // YOLOv3FP16          : 565 565 1
    // YOLOv3Int8LUT       : 572 573 1
    // YOLOv3Tiny          : 168 169 5
    // YOLOv3TinyFP16      : 167 167 5
    // YOLOv3TinyInt8LUT   : 161 161 5
    // MobileNetV2_SSDLite : 134 134 6
    // ObjectDetector      : 84 85 11
    
    // MARK: - Vision Properties
    var request: VNCoreMLRequest?
    var visionModel: VNCoreMLModel?
    var isInferencing = false
    
    // MARK: - AV Property
    var videoCapture: VideoCapture!
    let semaphore = DispatchSemaphore(value: 1)
    var lastExecution = Date()
    
    // MARK: - TableView Data
    var predictions: [VNRecognizedObjectObservation] = []
    
    // MARK - Performance Measurement Property
    private let 👨‍🔧 = 📏()
    
    let maf1 = MovingAverageFilter()
    let maf2 = MovingAverageFilter()
    let maf3 = MovingAverageFilter()
    
    // MARK: - View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setup the model
        setUpModel()
        
        // setup camera
        setUpCamera()
        
        // setup delegate for performance measurement
        👨‍🔧.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.videoCapture.start()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.videoCapture.stop()
    }
    
    // MARK: - Setup Core ML
    func setUpModel() {
        if let visionModel = try? VNCoreMLModel(for: objectDectectionModel.model) {
            self.visionModel = visionModel
            request = VNCoreMLRequest(model: visionModel, completionHandler: visionRequestDidComplete)
            request?.imageCropAndScaleOption = .scaleFill
        } else {
            fatalError("fail to create vision model")
        }
    }

    // MARK: - SetUp Video
    func setUpCamera() {
        videoCapture = VideoCapture()
        videoCapture.delegate = self
        videoCapture.fps = 30
        videoCapture.setUp(sessionPreset: .vga640x480) { success in
            
            if success {
                // add preview view on the layer
                if let previewLayer = self.videoCapture.previewLayer {
                    self.videoPreview.layer.addSublayer(previewLayer)
                    self.resizePreviewLayer()
                }
                
                // start video preview when setup is done
                self.videoCapture.start()
            }
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        resizePreviewLayer()
    }
    
    func resizePreviewLayer() {
        videoCapture.previewLayer?.frame = videoPreview.bounds
    }
}

// MARK: - VideoCaptureDelegate
extension ViewController: VideoCaptureDelegate {
    func videoCapture(_ capture: VideoCapture, didCaptureVideoFrame pixelBuffer: CVPixelBuffer?, timestamp: CMTime) {
        // the captured image from camera is contained on pixelBuffer
        if !self.isInferencing, let pixelBuffer = pixelBuffer {
            self.isInferencing = true
            
            // start of measure
            self.👨‍🔧.🎬👏()
            
            // predict!
            self.predictUsingVision(pixelBuffer: pixelBuffer)
        }
    }
}

extension ViewController {
    func predictUsingVision(pixelBuffer: CVPixelBuffer) {
        guard let request = request else { fatalError() }
        // vision framework configures the input size of image following our model's input configuration automatically
        self.semaphore.wait()
        let handler = VNImageRequestHandler(cvPixelBuffer: pixelBuffer)
        try? handler.perform([request])
    }
    
    // MARK: - Post-processing
    func visionRequestDidComplete(request: VNRequest, error: Error?) {
        self.👨‍🔧.🏷(with: "endInference")
        if let predictions = request.results as? [VNRecognizedObjectObservation] {
//            print(predictions.first?.labels.first?.identifier ?? "nil")
//            print(predictions.first?.labels.first?.confidence ?? -1)
            
            self.predictions = predictions
            DispatchQueue.main.async {
                self.boxesView.predictedObjects = predictions
                self.labelsTableView.reloadData()

                // end of measure
                self.👨‍🔧.🎬🤚()
                
                self.isInferencing = false
            }
        } else {
            // end of measure
            self.👨‍🔧.🎬🤚()
            
            self.isInferencing = false
        }
        self.semaphore.signal()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return predictions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "InfoCell") else {
            return UITableViewCell()
        }

        let rectString = predictions[indexPath.row].boundingBox.toString(digit: 2)
        let confidence = predictions[indexPath.row].labels.first?.confidence ?? -1
        let confidenceString = String(format: "%.3f", confidence/*Math.sigmoid(confidence)*/)
        
        cell.textLabel?.text = predictions[indexPath.row].label ?? "N/A"
        cell.detailTextLabel?.text = "\(rectString), \(confidenceString)"
        return cell
    }
}

// MARK: - 📏(Performance Measurement) Delegate
extension ViewController: 📏Delegate {
    func updateMeasure(inferenceTime: Double, executionTime: Double, fps: Int) {
        //print(executionTime, fps)
        DispatchQueue.main.async {
            self.maf1.append(element: Int(inferenceTime*1000.0))
            self.maf2.append(element: Int(executionTime*1000.0))
            self.maf3.append(element: fps)
            
            self.inferenceLabel.text = "inference: \(self.maf1.averageValue) ms"
            self.etimeLabel.text = "execution: \(self.maf2.averageValue) ms"
            self.fpsLabel.text = "fps: \(self.maf3.averageValue)"
        }
    }
}

class MovingAverageFilter {
    private var arr: [Int] = []
    private let maxCount = 10
    
    public func append(element: Int) {
        arr.append(element)
        if arr.count > maxCount {
            arr.removeFirst()
        }
    }
    
    public var averageValue: Int {
        guard !arr.isEmpty else { return 0 }
        let sum = arr.reduce(0) { $0 + $1 }
        return Int(Double(sum) / Double(arr.count))
    }
}


