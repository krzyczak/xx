# XX - Twitter/X.com Wrapper App

A lightweight Android app that intercepts Twitter and X.com links and opens them in a WebView, eliminating the need to install the official Twitter app.

## Features

- Opens all twitter.com and x.com links
- Full JavaScript support
- Back button navigation
- No official Twitter app required
- Minimal permissions (only Internet access)

## Download

Download the latest APK from the [Releases](../../releases) page or from the [Actions](../../actions) tab after each build.

## Building

### Prerequisites
- Android Studio Arctic Fox or newer
- JDK 17

### Build Steps

1. Clone the repository
```bash
git clone https://github.com/yourusername/xx.git
cd xx
```

2. Build the app
```bash
./gradlew assembleDebug
```

The APK will be generated at `app/build/outputs/apk/debug/app-debug.apk`

### Automated Builds

This project uses GitHub Actions to automatically build APKs on every push to main/master branch. The built APKs are available as artifacts in the Actions tab.

## Installation

1. Download the APK
2. Enable "Install from Unknown Sources" in Android settings
3. Install the APK
4. When clicking Twitter/X links, choose "XX" from the app picker

## License

This project is provided as-is for educational purposes.