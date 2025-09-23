# Flash Carte App

A **scalable, maintainable Flutter app** demonstrating **Clean Architecture** principles with **Bloc, GoRouter, GetIt, Isar DB, and more**.

This app is part of my **blog series** teaching how to build **scalable Flutter apps** using Clean Architecture, structured step-by-step while building a **Vocabulary Flashcard App**.


## 🚀 Features

- **Clean Architecture**: presentation, domain, and data layers clearly separated
- **State management with Cubit (flutter\_bloc)**
- **Responsive design with `flutter_screenutil`**
- **Internationalization with `flutter_localizations` and `intl`**
- **Dark and light theme switching**
- **Navigation with `go_router`**
- **Dependency Injection with `get_it`**
- **Local persistence with Isar DB (in upcoming parts)**

## 🗂️ Project Structure

```
lib/
├── core/
│   ├── di/
│   ├── error/
│   ├── localization/
│   ├── router/
│   ├── theme/
│   ├── usecase/
│   ├── utils/
│   └── widgets/
│
├── features/
│   └── cards/
│       ├── data/
│       │   ├── datasources/
│       │   ├── mappers/
│       │   ├── models/
│       │   └── repositories/
│       ├── domain/
│       │   ├── datasources/
│       │   ├── entities/
│       │   ├── repositories/
│       │   └── usecases/
│       └── presentation/
│           ├── cubit/
│           ├── pages/
│           └── widgets/
│
├── app.dart
└── main.dart
```

<table>
  <tr>
    <td align="center" valign="center"><img src="./media/2.png?raw=true" width="100%"></td>
    <td align="center" valign="center"><img src="./media/3.png?raw=true" width="100%"></td>
    <td align="center" valign="center"><img src="./media/1.png?raw=true" width="100%"></td>
  </tr>
</table>

## 🛠️ Getting Started

### Clone the repository

```bash
git clone https://github.com/baguilar6174/flutter-flashcarte-app.git

cd flutter-flashcarte-app
```

### Install dependencies

```bash
flutter pub get
```

## Generate files

```bash
flutter pub run build_runner build
```

### Run the app

```bash
flutter run
```

## 🤝 Contributing

If you find issues or have improvements, feel free to open an issue or a pull request to grow this learning repository together.

---

## Stay in touch

- Website - [www.bryan-aguilar.com](https://www.bryan-aguilar.com/)
- Medium - [baguilar6174](https://baguilar6174.medium.com/)
- LinkedIn - [baguilar6174](https://www.linkedin.com/in/baguilar6174)