//
//  ContentView.swift
//  GRosay-CV
//
//  Created by Gaspard Rosay on 06.10.19.
//  Copyright © 2019 Gaspard Rosay. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var skills: [Skill] = skillsData
    var projects: [Project] = projectsData
    var body: some View {
        NavigationView{
            ScrollView {
                Header()
                AboutMe()
                Text("skills_title")
                    .font(.headline)
                List(skills){ skill in
                    NavigationLink(destination: SkillDescription(skill: skill)){
                        Image(systemName: skill.skillIcon)
                        Text(skill.skillName)
                            .font(.body)
                    }
                }
                .frame(width:350, height:200.0)
                
                Text("works_title")
                    .font(.headline)
                List(projects){ project in
                    NavigationLink(destination: Text("test")){
                        Image(project.gImageName).resizable()
                            .scaledToFit()
                            .frame(width:50.0, height:50.0)
                            .cornerRadius(5.0)
                        VStack{
                            Text(project.gName)
                                .font(.body)
                            Text(project.gSubtitle)
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                }
                .frame(width:350, height:200.0)
            }
        }
        .navigationBarTitle(Text("Gaspard Rosay"))
    }
}

struct Header: View {
    var body: some View {
        Group(){
            Image("back")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0.0, maxWidth: .infinity, minHeight: 0.0, maxHeight: 450.0)
                .padding(.top, -150)
            Text("Gaspard ROSAY")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .padding(.top, -170)
            Text("full_stack")
                .font(.headline)
                .foregroundColor(Color.white)
                .padding(.top, -130)
            Image("face").resizable()
                .scaledToFit()
                .frame(width: 150, height: 150.0)
                .cornerRadius(90.0)
                .padding(.top, -95)
        }
    }
}

struct AboutMe: View{
    var body: some View {
        VStack(){
            Text("about_me")
                .font(.headline)
            
            Text("about_me_full")
                .font(.body)
                .fontWeight(.medium)
                .lineLimit(nil)
                .multilineTextAlignment(.leading)
                .frame(width: 350.0, height:250.0)

        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().colorScheme(.light)
                .environment(\.locale, Locale(identifier: "en"))
            ContentView().colorScheme(.light)
                .environment(\.locale, Locale(identifier: "fr"))
        }
    }
}
#endif
