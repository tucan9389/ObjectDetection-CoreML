# ObjectDetection-CoreML

- supporting model: `yolov3`
- work in process: `yolov5`

![platform-ios](https://img.shields.io/badge/platform-ios-lightgrey.svg)
![swift-version](https://img.shields.io/badge/swift-4.2-red.svg)
![lisence](https://img.shields.io/badge/license-MIT-black.svg)

This project is Object Detection on iOS with Core ML.<br>If you are interested in iOS + Machine Learning, visit [here](https://github.com/motlabs/iOS-Proejcts-with-ML-Models) you can see various DEMOs.<br>![SSDMobileNetV2-DEMO](https://user-images.githubusercontent.com/37643248/188248210-2c02790b-6231-4549-8211-e3edcccba9e8.gif)

## How it works

(preparing...)

## Requirements

- Xcode 10.3+
- iOS 13.0+
- Swift 4.2

## Model

### Model Matadata

<img width="1026" alt="image" src="https://user-images.githubusercontent.com/37643248/188037159-93cf79f7-5c21-4fbf-a46e-874109271606.png">

### Model Size, Minimum iOS Version, Download Link

| Model | Size<br>(MB) | Minimum<br>iOS Version | Download<br>Link | Trained Dataset
| :---- | :----: | :----: | ---- | --- | 
| yolov5n.mlmodel | 7.52 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5n.mlmodel) | [COCO](#trained-dataset-infos)
| yolov5s.mlmodel | 28 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5s.mlmodel) | [COCO](#trained-dataset-infos)
| yolov5m.mlmodel | 81.2 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5m.mlmodel) | [COCO](#trained-dataset-infos)
| yolov5l.mlmodel | 178 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5l.mlmodel) | [COCO](#trained-dataset-infos)
| yolov5x.mlmodel | 331 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5x.mlmodel) | [COCO](#trained-dataset-infos)
| yolov5n6.mlmodel | 12.8 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5n6.mlmodel) | [COCO](#trained-dataset-infos)
| yolov5s6.mlmodel | 48.5 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5s6.mlmodel) | [COCO](#trained-dataset-infos)
| yolov5m6.mlmodel | 137 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5m6.mlmodel) | [COCO](#trained-dataset-infos)
| yolov5l6.mlmodel | 293 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5l6.mlmodel) | [COCO](#trained-dataset-infos)
| yolov5x6.mlmodel | 537 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5x6.mlmodel) | [COCO](#trained-dataset-infos)
| YOLOv3.mlmodel | 248.4 | iOS12 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov3-support/YOLOv3.mlmodel) | [COCO](#trained-dataset-infos)
| YOLOv3FP16.mlmodel | 124.2 | iOS12 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov3-support/YOLOv3FP16.mlmodel) | [COCO](#trained-dataset-infos)
| YOLOv3Int8LUT.mlmodel | 62.2 | iOS12 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov3-support/YOLOv3Int8LUT.mlmodel) | [COCO](#trained-dataset-infos)
| YOLOv3Tiny.mlmodel | 35.5 | iOS12 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov3-support/YOLOv3Tiny.mlmodel) | [COCO](#trained-dataset-infos)
| YOLOv3TinyFP16.mlmodel | 17.8 | iOS12 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov3-support/YOLOv3TinyFP16.mlmodel) | [COCO](#trained-dataset-infos)
| YOLOv3TinyInt8LUT.mlmodel | 8.9 | iOS12 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov3-support/YOLOv3TinyInt8LUT.mlmodel) | [COCO](#trained-dataset-infos)
| MobileNetV2_SSDLite.mlmodel | 9.3 | iOS12 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/etc-support/MobileNetV2_SSDLite.mlmodel) | [COCO](#trained-dataset-infos)
| ObjectDetector.mlmodel | 63.7 | iOS12 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/etc-support/ObjectDetector.mlmodel) | [6 Label Dataset](#trained-dataset-infos)

#### Trained Dataset Infos

<details>
  <summary>COCO Dataset</summary>

- https://github.com/ultralytics/yolov5/blob/9da6d0f9f5bc37fa386b7b82d2a963f94650949a/data/coco.yaml#L17-L97
  
</details>

<details>
  <summary>6 Label Dataset(Apple's DEMO) </summary>

- Bagel
- Banana
- Coffee
- Croissant
- Egg
- Waffle
  
</details>

### Infernece Time (ms)

| Model vs. Device    | 11<br>Pro | XS | XS<br>Max | XR | X | 7+ | 7 |
| :---- | :----: | :----: | :----: | :----: | :----: | :----: | :----: | 
| yolov5n             |  |  |  |  |  |  |  |
| yolov5s             |  |  |  |  |  |  |  |
| yolov5m             |  |  |  |  |  |  |  |
| yolov5l             |  |  |  |  |  |  |  |
| yolov5x             |  |  |  |  |  |  |  |
| yolov5n6            |  |  |  |  |  |  |  |
| yolov5s6            |  |  |  |  |  |  |  |
| yolov5m6            |  |  |  |  |  |  |  |
| yolov5l6            |  |  |  |  |  |  |  |
| yolov5x6            |  |  |  |  |  |  |  |
| YOLOv3              | 83 | 108 | 93 | 100 | 356 | 569 | 561 | 
| YOLOv3FP16          | 84 | 104 | 89 | 101 | 348 | 572 | 565 | 
| YOLOv3Int8LUT       | 86 | 101 | 92 | 100 | 337 | 575 | 572 | 
| YOLOv3Tiny          | 44 | 46 | 41 | 47 | 106 | 165 | 168 | 
| YOLOv3TinyFP16      | 44 | 51 | 41 | 44 | 103 | 165 | 167 | 
| YOLOv3TinyInt8LUT   | 44 | 45 | 39 | 39 | 106 | 160 | 161 | 
| MobileNetV2_SSDLite | 18 | 31 | 31 | 31 | 109 | 141 | 134 | 
| ObjectDetector | 18 | 24 | 26 | 23 | 63 | 86 | 84 | 

### Total Time (ms)

| Model vs. Device    | 11<br>Pro | XS | XS<br>Max | XR | X | 7+ | 7 |
| :---- | :----: | :----: | :----: | :----: | :----: | :----: | :----: | 
| yolov5n             |  |  |  |  |  |  |  |
| yolov5s             |  |  |  |  |  |  |  |
| yolov5m             |  |  |  |  |  |  |  |
| yolov5l             |  |  |  |  |  |  |  |
| yolov5x             |  |  |  |  |  |  |  |
| yolov5n6            |  |  |  |  |  |  |  |
| yolov5s6            |  |  |  |  |  |  |  |
| yolov5m6            |  |  |  |  |  |  |  |
| yolov5l6            |  |  |  |  |  |  |  |
| yolov5x6            |  |  |  |  |  |  |  |
| YOLOv3              | 84 | 108 | 93 | 100 | 357 | 569 | 561 | 
| YOLOv3FP16          | 85 | 104 | 89 | 101 | 348 | 572 | 565 | 
| YOLOv3Int8LUT       | 86 | 102 | 92 | 102 | 338 | 576 | 573 | 
| YOLOv3Tiny          | 45 | 46 | 42 | 48 | 106 | 166 | 169 | 
| YOLOv3TinyFP16      | 45 | 51 | 41 | 44 | 104 | 165 | 167 | 
| YOLOv3TinyInt8LUT   | 45 | 45 | 39 | 40 | 107 | 160 | 161 | 
| MobileNetV2_SSDLite | 19 | 32 | 31 | 32 | 109 | 142 | 134 | 
| ObjectDetector      | 18 | 25 | 26 | 23 | 64 | 87 | 85 | 

### FPS

| Model vs. Device    | 11<br>Pro | XS | XS<br>Max | XR | X | 7+ | 7 |
| :---- | :----: | :----: | :----: | :----: | :----: | :----: | :----: | 
| yolov5n             |  |  |  |  |  |  |  |
| yolov5s             |  |  |  |  |  |  |  |
| yolov5m             |  |  |  |  |  |  |  |
| yolov5l             |  |  |  |  |  |  |  |
| yolov5x             |  |  |  |  |  |  |  |
| yolov5n6            |  |  |  |  |  |  |  |
| yolov5s6            |  |  |  |  |  |  |  |
| yolov5m6            |  |  |  |  |  |  |  |
| yolov5l6            |  |  |  |  |  |  |  |
| yolov5x6            |  |  |  |  |  |  |  |
| YOLOv3              | 9 | 8 | 10 | 9 | 2 | 1 | 1 | 
| YOLOv3FP16          | 9 | 9 | 10 | 8 | 2 | 1 | 1 | 
| YOLOv3Int8LUT       | 9 | 9 | 10 | 9 | 2 | 1 | 1 | 
| YOLOv3Tiny          | 14 | 21 | 22 | 20 | 8 | 5 | 5 | 
| YOLOv3TinyFP16      | 14 | 19 | 23 | 21 | 9 | 5 | 5 | 
| YOLOv3TinyInt8LUT   | 14 | 21 | 24 | 23 | 8 | 5 | 5 | 
| MobileNetV2_SSDLite | 29 | 23 | 23 | 23 | 8 | 6 | 6 | 
| ObjectDetector      | 29 | 23 | 23 | 24 | 14 | 10 | 11 | 

### Get your own model

> Or you can use your own object detection model

## Build & Run

### 1. Prerequisites

#### 1.1 Import object detection model

![모델 불러오기.png](https://github.com/tucan9389/MobileNetApp-CoreML/blob/master/resource/%EB%AA%A8%EB%8D%B8%20%EB%B6%88%EB%9F%AC%EC%98%A4%EA%B8%B0.png?raw=true)

Once you import the model, compiler generates model helper class on build path automatically. You can access the model through model helper class by creating an instance, not through build path.

#### 1.2 Add permission in info.plist for device's camera access

<img width="900" alt="image" src="https://user-images.githubusercontent.com/37643248/188248174-d1d96219-953a-4c56-a274-c85250e9d14b.png">

### 2. Dependencies

No external library yet.

### 3. Code

#### 3.1 Import Vision framework

```swift
import Vision
```

#### 3.2 Define properties for Core ML

```swift
class ViewController: UIViewController {
    //
    // ...
    //

    // MARK: - Vision Properties
    var request: VNCoreMLRequest?
    var visionModel: VNCoreMLModel?

    //
    // ...
    //
}

```

#### 3.3 Configure and prepare the model

```swift
// MARK: - Setup Core ML
extension ViewController {
    func setupModel() {
        if let visionModel = try? VNCoreMLModel(for: objectDectectionModel.model) {
            self.visionModel = visionModel
            request = VNCoreMLRequest(model: visionModel, completionHandler: visionRequestDidComplete)
            request?.imageCropAndScaleOption = .scaleFill
        } else {
            fatalError("fail to create vision model")
        }
    }
}
```

```swift
// MARK: - Post-processing
extension ViewController {
    func visionRequestDidComplete(request: VNRequest, error: Error?) {
        if let predictions = request.results as? [VNRecognizedObjectObservation] {
            // <# TODO #>
        }
    }
}
```

#### 3.4 Inference 🏃‍♂️

```swift
// MARK: - Inference!
extension ViewController {
    func predictUsingVision(pixelBuffer: CVPixelBuffer) {
        let handler = VNImageRequestHandler(cvPixelBuffer: pixelBuffer)
        try? handler.perform([request])
    }
}
```

## Performance Test

(preparing...)


## See also

- [motlabs/awesome-ml-demos-with-ios](https://github.com/motlabs/awesome-ml-demos-with-ios)<br>
  : The challenge using machine learning model created from tensorflow on iOS
- [Machine Learning - Models - Apple Developer](https://developer.apple.com/machine-learning/models)
- [hollance/coreml-survival-guide](https://github.com/hollance/coreml-survival-guide)
- [vonholst/SSDMobileNet_CoreML](https://github.com/vonholst/SSDMobileNet_CoreML)<br>
  : iOS project for object detection(SSDMobileNet V1) using Core ML.
- [ultralytics/yolov5](https://github.com/ultralytics/yolov5)<br>
  : YOLOv5 repository