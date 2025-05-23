# drink_app
A drink app

# Project creating for all platforms
```
flutter create --platforms=android,ios,web,windows,macos,linux drink_tracker
```

# LIBS
for page navigation 
```
flutter pub add go_router
flutter pub add flutter_hooks
flutter pub add sqflite
flutter pub add provider

flutter pub get
```

# deploy
flutter build ios --release
open ios/Runner.xcworkspace

# sqflite error ios deploy
cd ios
pod install
cd ..
flutter run