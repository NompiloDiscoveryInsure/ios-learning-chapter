import SwiftUI

struct ProfileHeaderView: View {
    let profile: Profile
    
    var body: some View {
        HStack {
            Image("profile")
                .resizable()
                .frame(width: 96, height: 96)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(profile.name)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text(profile.headline)
                    .font(.subheadline)
                    .foregroundColor(.white)
                Text(profile.location)
                    .font(.subheadline)
                    .foregroundColor(.white)
            }
        }
        .padding()
    }
}

struct ExperienceView: View {
    var experience: Experience
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(experience.role)
                .font(.subheadline)
                .fontWeight(.bold)
            Text(experience.company)
                .font(.subheadline)
                .foregroundColor(.gray)
            Text(experience.duration)
                .font(.subheadline)
                .foregroundColor(.gray)
            Text(experience.description)
                .font(.body)
        }
        .padding(.bottom, 8)
        Divider()
    }
}


struct EducationView: View {
    var education: Education
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(education.school)
                .font(.subheadline)
                .fontWeight(.bold)
            Text(education.degree)
                .font(.subheadline)
                .foregroundColor(.gray)
            Text(education.duration)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding(.bottom, 8)
    }
}

struct SkillView: View {
    var skill: String
    var iconName: String
    
    var body: some View {
        HStack {
            Image(iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
            Text(skill)
                .font(.body)
                .padding(.vertical, 4)
        }
        .padding(.horizontal)
        
    }
}

struct CertificationView: View {
    var certification: String
    var iconName: String
    
    var body: some View {
        HStack {
            Image(iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
            Text(certification)
                .font(.body)
                .padding(.vertical, 4)
        }
        .padding(.horizontal)
        
    }
}

struct SummaryView: View {
    var summary: String
    
    var body: some View {
        Text(summary)
            .fontWeight(.bold)
            .foregroundColor(.clear)
            .overlay(
                LinearGradient(
                    gradient: Gradient(colors: [.purple, .pink, .blue, .green, .yellow, .orange]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .mask(
                    Text(summary)
                        .font(.headline)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                )
            )
        
    }
}

struct SocialMediaLink: View {
    let imageName: String
    let url: String
    
    var body: some View {
        Link(destination: URL(string: url)!) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .padding()
        }
    }
}



