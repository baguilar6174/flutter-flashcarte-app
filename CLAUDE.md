# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

### Core Commands
- `flutter pub get` - Install dependencies
- `flutter run` - Run the app in development mode
- `flutter build apk` - Build Android APK
- `flutter build ios` - Build iOS app
- `flutter analyze` - Run static analysis
- `flutter test` - Run unit tests

### Code Generation
- `dart run build_runner build` - Generate Isar database models (*.g.dart files)
- `dart run build_runner build --delete-conflicting-outputs` - Force regenerate models
- `flutter gen-l10n` - Generate localization files from ARB files

### Localization
- Localization files are in `lib/core/localization/`
- ARB files: `intl_en.arb`, `intl_es.arb`
- Generated files go to `lib/core/localization/generated/`

## Architecture Overview

This Flutter app follows **Clean Architecture** principles with clear separation between layers:

### Layer Structure
```
lib/
├── core/                    # Shared infrastructure
│   ├── di/                 # Dependency injection (GetIt service locator)
│   ├── error/              # Error handling and failures
│   ├── localization/       # i18n with flutter_localizations
│   ├── router/             # GoRouter navigation setup
│   ├── theme/              # Material Design themes (light/dark)
│   ├── usecase/            # Base usecase abstraction
│   ├── utils/              # Shared utilities
│   └── widgets/            # Reusable UI components
│
└── features/               # Feature-based modules
    ├── cards/              # Flashcard management
    │   ├── data/           # Data layer (models, datasources, repositories)
    │   ├── domain/         # Domain layer (entities, usecases, repository interfaces)
    │   └── presentation/   # UI layer (pages, widgets, cubits)
    └── profile/            # User preferences and settings
```

### Key Architectural Patterns

**State Management**: BLoC pattern using `flutter_bloc` (Cubit specifically)
- Cubits handle business logic and state updates
- Registered in DI container and provided via BlocProvider

**Dependency Injection**: GetIt service locator pattern
- All dependencies registered in `lib/core/di/dependecy_injection.dart`
- Access dependencies using `sl<T>()` where `sl` is the GetIt instance

**Navigation**: GoRouter with StatefulShellRoute for bottom navigation
- Routes defined as enum in `lib/core/router/app_router.dart`
- Supports nested navigation with separate navigator keys

**Database**: Isar (NoSQL) for local data persistence
- Models annotated with `@collection` for Isar
- Code generation required via `build_runner`
- Database service initialized in DI setup

**Data Flow**: Repository pattern with mappers
- Domain entities represent business logic
- Data models handle persistence layer
- Mappers convert between entities and models
- Datasources abstract data access (currently Isar implementation)

### Design System
- **Responsive Design**: Uses `flutter_screenutil` with 375x667 design size
- **Theming**: Material 3 design system with light/dark theme support
- **Localization**: Supports English and Spanish via ARB files
- **Typography**: Consistent text scaling disabled for predictable UI

### Key Dependencies
- `flutter_bloc`: State management
- `go_router`: Declarative routing
- `get_it`: Dependency injection
- `isar`: Local database
- `flutter_screenutil`: Responsive design
- `equatable`: Value equality for state objects
- `fpdart`: Functional programming utilities

## Development Guidelines

### File Organization
- Use barrel exports (index files) to simplify imports
- Group related functionality in feature folders
- Keep UI, business logic, and data layers separated

### Code Generation
- Run code generation after modifying Isar models
- Generated files (*.g.dart) are committed to version control
- Localization files auto-generate via `flutter gen-l10n`

### State Management
- Use Cubit over Bloc for simpler state management
- Emit new state objects rather than mutating existing ones
- Handle loading, success, and error states appropriately

### Database Operations
- All database operations go through repository pattern
- Use mappers to convert between domain entities and data models
- Handle database initialization in service locator

## Current Implementation Status
The app currently has basic structure with:
- User preferences (theme switching)
- Navigation framework
- Flashcard domain models and entities
- Basic repository implementation (in progress)

Next development areas likely include completing CRUD operations for flashcards and implementing study session functionality.