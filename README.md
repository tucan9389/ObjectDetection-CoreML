# ObjectDetection-CoreML

> supporting models: [`yolov5`](https://github.com/ultralytics/yolov5), [`yolov3`](https://github.com/ultralytics/yolov3)

![platform-ios](https://img.shields.io/badge/platform-ios-lightgrey.svg)
![swift-version](https://img.shields.io/badge/swift-4.2-red.svg)
![lisence](https://img.shields.io/badge/license-MIT-black.svg)

This project is Object Detection on iOS with Core ML.<br>If you are interested in iOS + Machine Learning, visit [here](https://github.com/motlabs/iOS-Proejcts-with-ML-Models) you can see various DEMOs.<br>![SSDMobileNetV2-DEMO](https://user-images.githubusercontent.com/37643248/188248210-2c02790b-6231-4549-8211-e3edcccba9e8.gif)

## Requirements

- Xcode 10.3+
- iOS 13.0+
- Swift 4.2

## How To Build and Run the Project

### 1. Clone the project

```shell
git clone https://github.com/tucan9389/ObjectDetection-CoreML
```

### 2. Prepare Core ML model

- You can download COCO models or another model from [here](#model-size-minimum-ios-version-download-link)

> Or if you want to make and use model with custom dataset,
> 1. follow [roboflow tutorial from scratch](https://blog.roboflow.com/how-to-train-yolov5-on-a-custom-dataset/) or [yolov5 repo's tutorial](https://github.com/ultralytics/yolov5/issues/12)
> 2. and convert the `.pt` model to `.mlmodel` model with [our issue](https://github.com/tucan9389/ObjectDetection-CoreML/issues/6#issuecomment-1235192089).

### 3. Add the model to the project

By default, the project uses the `yolov5s` model. If you want to use another model, you can replace the model file in the project.

<img width="1305" alt="Screen Shot 2022-09-03 at 9 48 43 AM" src="https://user-images.githubusercontent.com/37643248/188249381-391d494d-47f0-4bd7-b70b-88809a2d7f04.png">

<img width="560" alt="Screen Shot 2022-09-03 at 9 46 19 AM" src="https://user-images.githubusercontent.com/37643248/188249388-6b29075b-0d02-4421-addd-e8b830613728.png">

### 4. Set model name properly in `ViewController.swift`

<img width="640" alt="image" src="https://user-images.githubusercontent.com/37643248/188249496-20ba838c-7f0f-4457-adac-2fa11344c7de.png">

### 5. Build and Run

## How To Run with your own model

### 1. Convert your model to Core ML

You can check [here](https://github.com/mshamash/yolov5/blob/master/export.py#L189-L333) to convert your object detection model to Core ML with additional layers for supporting `VNRecognizedObjectObservation` output automatically.

### 2. Follow the steps above from Step 3

## Models

### Model Matadata

<img width="640" alt="image" src="https://user-images.githubusercontent.com/37643248/188037159-93cf79f7-5c21-4fbf-a46e-874109271606.png">

### Model Size, Minimum iOS Version, Download Link

| Model | Size<br>(MB) | Minimum<br>iOS Version | Download<br>Link | Trained Dataset
| :---- | ----: | :----: | ---- | --- | 
| yolov5n.mlmodel | 7.52 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5n.mlmodel) | [COCO](#trained-dataset-infos)
| yolov5s.mlmodel | 28.0 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5s.mlmodel) | [COCO](#trained-dataset-infos)
| yolov5m.mlmodel | 81.2 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5m.mlmodel) | [COCO](#trained-dataset-infos)
| yolov5l.mlmodel | 178.0 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5l.mlmodel) | [COCO](#trained-dataset-infos)
| yolov5x.mlmodel | 331.0 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5x.mlmodel) | [COCO](#trained-dataset-infos)
| yolov5n6.mlmodel | 12.8 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5n6.mlmodel) | [COCO](#trained-dataset-infos)
| yolov5s6.mlmodel | 48.5 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5s6.mlmodel) | [COCO](#trained-dataset-infos)
| yolov5m6.mlmodel | 137.0 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5m6.mlmodel) | [COCO](#trained-dataset-infos)
| yolov5l6.mlmodel | 293.0 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5l6.mlmodel) | [COCO](#trained-dataset-infos)
| yolov5x6.mlmodel | 537.0 | iOS13 | [Link](https://github.com/tucan9389/ObjectDetection-CoreML/releases/download/yolov5-support/yolov5x6.mlmodel) | [COCO](#trained-dataset-infos)
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

## Performance

> Build Setting:<br>
> Xcoede > Build Settings > Apple Clang - Code Generation > Optimization Level > Fastest [-O3]

<img width="560" alt="Screen Shot 2022-09-05 at 4 31 08 PM" src="https://user-images.githubusercontent.com/37643248/188393214-d2e822a6-73b2-4971-a46d-27cdbfc8c61c.png">

### Infernece Time (ms)

| Model vs. Device    | 13<br>Pro | 12<br>Pro | 11<br>Pro | XS | XS<br>Max | XR | X | 7+ | 7 |
| :---- | ----: | ----: | ----: | ----: | ----: | ----: | ----: | ----: | ----: | 
| yolov5n             |  | 24 |  |  |  |  |  |  |  |
| yolov5s             |  | 29 |  |  |  |  |  |  |  |
| yolov5m             |  | 39 |  |  |  |  |  |  |  |
| yolov5l             |  | 38 |  |  |  |  |  |  |  |
| yolov5x             |  | 69 |  |  |  |  |  |  |  |
| yolov5n6            |  | 24 |  |  |  |  |  |  |  |
| yolov5s6            |  | 34 |  |  |  |  |  |  |  |
| yolov5m6            |  | 39 |  |  |  |  |  |  |  |
| yolov5l6            |  | 41 |  |  |  |  |  |  |  |
| yolov5x6            |  | 57 |  |  |  |  |  |  |  |
| YOLOv3              |  | 45 | 83 | 108 | 93 | 100 | 356 | 569 | 561 | 
| YOLOv3FP16          |  | 44 | 84 | 104 | 89 | 101 | 348 | 572 | 565 | 
| YOLOv3Int8LUT       |  | 53 | 86 | 101 | 92 | 100 | 337 | 575 | 572 | 
| YOLOv3Tiny          |  | 36 | 44 | 46 | 41 | 47 | 106 | 165 | 168 | 
| YOLOv3TinyFP16      |  | 33 | 44 | 51 | 41 | 44 | 103 | 165 | 167 | 
| YOLOv3TinyInt8LUT   |  | 39 | 44 | 45 | 39 | 39 | 106 | 160 | 161 | 
| MobileNetV2_SSDLite |  | 17 | 18 | 31 | 31 | 31 | 109 | 141 | 134 | 
| ObjectDetector      |  | 13 | 18 | 24 | 26 | 23 | 63 | 86 | 84 | 

### Total Time (ms)

| Model vs. Device    | 13<br>Pro | 12<br>Pro | | 11<br>Pro | XS | XS<br>Max | XR | X | 7+ | 7 |
| :---- | ----: | ----: | ----: | ----: | ----: | ----: | ----: | ----: | ----: | ----: | 
| yolov5n             |  | 26 |  |  |  |  |  |  |  |
| yolov5s             |  | 31 |  |  |  |  |  |  |  |
| yolov5m             |  | 41 |  |  |  |  |  |  |  |
| yolov5l             |  | 39 |  |  |  |  |  |  |  |
| yolov5x             |  | 72 |  |  |  |  |  |  |  |
| yolov5n6            |  | 25 |  |  |  |  |  |  |  |
| yolov5s6            |  | 36 |  |  |  |  |  |  |  |
| yolov5m6            |  | 41 |  |  |  |  |  |  |  |
| yolov5l6            |  | 42 |  |  |  |  |  |  |  |
| yolov5x6            |  | 59 |  |  |  |  |  |  |  |
| YOLOv3              |  | 46 | 84 | 108 | 93 | 100 | 357 | 569 | 561 | 
| YOLOv3FP16          |  | 45 | 85 | 104 | 89 | 101 | 348 | 572 | 565 | 
| YOLOv3Int8LUT       |  | 54 | 86 | 102 | 92 | 102 | 338 | 576 | 573 | 
| YOLOv3Tiny          |  | 37 | 45 | 46 | 42 | 48 | 106 | 166 | 169 | 
| YOLOv3TinyFP16      |  | 35 | 45 | 51 | 41 | 44 | 104 | 165 | 167 | 
| YOLOv3TinyInt8LUT   |  | 41 | 45 | 45 | 39 | 40 | 107 | 160 | 161 | 
| MobileNetV2_SSDLite |  | 19 | 19 | 32 | 31 | 32 | 109 | 142 | 134 | 
| ObjectDetector      |  | 14 | 18 | 25 | 26 | 23 | 64 | 87 | 85 | 

### FPS

| Model vs. Device    | 13<br>Pro | 12<br>Pro | | 11<br>Pro | XS | XS<br>Max | XR | X | 7+ | 7 |
| :---- | ----: | ----: | ----: | ----: | ----: | ----: | ----: | ----: | ----: | ----: | 
| yolov5n             |  | 19 |  |  |  |  |  |  |  |
| yolov5s             |  | 14 |  |  |  |  |  |  |  |
| yolov5m             |  | 13 |  |  |  |  |  |  |  |
| yolov5l             |  | 14 |  |  |  |  |  |  |  |
| yolov5x             |  | 7 |  |  |  |  |  |  |  |
| yolov5n6            |  | 19 |  |  |  |  |  |  |  |
| yolov5s6            |  | 14 |  |  |  |  |  |  |  |
| yolov5m6            |  | 13 |  |  |  |  |  |  |  |
| yolov5l6            |  | 14 |  |  |  |  |  |  |  |
| yolov5x6            |  | 13 |  |  |  |  |  |  |  |
| YOLOv3              |  | 12 | 9 | 8 | 10 | 9 | 2 | 1 | 1 | 
| YOLOv3FP16          |  | 13 | 9 | 9 | 10 | 8 | 2 | 1 | 1 | 
| YOLOv3Int8LUT       |  | 14 | 9 | 9 | 10 | 9 | 2 | 1 | 1 | 
| YOLOv3Tiny          |  | 14 | 14 | 21 | 22 | 20 | 8 | 5 | 5 | 
| YOLOv3TinyFP16      |  | 14 | 14 | 19 | 23 | 21 | 9 | 5 | 5 | 
| YOLOv3TinyInt8LUT   |  | 11 | 14 | 21 | 24 | 23 | 8 | 5 | 5 | 
| MobileNetV2_SSDLite |  | 19 | 29 | 23 | 23 | 23 | 8 | 6 | 6 | 
| ObjectDetector      |  | 17 | 29 | 23 | 23 | 24 | 14 | 10 | 11 | 

## See also

- [motlabs/awesome-ml-demos-with-ios](https://github.com/motlabs/awesome-ml-demos-with-ios)<br>
  : The challenge using machine learning model created from tensorflow on iOS
- [Machine Learning - Models - Apple Developer](https://developer.apple.com/machine-learning/models)
- [hollance/coreml-survival-guide](https://github.com/hollance/coreml-survival-guide)
- [vonholst/SSDMobileNet_CoreML](https://github.com/vonholst/SSDMobileNet_CoreML)<br>
  : iOS project for object detection(SSDMobileNet V1) using Core ML.
- [ultralytics/yolov5](https://github.com/ultralytics/yolov5)<br>
  : YOLOv5 repository
