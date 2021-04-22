import SwiftUI
public struct EmailView: View {
    var email: String
    public var body: some View {
        HStack {
            Image(systemName: "envelope.fill")
                .padding(.horizontal)
            
            Link(email, destination: URL(string: "mailto:\(email)")!)
                .foregroundColor(.black)
                .padding(.vertical, 8)

            Spacer()
            
            Button(action: {
                UIPasteboard.general.string = email
            }, label: {
                Image(systemName: "doc.on.doc")
                    .padding(.trailing)
            })
            
        }
        .padding(5)
        .background(Color(#colorLiteral(red: 0.7540718913078308, green: 0.7540718913078308, blue: 0.7540718913078308, alpha: 1.0)))
        .cornerRadius(15)
    }
    public init(_ email: String){
        self.email = email
    }
}

public struct PhoneView: View {
    var phone: String
    public var body: some View {
        HStack {
            Image(systemName: "phone.fill")
                .padding(.horizontal)
            
            Link(phone, destination: URL(string: "tel:\(phone)")!)
                .foregroundColor(.black)
                .padding(.vertical, 8)
            
            Spacer()
            
            Button(action: {
                UIPasteboard.general.string = phone
            }, label: {
                Image(systemName: "doc.on.doc")
                    .padding(.trailing)
            })
            
        }
        .padding(5)
        .background(Color(#colorLiteral(red: 0.7540718913078308, green: 0.7540718913078308, blue: 0.7540718913078308, alpha: 1.0)))
        .cornerRadius(15)
    }
    
    public init(_ phone: String){
        self.phone = phone
    }
}

public enum SocialNetworks: String {
    case WhatsApp, Instagram, Facebook, Twitter, Snapchat, LinkedIn, GitHub, Telegram, TikTok
}

public struct SocialNetworkView: View {
    var socialNetwork: SocialNetworks
    var username: String
    
    public init(socialNetwork: SocialNetworks, username: String) {
        self.socialNetwork = socialNetwork
        self.username = username
    }

    public var body: some View {
        switch socialNetwork {
        case .WhatsApp:
            Link(destination: URL(string: "https://wa.me/\(username)")!, label: {
                // Copyrights: Image dowloaded from https://whatsappbrand.com
                Image(uiImage: #imageLiteral(resourceName: "WhatsApp_Logo_6.png"))
                    .resizable()
                    .frame(width:60, height:50.02)
            })
            
        case .Instagram:
            Link(destination: URL(string: "https://www.instagram.com/\(username)")!, label: {
                // Copyrights: Image dowloaded from https://en.facebookbrand.com/instagram/assets/instagram?audience=instagram-landing
                Image(uiImage: #imageLiteral(resourceName: "glyph-logo_May2016.png"))
                    .resizable()
                    .frame(width:50, height:50)
            })
        case .Facebook:
            Link(destination: URL(string: "https://www.facebook.com/\(username)")!, label: {
                // Copyrights: Image dowloaded from https://en.facebookbrand.com/facebookapp/assets/f-logo/
                Image(uiImage: #imageLiteral(resourceName: "f_logo_RGB-Blue_512.png"))
                    .resizable()
                    .frame(width:50, height:50)
            })
        case .Twitter:
            Link(destination: URL(string: "https://twitter.com/\(username)")!, label: {
                // Copyrights: Image dowloaded from https://about.twitter.com/en/who-we-are/brand-toolkit
                Image(uiImage: #imageLiteral(resourceName: "Twitter social icons - circle - blue.png"))
                    .resizable()
                    .frame(width:50, height:50)
            })
        case .Snapchat:
            Link(destination: URL(string: "https://www.snapchat.com/add/\(username)")!, label: {
                // Copyrights: Image dowloaded from https://snap.com/en-US/brand-guidelines
                Image(uiImage: #imageLiteral(resourceName: "Snapchat App Icon.png"))
                    .resizable()
                    .frame(width:50, height:50)
            })
        case .LinkedIn:
            Link(destination: URL(string: "https://www.linkedin.com/in/\(username)")!, label: {
                // Copyrights: Image dowloaded from https://brand.linkedin.com/downloads
                Image(uiImage: #imageLiteral(resourceName: "LI-In-Bug.png"))
                    .resizable()
                    .frame(width:58.8, height:50)
            })
        case .GitHub:
            Link(destination: URL(string: "https://github.com/\(username)")!, label: {
                // Copyrights: Image dowloaded from https://github.com/logos
                Image(uiImage: #imageLiteral(resourceName: "GitHub-Mark-64px.png"))
                    .resizable()
                    .frame(width:50, height:50)
            })
        case .Telegram:
            Link(destination: URL(string: "https://t.me/\(username)")!, label: {
                // Copyrights: Image dowloaded from https://commons.wikimedia.org/wiki/File:Telegram_logo.svg?uselang=pt-br#filelinks
                Image(uiImage: #imageLiteral(resourceName: "1024px-Telegram_logo.svg.png"))
                    .resizable()
                    .frame(width:50, height:50)
            })
        case .TikTok:
            Link(destination: URL(string: "http://vt.tiktok.com/\(username)")!, label: {
                // Copyrights: Image dowloaded from https://pnghunter.com/png/tik-tok-logo/
                Image(uiImage: #imageLiteral(resourceName: "tik-tok-logo.png"))
                    .resizable()
                    .frame(width:38.19, height:50)
            })
        }
    }
}
