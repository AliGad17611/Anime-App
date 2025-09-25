# 🎌 Anime App - Flutter Clean Architecture

A modern Flutter application for anime enthusiasts, built with Clean Architecture principles and featuring a comprehensive anime database, search functionality, and personalized user experience.

## 📱 Features

- **🏠 Home**: Browse popular anime and top characters
- **🔍 Search**: Find anime by title, genre, or keywords
- **🌟 Explore**: Discover anime by genres and categories
- **📱 Details**: View detailed anime information and statistics
- **🌐 Language**: Multi-language support with localization
- **⚙️ Settings**: Customize app preferences and configurations
- **💳 Subscriptions**: Premium subscription plans and features

## 🏗️ Architecture Overview

This application follows **Clean Architecture** principles with a clear separation of concerns across three main layers:

```mermaid
graph TB
    subgraph "Presentation Layer"
        UI[UI Widgets]
        BLoC[BLoC Pattern]
        Events[Events]
        States[States]
    end
    
    subgraph "Domain Layer"
        Entities[Entities]
        UseCases[Use Cases]
        Repositories[Repository Interfaces]
    end
    
    subgraph "Data Layer"
        Models[Data Models]
        DataSources[Data Sources]
        RepoImpl[Repository Implementations]
        API[External APIs]
        Cache[Local Cache]
    end
    
    UI --> BLoC
    BLoC --> Events
    BLoC --> States
    BLoC --> UseCases
    UseCases --> Repositories
    Repositories --> RepoImpl
    RepoImpl --> DataSources
    DataSources --> API
    DataSources --> Cache
    Models --> Entities
```

## 🗂️ Project Structure

```
lib/
├── core/                           # Core functionality
│   ├── errors/                     # Error handling
│   │   ├── failures.dart          # Abstract failure classes
│   │   └── exceptions.dart        # Exception definitions
│   ├── network/                   # Network layer
│   │   ├── api_client.dart        # HTTP client setup
│   │   └── network_info.dart      # Network connectivity
│   ├── usecase/                   # Base use case
│   │   └── usecase.dart           # Use case interface
│   └── di/                        # Dependency Injection
│       └── injection_container.dart # GetIt service locator
│
├── features/                      # Feature modules
│   ├── home/                      # Home feature
│   │   ├── domain/
│   │   │   ├── entities/          # Business entities
│   │   │   ├── repositories/      # Repository contracts
│   │   │   └── usecases/          # Business logic
│   │   ├── data/
│   │   │   ├── models/            # Data models
│   │   │   ├── datasources/       # Data source implementations
│   │   │   └── repositories/      # Repository implementations
│   │   └── presentation/
│   │       ├── bloc/              # State management
│   │       ├── views/             # UI screens
│   │       └── widgets/           # Reusable UI components
│   │
│   ├── search/                    # Search functionality
│   ├── explore/                   # Genre-based exploration
│   ├── details/                   # Anime details
│   ├── language/                  # Localization
│   ├── settings/                  # App configuration
│   └── subscriptions/             # Premium features
│
└── main.dart                      # App entry point
```

## 🔄 Data Flow Architecture

### Overall Data Flow

```mermaid
sequenceDiagram
    participant UI as UI Layer
    participant BLoC as BLoC
    participant UC as Use Case
    participant Repo as Repository
    participant DS as Data Source
    participant API as External API
    
    UI->>BLoC: User Action (Event)
    BLoC->>UC: Execute Use Case
    UC->>Repo: Request Data
    Repo->>DS: Fetch from Source
    DS->>API: HTTP Request
    API-->>DS: JSON Response
    DS-->>Repo: Parsed Model
    Repo-->>UC: Domain Entity
    UC-->>BLoC: Success/Failure Result
    BLoC-->>UI: New State
    UI->>UI: Update Interface
```

### Feature-Specific Data Flows

#### 🏠 Home Feature Flow

```mermaid
graph LR
    A[Home View] --> B[Anime BLoC]
    B --> C[Get Popular Anime]
    B --> D[Get Top Characters]
    C --> E[Anime Repository]
    D --> E
    E --> F[Remote Data Source]
    F --> G[Jikan API]
    G --> F
    F --> E
    E --> C
    E --> D
    C --> B
    D --> B
    B --> A
```

#### 🔍 Search Feature Flow

```mermaid
graph LR
    A[Search View] --> B[Search BLoC]
    B --> C[Search Anime Use Case]
    C --> D[Search Repository]
    D --> E[Search Remote Data Source]
    E --> F[Jikan API Search]
    F --> E
    E --> D
    D --> C
    C --> B
    B --> A
```

## 🎯 Clean Architecture Layers

### 1. **Presentation Layer** 📱
- **Responsibility**: UI components and state management
- **Components**:
  - Flutter Widgets (Views)
  - BLoC Pattern (Business Logic Components)
  - Events and States
- **Dependencies**: Domain Layer only

### 2. **Domain Layer** 🧠
- **Responsibility**: Business logic and rules
- **Components**:
  - Entities (Business objects)
  - Use Cases (Business operations)
  - Repository Interfaces (Data contracts)
- **Dependencies**: No dependencies on other layers

### 3. **Data Layer** 💾
- **Responsibility**: Data management and external communication
- **Components**:
  - Models (Data representations)
  - Data Sources (API, Local storage)
  - Repository Implementations
- **Dependencies**: Domain Layer only

## 🔧 Dependencies & State Management

### Key Dependencies

```yaml
dependencies:
  # Core Flutter
  flutter:
    sdk: flutter
  
  # State Management
  flutter_bloc: ^9.1.1
  equatable: ^2.0.7
  
  # Dependency Injection
  get_it: ^8.2.0
  
  # Network & API
  dio: ^5.9.0
  dartz: ^0.10.1
  
  # UI & Responsive Design
  flutter_screenutil: ^5.9.3
  flutter_svg: ^2.2.1
  google_fonts: ^6.3.1
  google_nav_bar: ^5.0.7
  
  # Local Storage
  hive: ^2.2.3
  hive_flutter: ^1.1.0
```

### State Management Pattern

```mermaid
graph TB
    subgraph "BLoC Pattern"
        Event[Events] --> BLoC[BLoC]
        BLoC --> State[States]
        State --> UI[UI Updates]
    end
    
    subgraph "Event Types"
        LoadData[Load Data Events]
        UserAction[User Action Events]
        Navigation[Navigation Events]
    end
    
    subgraph "State Types"
        Initial[Initial State]
        Loading[Loading State]
        Loaded[Loaded State]
        Error[Error State]
    end
    
    LoadData --> Event
    UserAction --> Event
    Navigation --> Event
    
    BLoC --> Initial
    BLoC --> Loading
    BLoC --> Loaded
    BLoC --> Error
```

## 🌐 API Integration

### Jikan API Integration

The app integrates with the [Jikan API](https://jikan.moe/) for anime data:

```mermaid
graph LR
    subgraph "API Endpoints"
        A[/anime - Search Anime]
        B[/top/anime - Popular Anime]
        C[/top/characters - Top Characters]
        D[/anime/{id} - Anime Details]
        E[/genres/anime - Genre List]
    end
    
    subgraph "App Features"
        F[Search Feature]
        G[Home Feature]
        H[Details Feature]
        I[Explore Feature]
    end
    
    A --> F
    B --> G
    C --> G
    D --> H
    E --> I
```

## 🔄 Error Handling

### Error Flow Architecture

```mermaid
graph TB
    A[Data Source] --> B{Network Request}
    B -->|Success| C[Parse Response]
    B -->|Failure| D[Network Exception]
    C -->|Success| E[Return Model]
    C -->|Failure| F[Server Exception]
    D --> G[Network Failure]
    F --> H[Server Failure]
    E --> I[Success Result]
    G --> J[Error State]
    H --> J
    I --> K[Loaded State]
```

### Error Types

- **ServerFailure**: API server errors
- **NetworkFailure**: Connectivity issues
- **CacheFailure**: Local storage errors
- **ValidationFailure**: Input validation errors

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (^3.9.0)
- Dart SDK
- Android Studio / VS Code
- Android SDK / iOS SDK

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd anime_app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Build Commands

```bash
# Debug build
flutter run

# Release build (Android)
flutter build apk --release

# Release build (iOS)
flutter build ios --release
```

## 🔮 Future Enhancements

- [ ] Offline caching with Hive
- [ ] Push notifications
- [ ] User authentication
- [ ] Favorites and watchlist
- [ ] Social features and reviews
- [ ] Dark mode theme
- [ ] Advanced filtering options
- [ ] Video streaming integration

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Jikan API](https://jikan.moe/) for providing comprehensive anime data
- [Flutter](https://flutter.dev/) team for the amazing framework
- [BLoC Library](https://bloclibrary.dev/) for state management
- Open source community for the incredible packages

---

**Built with ❤️ using Flutter and Clean Architecture**