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
                VStack(alignment: .leading, spacing: 20) {
                    // Top section with greetings and description
                    VStack(alignment: .leading, spacing: 16) {
                        // Top greeting
                        Text("Hi, \(username)!")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.top, 24)
                        
                        // Description
                        Text("Keep your car running smoothly with personalized maintenance tracking")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                            .lineLimit(2)
                        
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
                                    .foregroundColor(Color(red: 64/255, green: 89/255, blue: 111/255))
                                
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color(red: 64/255, green: 89/255, blue: 111/255))
                                    .frame(width: 40, height: 4)
                            }
                        }
                        .padding(.top, 16)
                    }
                    .padding(.horizontal, 24)
                    .padding(.top, 10) // Space from top
                    
                    Spacer()
                        .frame(height: 330)
                    // Lower Maintence Tabs
                    VStack(alignment: .leading, spacing: 16) {
                        // Overdue maintence tab
                        HStack(alignment: .bottom, spacing: 8) {
                            Text("Overdue")
                                .font(.system(size: 16))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 24)
                            
                            Text("\(Int(overdueMaintenance))")
                                .font(.system(size: 16))
                                .foregroundColor(.red)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.horizontal, 24)
                        }
                        .padding(.horizontal, 0)
                        .padding(.vertical, 16)
                        .background(Color(red: 64/255, green: 89/255, blue: 111/255))
                        .cornerRadius(8)
                        
                        // Upcoming maintence tab
                        HStack(alignment: .bottom, spacing: 8) {
                            Text("Upcoming")
                                .font(.system(size: 16))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 24)
                            
                            Text("\(Int(upcomingMaintenance))")
                                .font(.system(size: 16))
                                .foregroundColor(.orange)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.horizontal, 24)
                        }
                        .padding(.horizontal, 0)
                        .padding(.vertical, 16)
                        .background(Color(red: 64/255, green: 89/255, blue: 111/255))
                        .cornerRadius(8)
                    }
                    .padding(.horizontal, 20)
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

