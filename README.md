# FitX

The Gamified Fitness App.

## Getting Started

Run the following commands to ensure the project compiles:

```
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
```

This command creates the generated files that parse each Record from Firestore into a schema object.

### Unimplemented Features:

1. Reset password button
2. Activity pages for all activies except Workout (Easy)
3. Change profile photo button
4. Enable Fitbit connectivity
5. Leaderboard

### Known issues/bugs:

1. Profile photo stays the same for all users
2. Sometimes all stats appear to be 0 just after login. Need to change page from bottom navigation bar and return to Home to see values

