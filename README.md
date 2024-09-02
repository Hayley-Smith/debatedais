# Debate Dais

Debate Dais is a platform designed to facilitate structured debates on various topics. Users can engage in debates, learn about logical fallacies, and contribute to a community of thoughtful discussion.

## Getting Started

Follow these instructions to set up the development environment for Debate Dais.

### Prerequisites

Ensure you have the following installed on your machine:

- **Git**: [Download and install Git](https://git-scm.com/downloads)
- **Flutter SDK**: Follow the instructions below to install Flutter.
- **Firebase CLI**: Needed for Firebase integration.
- **Android Studio/VS Code**: For development and running the app on an emulator or physical device.

### Installing Flutter

1. **Clone the Flutter SDK**:
    - For macOS/Linux:
      ```bash
      git clone https://github.com/flutter/flutter.git -b stable
      ```
    - For Windows:
      [Download Flutter SDK](https://flutter.dev/docs/get-started/install/windows) and extract it to your desired location.

2. **Update your PATH**:
    - Add the `flutter/bin` directory to your PATH environment variable.
    - For macOS/Linux:
      ```bash
      export PATH="$PATH:`pwd`/flutter/bin"
      ```
    - For Windows:
      Follow the [Windows setup instructions](https://flutter.dev/docs/get-started/install/windows#update-your-path).

3. **Run Flutter Doctor**:
    - Open a terminal or command prompt and run:
      ```bash
      flutter doctor
      ```
    - Follow the on-screen instructions to install any missing dependencies. This may include installing the Android SDK, Xcode (for macOS), or other components.

### Setting Up Firebase

1. **Install Firebase CLI**:
    - Run the following command to install the Firebase CLI globally:
      ```bash
      npm install -g firebase-tools
      ```

2. **Login to Firebase**:
    - Log in to your Firebase account:
      ```bash
      firebase login
      ```

3. **Create a Firebase Project**:
    - If you don't already have a Firebase project, create one in the [Firebase Console](https://console.firebase.google.com/).

4. **Add Firebase to the Project**:
    - Initialize Firebase in your project:
      ```bash
      firebase init
      ```
    - Follow the prompts to select your Firebase project and services (Firestore, Authentication, etc.).

5. **Configure Firebase in the Flutter Project**:
    - Add the necessary Firebase plugins to your `pubspec.yaml` file:
      ```yaml
      dependencies:
        firebase_core: latest_version
        firebase_auth: latest_version
        cloud_firestore: latest_version
      ```
    - Run `flutter pub get` to install the dependencies.

6. **Add Firebase Configuration**:
    - Download the `google-services.json` file for Android and place it in `android/app`.
    - Download the `GoogleService-Info.plist` file for iOS and place it in `ios/Runner`.

### Running the Project

1. **Connect a Device/Start an Emulator**:
    - Ensure your Android emulator or iOS simulator is running, or connect a physical device.

2. **Run the App**:
    - Use the following command to run the app:
      ```bash
      flutter run
      ```

### Contributing

Contributions are welcome! Please fork this repository and submit a pull request with your changes.

### License

This project is licensed under the MIT License - see the LICENSE file for details.