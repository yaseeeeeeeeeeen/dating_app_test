# Flutter Dating Application View - Interview Task

## Overview

This application was developed as part of an interview task for the Flutter Developer position at M2B Ventures. The goal of this assignment was to build a chat and compliments view with dynamic data handling, using Flutter and Bloc (Cubit) for state management.

## Implementations & Features

### 1. **Cubit Instead of Bloc**

- Used **Cubit** for state management instead of Bloc, as the data handling in this application is not complex.
- This approach provides easier management and better understanding of states.

### 2. **Randomized API for User Data**

- Implemented a **randomizer API** to fetch user details like images, names, and ages.
- Ensures a dynamic experience by displaying different users each time.

### 3. **Randomized Messages & Data**

- Chat messages are **randomized** and not static.
- Users receive different **new matches** and **compliments** dynamically.
- Math and logic-based randomization techniques were used to keep the UI fresh.

### 4. **New Matches & Compliments Randomization**

- New matches and compliments are **randomized instead of being static** (like in Figma UI design).
- Used **math operations and Cubit** to randomly assign properties like:
  - **New Matches:** Only **4/1% of users** are marked as new matches.
  - **Compliments:** Only **3/1% of users** are marked as new.
  - **Verified Users:** Some users are randomly assigned a **verified badge**.

### 5. **Font Localization**

- **Ubuntu font** is locally added and implemented for better typography and readability.

## Technologies Used

- **Flutter** (for UI development)
- **Cubit (Flutter Bloc)** (for state management)
- **Dart** (backend logic)
- **Randomizer API** (to fetch user data dynamically)

## Running Instructions

Follow these steps to run the application locally:

1. **Clone the Repository:**
   ```sh
   git clone <repository-url>
   cd <project-folder>
   ```

2. **Install Dependencies:**
   ```sh
   flutter pub get
   ```

3. **Run the Application:**
   ```sh
   flutter run
   ```

   - If running on an emulator, ensure the emulator is properly set up and running.
   - If running on a physical device, enable **Developer Mode** and **USB Debugging**.


## Assignment Details

This project was built as part of an interview task received from **M2B Ventures**.&#x20;

---

