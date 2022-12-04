# FitX

The Gamified Fitness App for the COMP3330 course project.

## Group Members


| Name                | UID             |
|---------------------|-----------------|
| Kritik Satija       | 3035666645      |
| Abhigyan Kashyap    | 3035661669      |
| Raghav Agarwal      | 3035720697      |
| Mohammad Muttasif   | 3035667778      |

## Getting Started

Run the following commands to ensure the project compiles:

```
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
```

This command creates the generated files that parse each Record from Firestore into a schema object.

### Login Credentials for Testing:
Email: abhigyankkashyap@gmail.com <br>
Password: Password

Email: ksatija@connect.hku.hk <br>
Password: Kritik11

Email: agarwal.raghav63@gmail.com <br>
Password: Password

### Unimplemented Features:

1. Reset password button
2. Activity pages for all activies except Workout (Easy)
3. Change profile photo button
4. Enable Fitbit connectivity
5. Leaderboard

### Known issues/bugs:

1. Profile photo stays the same for all users
2. Initial user points allocation is hardcoded. Registering a new user currently does not allocate any points

