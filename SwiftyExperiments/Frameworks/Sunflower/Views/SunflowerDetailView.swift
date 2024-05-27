import SwiftUI

struct SunflowerDetailView: View {
    let profile = sampleProfile
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                // Profile Header
                ProfileHeaderView(profile: profile)
                
                // Social Media icons
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        SocialMediaLink(imageName: "facebook", url: "https://www.facebook.com/your_profile")
                        SocialMediaLink(imageName: "whatsapp", url: "https://whatsapp.com/your_profile")
                        SocialMediaLink(imageName: "instagram", url: "https://www.instagram.com/your_profile")
                        SocialMediaLink(imageName: "linkedin", url: "https://www.linkedin.com/in/your_profile")
                    }
                    .padding(.horizontal)
                }
                
                // Summary Section
                SectionView(header: "Summary", iconName: "notes") {
                    SummaryView(summary: profile.summary)
                }
                
                // Experience Section
                SectionView(header: "Experience", iconName: "experience") {
                    VStack(alignment: .leading, spacing: 8) {
                        ForEach(profile.experiences, id: \.role) { experience in
                            ExperienceView(experience: experience)
                        }
                    }
                }
                
                // Education Section
                SectionView(header: "Education", iconName: "education") {
                    VStack(alignment: .leading, spacing: 8) {
                        ForEach(profile.education, id: \.school) { education in
                            EducationView(education: education)
                        }
                    }
                }
                
                // Skills Section
                SectionView(header: "Skills", iconName: "skills") {
                    VStack(alignment: .leading, spacing: 8) {
                        ForEach(profile.skills, id: \.self) { skill in
                            SkillView(skill: skill, iconName: "skillset")
                        }
                    }
                }
                
                // Certifications Section
                SectionView(header: "Certifications", iconName: "certificate") {
                    VStack(alignment: .leading, spacing: 8) {
                        ForEach(profile.certifications, id: \.self) { certification in
                            CertificationView(certification: certification, iconName: "certificate")
                        }
                    }
                }
            }
            .padding(.top, 80)
        }
        .padding(.bottom)
    }
}
