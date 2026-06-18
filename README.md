# 🌦️ SwiftUI Weather Forecast

A SwiftUI weather app that fetches and displays forecast data — demonstrating API networking, JSON decoding, and rendering weather conditions in a clean SwiftUI interface.

---

## 🤔 What this is

This project builds a weather forecast UI in SwiftUI: fetching weather data from a weather API, decoding the JSON response into `Codable` Swift models, and presenting current conditions plus a multi-day forecast. It covers the full async networking cycle with loading and error states.

## ✅ Why you'd use it

- **Weather API integration** — fetch current and forecast weather data
- **Codable models** — decode nested JSON weather responses into typed structs
- **Async/await networking** — clean `URLSession` calls with `.task {}` in SwiftUI
- **Forecast list** — displays daily forecast rows with temperature and condition icons
- **Loading/error handling** — manages in-flight, success, and failure UI states

## 📺 Watch on YouTube

[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch%20the%20Tutorial-red?style=for-the-badge&logo=youtube)](https://youtu.be/_utOlpGlhes)

> This project was built for the [NoahDoesCoding YouTube channel](https://www.youtube.com/@noahdoescoding).

---

## 🚀 Getting Started

### 1. Clone the Repo
```bash
git clone https://github.com/NDCSwift/SwiftUIWeatherForecast.git
cd SwiftUIWeatherForecast
```

### 2. Open in Xcode
- Double-click `WeatherForecast.xcodeproj`

### 3. Set Your Development Team
In Xcode: **TARGET → Signing & Capabilities → Team**

### 4. Update the Bundle Identifier
Change `com.example.MyApp` to a unique identifier (e.g., `com.yourname.WeatherForecast`).

---

## 🛠️ Notes

- If you see a code signing error, check that Team and Bundle ID are set.

## 📦 Requirements

- iOS 16+
- Xcode 15+
- Swift 5.9+

---

📺 [Watch the guide on YouTube](https://youtu.be/_utOlpGlhes)
