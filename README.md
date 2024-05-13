# Digit Recognition Flutter App

This Flutter application utilizes a machine learning model to recognize handwritten digits from 0 to 9 from images. The model was trained using Python with the TensorFlow library, and the dataset used for training was collected from Kaggle. You can find the dataset [here](https://www.kaggle.com/datasets/avnishnish/mnist-original?select=mnist-original.mat).

## Technologies Used

- Flutter: A UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
- Python: A high-level programming language used for building machine learning models and backend development.
- TensorFlow: An open-source machine learning framework for building and training machine learning models, developed by Google.
- Dart: A client-optimized programming language for apps on multiple platforms.

## Model Training

The Python script `project-1.ipynb` contains the code used to train the machine learning model. This script utilizes TensorFlow for building and training the model on the provided dataset.

## Flutter App

The APK file for the Flutter app can be downloaded from [here](https://drive.google.com/file/d/1cidPW47IeWNKFKPdkQmbFRXBKPeb8QHa/view?usp=sharing). The app allows users to capture or select images containing handwritten digits and then processes them through the trained model to recognize the digit present in the image.

## Usage

1. Install the Flutter app by downloading the APK from [here](https://drive.google.com/file/d/1cidPW47IeWNKFKPdkQmbFRXBKPeb8QHa/view?usp=sharing).
2. Open the app on your device.
3. Use the camera or select images from your device's gallery containing handwritten digits.
4. The app will process the image using the trained model and display the recognized digit.

## Future Improvements

Future updates to this application may include:

- Recognition of larger digits, such as those found on number plates.
- Expansion of the model to recognize a wider range of classes beyond just digits.
- Enhancements to image processing algorithms for better recognition accuracy.

## Sample Images

Sample images used for testing the application can be found below:

1. [Sample Image 1](https://drive.google.com/file/d/1AHmCFVJ4Tem6O0zuzVbuYfOilBMR8A7L/view?usp=sharing)
2. [Sample Image 2](https://drive.google.com/file/d/1KRa3UQWZQ-FWHNvviu67tsXT6K9Bzt3T/view?usp=sharing)

Feel free to contribute to the development of this app by providing feedback or suggesting improvements. Happy digit recognition! 🚀
