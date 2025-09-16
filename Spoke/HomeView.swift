//
//  HomeView.swift
//  Spoke
//
//  Created by Jonathan Corpuz on 2025-09-15.
//

import Foundation
import SwiftUI

struct HomeView: View {
    let username: String
    let overdueMaintenance: Int
    let upcomingMaintenance: Int
    let currentMonthKms: Double
    
    var body: some View {
        ZStack {
            Color(red: 16/255, green: 20/255, blue: 36/255).ignoresSafeArea()
            
            Image(.homeviewcar3)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .scaleEffect(1.5)
                .offset(y: 0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    // Top section with greetings and description
                    VStack(alignment: .leading, spacing: 16) {
                        // Top Nav Bar
                        HStack {
                            Spacer()
                            
                            // Center navigation (page indicator)
                            HStack(spacing: 6) { // Reduced spacing for smaller look
                                // Left dot
                                Circle()
                                    .fill(Color(red: 64/255, green: 89/255, blue: 111/255))
                                    .frame(width: 6, height: 6) // Smaller dots
                                
                                // Center pill (Home)
                                Text("Home")
                                    .font(.system(size: 12, weight: .medium)) // Smaller font
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 10) // Smaller padding
                                    .padding(.vertical, 4)
                                    .background(Color(red: 64/255, green: 89/255, blue: 111/255))
                                    .cornerRadius(10) // Smaller radius
                                
                                // Right dot
                                Circle()
                                    .fill(Color(red: 64/255, green: 89/255, blue: 111/255))
                                    .frame(width: 6, height: 6) // Smaller dots
                            }
                            
                            Spacer()
                            
                            // Profile Icon (top right)
                            Image(systemName: "person.circle")
                                .font(.system(size: 20)) // Smaller icon
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 24)
                        .padding(.top, 10)
                                
                        // Balance the layout (invisible spacer same size as profile icon)
                        Color.clear
                            .frame(width: 24, height: 0)
                            .padding(.horizontal, 24)
                        
                        // Top greeting
                        Text("Hi, \(username)!")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.top, 0)
                        
                        // Description
                        Text("Keep your car running smoothly with personalized maintenance tracking")
                            .font(.system(size: 16))
                            .foregroundColor(Color(red: 140/255, green: 150/255, blue: 170/255)) // Lighter blue-gray
                            .lineLimit(2)
                            .lineSpacing(2)
                        
                        // Large kilometers display
                        HStack(alignment: .bottom, spacing: 8) {
                            Text("\(Int(currentMonthKms))")
                                .font(.system(size: 48, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                            
                            Text("km")
                                .font(.system(size: 20, weight: .medium))
                                .foregroundColor(.gray)
                                .padding(.bottom, 8)
                            
                            Spacer()
                            
                            // Small indicator like in the image
                            VStack(alignment: .trailing, spacing: 4) {
                                Text("+8.5%")
                                    .font(.system(size: 14, weight: .medium))
                                    .foregroundColor(Color(red: 100/255, green: 200/255, blue: 255/255)) // Teal accent
                                
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color(red: 100/255, green: 200/255, blue: 255/255)) // Match accent
                                    .frame(width: 40, height: 4)
                            }
                        }
                        .padding(.top, 16)
                    }
                    .padding(.horizontal, 24)
                    .padding(.top, 5) // Space from top
                    
                    Spacer()
                        .frame(height: 330)
                    // Lower Maintence Tabs
                    VStack(alignment: .leading, spacing: 16) {
                        // Overdue maintenance tab
                        HStack(alignment: .bottom, spacing: 8) {
                            HStack {
                                Text("Overdue")
                                    .font(.system(size: 16))
                                    .foregroundColor(.white)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 24)
                            
                            Text("\(Int(overdueMaintenance))")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundColor(Color(red: 100/255, green: 200/255, blue: 255/255))
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.horizontal, 24)
                        }
                        .padding(.horizontal, 0)
                        .padding(.vertical, 18)
                        .background(Color(red: 64/255, green: 89/255, blue: 111/255)) // Your existing color
                        .cornerRadius(12)
                        .shadow(color: .black.opacity(0.4), radius: 8, x: 0, y: 4) // Stronger shadow for depth
                        .overlay(
                            // Subtle inner highlight for dimension
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.white.opacity(0.1), lineWidth: 1)
                        )
                        .padding(.horizontal, 20)
                        
                        // Upcoming maintence tab
                        HStack(alignment: .bottom, spacing: 8) {
                            HStack {
                                Text("Upcoming")
                                    .font(.system(size: 16))
                                    .foregroundColor(.white)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 24)
                            
                            Text("\(Int(upcomingMaintenance))")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundColor(Color(red: 100/255, green: 200/255, blue: 255/255))
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.horizontal, 24)
                        }
                        .padding(.horizontal, 0)
                        .padding(.vertical, 18)
                        .background(Color(red: 64/255, green: 89/255, blue: 111/255)) // Your existing color
                        .cornerRadius(12)
                        .shadow(color: .black.opacity(0.4), radius: 8, x: 0, y: 4) // Stronger shadow for depth
                        .overlay(
                            // Subtle inner highlight for dimension
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.white.opacity(0.1), lineWidth: 1)
                        )
                        .padding(.horizontal, 20)
                    }
                }
            }
        }
    }
}
    

// Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            HomeView(
                username: "Jonathan",
                overdueMaintenance: 1,
                upcomingMaintenance: 8,
                currentMonthKms: 482
            )
        }
        .background(Color(.systemGroupedBackground))
        .previewLayout(.sizeThatFits)
    }
}
