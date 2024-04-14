# Flutter Firebase Authentication Demo

This Flutter app demonstrates how to implement user authentication (login/sign up) using Firebase Authentication. Users can create an account, sign in with email/password, and sign out using Firebase services.

## Features

- User registration (sign up) with email and password.
- User authentication (login) with registered credentials.
- User sign out functionality.


## Technologies Used

- Flutter SDK
- Firebase Authentication

## Setup Instructions

To run this Flutter app locally, follow these steps:

1. **Clone the repository**:

   ```bash
   git clone https://github.com/Minhal-Ahmed/Flutter_Authentication_app.git
   ```

2. **Navigate to the project directory**:

   ```bash
   cd Flutter_Authentication_app
   ```

3. **Install dependencies**:

   ```bash
   flutter pub get
   ```

4. **Configure Firebase**:

   - Create a new Firebase project at [Firebase Console](https://console.firebase.google.com/).
   - Add an Android/iOS app to your Firebase project and follow the setup instructions to download the `google-services.json` (for Android) or `GoogleService-Info.plist` (for iOS) file.
   - Place the downloaded file into the `android/app` (for Android) or `ios/Runner` (for iOS) directory of your Flutter project.

5. **Run the app**:

   ```bash
   flutter run
   ```

## Firebase Configuration

Ensure the following Firebase services are enabled for this project:

- Firebase Authentication (for user authentication)

## Troubleshooting

If you encounter any issues while setting up or running the app, refer to the [Flutter Documentation](https://flutter.dev/docs) or [Firebase Documentation](https://firebase.google.com/docs) for guidance.

## Contributing

Contributions are welcome! If you'd like to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -am 'Add new feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Create a new Pull Request.

## License

This project is licensed under the [MIT License](LICENSE).

