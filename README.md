# Flutter architecutre demo Using MVVM With Clean Architecture and Bloc state management

### 📌 About this project:

This Flutter application fetches and displays a list of games from an external API, providing
detailed game information, sorting options, and a favorites feature. Built with clean and testable
architecture, the project ensures scalability and maintainability. It follows best practices, using
Flutter BLoC for state management and Hive for local storage, delivering a seamless and efficient
user experience. 🚀

## ✨ Features

* 📌 Game Listing – Browse a list of games and sort them based on different criteria.
* 🔍 Game Details – View in-depth game descriptions, requirements, and media.
* ⭐ Favorites System – Add and remove games from your favorites.
* ⚡ Efficient State Management – Implemented using Flutter Bloc (BLoC pattern).
* 💾 Local Storage – Save favorite games using Hive database.
* 🚀 Optimized Performance – Designed with best practices for responsiveness and speed.

## Technologies Used:

* MVVM and Clean Architecture pattern
* Flutter bloc for state management
* Dio for the Network layer
* Freezed for generating the bloc's boilerplates
* Hive for local database

### Exploration Summary

| State Manager | Applied | Unit tests  | Widget tests | Integration tests |  
|---------------|---------|:-----------:|--------------|-------------------| 
| Flutter bloc  | Yes     | Coming soon | Coming soon  | Coming soon       |

___

### API Used:

* https://www.freetogame.com/api-doc

## UI design

 <p><img src="screenshot/app_ui.png" alt="This is the app ui"></p>

## Getting Started

Before running the app, you have to run:

`flutter pub get`

`flutter pub run build_runner build` or `dart run build_runner build --delete-conflicting-outputs`
