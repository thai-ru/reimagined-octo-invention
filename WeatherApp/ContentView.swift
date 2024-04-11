//
//  ContentView.swift
//  WeatherApp
//
//  Created by Robinson Thairu on 10/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Malindi Weather Forecast")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundStyle(.blue)
        }
        .padding()
        
        VStack {
            HStack {
                ForecastView(
                    day: "Mon",
                    highTemp: 21,
                    lowTemp: 15
                )
                ForecastView(
                    day: "Tue",
                    highTemp: 25,
                    lowTemp: 15
                )
                ForecastView(
                    day: "Wed",
                    highTemp: 30,
                    lowTemp: 15
                )
            }
            HStack {
                ForecastView(
                    day: "Thur",
                    highTemp: 18,
                    lowTemp: 15
                )
                ForecastView(
                    day: "Fri",
                    highTemp: 19,
                    lowTemp: 14
                )
                ForecastView(
                    day: "Sat",
                    highTemp: 29,
                    lowTemp: 16
                )
            }
            ForecastView(
                day: "Sun",
                highTemp: 33,
                lowTemp: 15
            )
        }
    }
}

#Preview {
    ContentView()
}

struct ForecastView: View {
    
    var day: String
    var highTemp: Int
    var lowTemp: Int
    
    var iconName: String {
        if (highTemp < 19) {
            "cloud.heavyrain.fill"
        } else if (highTemp < 24) {
            "cloud.bolt.rain.fill"
        } else if (highTemp < 28) {
            "cloud.rain.fill"
        } else if (highTemp > 29) {
            "sun.max.fill"
        } else {
            "cloud.rain.fill"
        }
    }
    
    var iconColor: Color {
        if (highTemp < 19) {
            Color.gray
        } else if (highTemp < 24) {
            Color.blue
        } else if (highTemp < 28) {
            Color.cyan
        } else if (highTemp > 29) {
            Color.yellow
        } else {
            Color.black
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(.title)
                .padding(.bottom)
            
            Text("High: \(highTemp)")
                .font(.subheadline)
                .fontWeight(.medium)
            
            Text("Low: \(lowTemp)")
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}
