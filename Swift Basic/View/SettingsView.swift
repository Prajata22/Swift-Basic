//
//  SettingsView.swift
//  Swift Basic
//
//  Created by Jarvis on 11/08/21.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(spacing: 20) {
                    GroupBox(
                        label: SettingsLabelView(
                            labelText: "Swift Basic",
                            labelImage: "info.circle"
                        ),
                        content: {
                            Divider().padding(.vertical, 4)
                            
                            HStack(
                                alignment: .center,
                                spacing: 10,
                                content: {
                                    Image("logo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 80)
                                        .cornerRadius(9)
                                    
                                    Text("Most fruits are naturally low in fat, sodium and calories. None have cholestrol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                        .font(.footnote)
                                        .padding(.horizontal, 5)
                                }
                            )
                        }
                    )
                    
                    GroupBox(
                        label: SettingsLabelView(
                            labelText: "Customization",
                            labelImage: "paintbrush"
                        ),
                        content: {
                            Divider().padding(.vertical, 4)

                            Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                                .padding(.vertical, 8)
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            
                            Toggle(isOn: $isOnboarding, label: {
                                if (isOnboarding) {
                                    Text("Restarted".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.green)
                                } else {
                                    Text("Restart".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.secondary)
                                }
                            })
                            .padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(
                                        RoundedRectangle(
                                            cornerRadius: 8,
                                            style: .continuous
                                        )
                                    )
                            )
                        }
                    )
                    
                    GroupBox(
                        label: SettingsLabelView(
                            labelText: "Application",
                            labelImage: "apps.iphone"
                        ),
                        content: {                            
                            SettingsRowView(
                                name: "Developer / Designer",
                                content: "Prajata Samanta"
                            )
                            
                            SettingsRowView(
                                name: "Compatibility",
                                content: "iOS 14"
                            )
                            
                            SettingsRowView(
                                name: "Github",
                                linkLabel: "Prajata22",
                                linkDestination: "https://github.com/Prajata22"
                            )
                            
                            SettingsRowView(
                                name: "LinkedIn",
                                linkLabel: "Prajata Samanta",
                                linkDestination: "https://www.linkedin.com/in/prajata-samanta-61bb851a9/"
                            )
                            
                            SettingsRowView(
                                name: "SwiftUI",
                                content: "2.0"
                            )
                            
                            SettingsRowView(
                                name: "Version",
                                content: "1.0.0"
                            )
                        }
                    )
                }
                .navigationBarTitle(
                    Text("Settings"),
                    displayMode: .large
                )
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
            })
            .padding()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
