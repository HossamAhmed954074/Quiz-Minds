# Quiz Minds 🧠📱

Quiz Minds is a modern Flutter-based quiz app designed with clean architecture principles, state management using BLoC, and full Firebase integration. The app is structured for scalability, testability, and high performance.

---

## 🚀 Features

- 🔐 Firebase Authentication (including Google Sign-In)
- 🧠 BLoC for robust state management
- 💾 SharedPreferences for local storage
- 📡 Connectivity checking
- 📊 Leaderboard management
- 🎯 Portrait-only orientation
- ✅ Tree-shaking optimization to reduce app size

---

## 📂 Project Structure

lib/
├── main.dart
├── firebase_options.dart
├── core/
│ ├── errors/ # Firebase & Google sign-in failure handlers
│ ├── helper/ # Utility helpers (connectivity, tabs, etc.)
│ ├── quizes/ # Quiz models
│ ├── router/ # AppRouter (MaterialApp.router based navigation)
│ ├── secrets/ # API keys or secrets (example file)
│ ├── services/ # Auth, data, and leaderboard services
│ ├── utils/ # Constants, styles, asset paths
│ └── widgets/ # Shared UI widgets (snackbars, loaders)
├── features/
│ ├── auth/ # Firebase Auth & Google sign-in 
│ ├── getStarted/ # Screen to Go LogIn/SignIn or go as Guist
│ ├── home/ # have categories and Bottom NavigationBar
│ ├── onBoarding/ # simple image to show what is app
│ ├── profile/ # as a user info and some sittengs
│ ├── quizes/ # as a quizes categories and make a quiz
│ ├── rating/ # have a all Rating users in app and top 3 and top 10



yaml
Copy
Edit

---

## 🧪 State Management

The app uses **BLoC (Business Logic Component)** to manage state in a reactive and testable way. This ensures better separation between UI and business logic.

---

## 💾 Local Storage

`SharedPreferences` is used to:
- Store first-time app launch flag
- Persist basic user session settings






