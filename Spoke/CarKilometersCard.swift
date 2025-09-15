//
//  CarKilometersCard.swift
//  Spoke
//
//  Created by Jonathan Corpuz on 2025-09-14.
//

import Foundation
import SwiftUI

struct CarKilometersCard: View {
    let serviceType: String
    let currentKilometers: Double
    let lastServiceKm: Double
    let nextServiceKm: Double
    
    var body: some View {
        VStack(spacing: 16) {
            // Header with car icon
            HStack {
                Image(systemName: "car.fill")
                    .foregroundColor(.blue)
                    .font(.title2)
                
                Text(serviceType)
                    .font(.headline)
                    .fontWeight(.medium)
                
                Spacer()
            }
            
            // Main kilometers display
            VStack(alignment: .leading, spacing: 8) {
                HStack(alignment: .bottom) {
                    Text("\(Int(currentKilometers))")
                        .font(.system(size: 32, weight: .bold, design: .rounded))
                        .foregroundColor(.primary)
                    
                    Text("km")
                        .font(.title3)
                        .foregroundColor(.secondary)
                        .padding(.bottom, 2)
                    
                    Spacer()
                }
                
                Text("Current mileage")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            // Service information
            VStack(spacing: 8) {
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Last Service")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                        Text("\(Int(lastServiceKm)) km")
                            .font(.subheadline)
                            .fontWeight(.medium)
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing, spacing: 4) {
                        Text("Next Service")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                        Text("\(Int(nextServiceKm)) km")
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .foregroundColor(.green)
                    }
                }
                
                // Progress bar for next service
                ProgressView(value: (currentKilometers - lastServiceKm) / (nextServiceKm - lastServiceKm))
                    .progressViewStyle(LinearProgressViewStyle(tint: .blue))
                    .scaleEffect(x: 1, y: 0.5)
                
                let kmUntilService = nextServiceKm - currentKilometers
                Text("\(Int(max(0, kmUntilService))) km until next service")
                    .font(.caption2)
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, alignment: .center)
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(red:0.137, green:0.133, blue: 0.153))
                .shadow(color: .black.opacity(0.1), radius: 8, x: 0, y: 2)
        )
    }
}

// Preview
struct CarKilometersCard_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            CarKilometersCard(
                serviceType: "Oil Change",
                currentKilometers: 130480,
                lastServiceKm: 130122,
                nextServiceKm: 137622
            )
        }
        .padding()
        .background(Color(.systemGroupedBackground))
        .previewLayout(.sizeThatFits)
    }
}
