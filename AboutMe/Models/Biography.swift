//
//  Biography.swift
//  AboutMe
//
//  Created by Zaki on 05.04.2023.
//

struct Biography {
    let username: String
    let password: String
    let person: Person
    
    
    static func getBiography() -> Biography {
        Biography(
            username: "Zaki",
            password: "iphone",
            person: Person(
                name: "Zaki",
                surname: "Menzhanov",
                gender: "Male",
                dateOfBirth: "29.05.2000",
                homeTown: "Almaty",
                education: "Bachelor degree",
                hobby: "Brazilian Jiu Jitsu",
                guest: "sir Alexey",
                aboutMyself: "How are you doing guys? My name is Zaki Menzhanov. I am 22 years old. I graduated university 2 years ago. After graduation I went to military service of my Country for 1 year, and now I am junior sergeant in reserve. My hometown is Almaty city (City of apples). Three times a week I go to BJJ classes. My belt is white with two stripes. If I continue at the same pace, I gonna get blue belt at the end of this year. Thank you for your attention"
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let gender: String
    let dateOfBirth: String
    let homeTown: String
    let education: String
    let hobby: String
    let guest: String
    let aboutMyself: String
}

