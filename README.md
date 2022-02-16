# Note

A simple note take app

## What is included
* Flutter Version Management
* App Translation with GoogleSheet
* App Flavor
* App Environment 
* Flutter Riverpod StateManagement
* Flutter Secure Storage
* Drift - Sqlite Database
* Dio / Retrofit
* CodeMagic - CI/CD
## Getting Started with this project

## 1: Flutter command:
* flutter pub get

## 2: Flutter version management
* dart pub global activate fvm (this will install FVM or update it)
* fvm list (this will list the flutter version that is installed in your machine)
* fvm releases (list all the flutter version)
* fvm install 2.8.1 (this will install the flutter version 2.8.1)
* fvm use 2.8.1 (change the flutter version for current project)

## 3: Flutter translation (optional you get it from me or create your own)
* follow this steps  (https://github.com/roipeker/flutter_translation_sheet/wiki/Google-credentials)
* download the json file
* rename the json to credentials.json and place in you project root folder
* open your terminal and type : fts run
* for more about integrate with flutter intl package : (https://github.com/roipeker/flutter_translation_sheet/wiki/Integration-with-Flutter-Intl)


## Run different flavor (command line)
* flutter run --flavor dev -t main_dev.dart
* flutter run --flavor uat -t main_uat.dart
* flutter run --flavor prod -t main_prod.dart

## Run different flavor from VS Code
* Run and Debug > Select Flavor From Dropdown > Click  on Run Button

## Useful command
* fvm flutter pub run build_runner build --delete-conflicting-outputs
* fvm flutter pub run build_runner watch --delete-conflicting-outputs
* fts extract -s -p lib/ -o strings/strings.yaml (extract string to strings/strings.yaml)