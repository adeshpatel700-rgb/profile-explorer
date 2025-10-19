# Profile Explorer App

A beautiful Flutter application that displays random user profiles in an interactive grid layout. Users can view detailed profiles, like/unlike users, and explore profile information with smooth animations and transitions.

## Features

✨ **Core Features:**
- Browse 20 random user profiles in a responsive grid layout
- View detailed profile information with large profile pictures
- Like/unlike profiles with persistent state syncing
- Smooth hero animations when navigating to profile details
- Pull-to-refresh to load new profiles
- Loading and error state handling
- Clean architecture with Provider state management

🎁 **Bonus Features:**
- Heart icon animation with elastic effect
- Hero transitions for smooth image navigation
- Responsive layout that works on different screen sizes
- Cached network images for better performance

## Screenshots

### Home Screen
![Home Screen](screenshots/home_screen.png)

### Profile Detail Screen
![Profile Detail](screenshots/profile_detail.png)

### Liked Profiles
![Liked Profiles](screenshots/liked_profiles.png)

## Project Architecture

The app follows **Clean Architecture** with proper separation of concerns:

```
lib/
├── main.dart                          # App entry point
├── models/
│   └── user_profile.dart             # Data model
├── data/
│   └── services/
│       └── api_service.dart          # API integration
└── presentation/
    ├── providers/
    │   └── profile_provider.dart     # State management (Provider)
    ├── screens/
    │   ├── home_screen.dart          # Home page
    │   └── profile_detail_screen.dart # Detail page
    └── widgets/
        └── profile_card.dart         # Reusable card component
```

## Tech Stack

- **Framework:** Flutter 3.0+
- **State Management:** Provider 6.0+
- **Networking:** HTTP 1.1+
- **Image Caching:** Cached Network Image 3.3+
- **API:** RandomUser.me API

## Getting Started

### Prerequisites

- Flutter SDK 3.0 or higher
- Dart 3.0 or higher
- Android Studio / Xcode (for emulator)
- Git

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/YOUR_USERNAME/profile-explorer.git
   cd profile-explorer
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the app:**
   ```bash
   flutter run
   ```

### Running Tests

Execute the widget tests:
```bash
flutter test
```

## Usage

### Home Screen
- View profiles in a 2-column grid layout
- Tap the heart icon to like/unlike a profile
- Tap on a profile card to view detailed information
- Pull down to refresh and load new profiles

### Profile Detail Screen
- View a large profile picture with hero animation
- See detailed user information (name, age, location)
- Toggle like status with animated heart icon
- Navigate back to home screen

## API Endpoint

The app uses the public **RandomUser.me API**:
```
https://randomuser.me/api/?results=20
```

**Data fields used:**
- `name.first` - First name
- `name.last` - Last name
- `picture.large` - Large profile picture
- `dob.age` - Age
- `location.city` - City
- `location.country` - Country
- `login.uuid` - Unique ID

## State Management

**Provider Pattern:** All app state is managed through `ProfileProvider` which handles:
- Fetching profiles from API
- Managing like/unlike functionality
- Loading and error states
- Data persistence across screens

Like status syncs seamlessly between the home screen and detail screen.

## Features Details

### Like/Unlike Functionality
- Like status is stored in memory during the app session
- Syncs automatically across all screens
- Animated heart icon with elastic effect

### Hero Transitions
- Smooth image animation when navigating to detail screen
- Uses Flutter's Hero widget for seamless transitions

### Pull-to-Refresh
- Swipe down on the grid to reload profiles
- Fresh data fetched from API
- Loading indicator while fetching

### Error Handling
- Network errors are caught and displayed
- User-friendly error messages
- Retry button to attempt loading again

## Performance Optimizations

- Cached network images to reduce API calls
- Lazy loading in grid view
- Efficient state management with Provider
- Proper disposal of resources

## Future Enhancements

- 🔍 Search functionality
- 🌐 Filter by country/city
- 💾 Local database integration
- 📱 Share profile feature
- 🌙 Dark mode support

## Testing

The app includes comprehensive widget tests:
- App launch verification
- UI widget presence tests
- Grid and card rendering
- Loading states
- Scaffold and layout tests

Run tests with:
```bash
flutter test
```

## Troubleshooting

### Build Issues
```bash
flutter clean
flutter pub get
flutter run
```

### Emulator Storage Issues
```bash
adb emu kill
emulator -avd sdk_google_phone_64 -wipe-data
```

### API Connection Issues
- Ensure you have internet connection
- Check if randomuser.me API is accessible
- Try again after a few moments

## Contributing

Feel free to fork, modify, and submit pull requests!

## License

This project is open source and available under the MIT License.

## Author

**Adesh Chaudhary**
- GitHub: [@adeshpatel700-rgb](https://github.com/adeshpatel700-rgb)

## Acknowledgments

- [RandomUser.me API](https://randomuser.me) - For providing random user data
- [Flutter Documentation](https://flutter.dev/docs)
- [Provider Package](https://pub.dev/packages/provider)

---

**Made with ❤️ using Flutter**