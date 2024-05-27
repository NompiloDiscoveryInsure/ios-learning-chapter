import Foundation

struct Profile {
    let name: String
    let headline: String
    let location: String
    let email: String
    let linkedin: String
    let summary: String
    let experiences: [Experience]
    let education: [Education]
    let skills: [String]
    let certifications: [String]
}

struct Experience {
    let role: String
    let company: String
    let duration: String
    let description: String
}

struct Education {
    let school: String
    let degree: String
    let duration: String
}

let sampleProfile = Profile(
    name: "Nompilo Angela Moyo",
    headline: "Junior iOS Developer at Discovery Limited",
    location: "Durban, KwaZulu-Natal, South Africa",
    email: "nompilomoyo11@gmail.com",
    linkedin: "www.linkedin.com/in/nompiloangela-moyo-353b09168",
    summary: """
    I am a Junior software developer and two phenomena that describe me are 'motivated' & 'goal driven'.
    
    I mostly enjoy reading books and have a great interest in software development such as Web Development as well as Mobile development. Programming languages I enjoy working with the most are Swift and C# and swiftUI and Angular as frontend framworks.
    
    Being an inquisitive person wanting to learn something new every day, I grow love for other programming languages that are vastly growing in tech.
    """,
    experiences: [
        Experience(role: "Junior iOS Developer", company: "Discovery Limited", duration: "November 2023 - Present (7 months)", description: "South Africa"),
        Experience(role: "Junior Developer", company: "Mr Price Group", duration: "May 2022 - November 2023 (1 year 7 months)", description: "Durban, KwaZulu-Natal, South Africa"),
        Experience(role: "Junior Software Developer", company: "Adapt IT Holdings Limited", duration: "February 2022 - April 2022 (3 months)", description: "Midrand, Gauteng, South Africa"),
        Experience(role: "Software Systems Development Graduate", company: "Conlog (Pty) Ltd", duration: "August 2020 - July 2021 (1 year)", description: "Durban Area, South Africa"),
        Experience(role: "NRF Intern", company: "Sugar Milling Research Institute NPC (SMRI)", duration: "April 2019 - August 2020 (1 year 5 months)", description: "Durban Area, South Africa")
    ],
    education: [
        Education(school: "University of Zululand", degree: "Bachelor's degree, Computer Science & Hydrology", duration: "2014 - 2018")
    ],
    skills: ["iOS Development(Swift, SwiftUI", "Python (Programming Language)", "C#(.Net)", "Angular", "SQL(MS SQL)"],
    certifications: [
        "Microservices Architecture - The Complete Guide",
        "Data Science & Analytics Intro",
        "Working with React and Go (Golang)",
        "Python Developer in 2020: Zero to Mastery",
        "Web Development"
    ]
)
