//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Noah Carpenter on 2024-12-16
//
//  🐱 Follow me on YouTube! 🎥
//  https://www.youtube.com/@noahdoescoding
//  Like and Subscribe for coding tutorials and fun! 💻✨
//  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
//  Dream Big, Code Bigger
//

import SwiftUI

// ContentView is the main view that displays the weather forecast for multiple days
struct ContentView: View {
    var body: some View {
        HStack {
            // DayForecast view for Monday with a high of 70, low of 40, and no rain
            DayForecast(day: "mon", high: 70, low: 40, isRainy: false)
            
            // DayForecast view for Tuesday with a high of 50, low of 35, and rain
            DayForecast(day: "tues", high: 50, low: 35, isRainy: true)
                .padding() // Add padding around the Tuesday forecast
        }
    }
}

#Preview {
    ContentView()
}

// DayForecast view is responsible for displaying the weather forecast for a specific day
struct DayForecast: View {
    let day: String   // The day of the week
    let high: Int     // The high temperature for the day
    let low: Int      // The low temperature for the day
    let isRainy: Bool // Boolean to determine if the weather is rainy

    // Computed property to return the appropriate icon for the weather
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill" // Icon for rainy weather
        } else {
            return "sun.max.fill"    // Icon for sunny weather
        }
    }
    
    // Computed property to return the appropriate icon color based on weather condition
    var iconColor: Color {
        if isRainy {
            return Color.blue // Blue for rainy weather
        } else {
            return Color.yellow // Yellow for sunny weather
        }
    }
    
    var body: some View {
        VStack {
            // Display the day of the week
            Text(day)
                .font(Font.largeTitle)
            
            // Display the weather icon based on the rain condition
            Image(systemName: iconName)
                .foregroundStyle(iconColor) // Apply the color to the icon
                .font(Font.largeTitle)
                .padding(5)
            
            // Display the high and low temperatures for the day
            Text("\(high)")
                .font(Font.headline)
            Text("\(low)")
                .font(Font.headline)
                .foregroundStyle(Color.secondary) // Apply secondary color to low temperature
        }
        .padding() // Add padding around the entire forecast
    }
}
