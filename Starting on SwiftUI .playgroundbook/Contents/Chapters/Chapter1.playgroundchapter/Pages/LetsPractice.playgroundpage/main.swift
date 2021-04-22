/*:
 # 👨🏻‍💻 Let's Practice
 
 ## It's time to code 🤓

 Now that I've introduced you to some SwiftUI concepts (our Stacks) we can try to do something cool using them, like creating a digital contact card to put our contacts like social networks, phones and emails, all in one place, to make it easier for people to get in touch with us.

 I already made one for myself, see how it turned out:

 ![Card](myImages/Card.png)

 And now I’d like you to make one for yourself too, and notice the Stacks and Views I used to build my card.

 To make things a little easier, I already left the code almost ready for you to change it with the items you want to put on your card.

 There may be some things that you may not know yet, but I left some comments in the code to help you.

 # 💥 Now it's your turn!
 
*/
//#-hidden-code
import SwiftUI
import PlaygroundSupport
struct ContactCardView: View {
    
var body: some View {
//#-end-hidden-code
    ZStack {
        
        VStack(alignment: .leading) {

            HStack {
                //#-editable-code
                /*
                - Image is a View used to put an image on our screen

                - In this case we're using a system icon, so we have 'systemName: "person.crop.circle"'

                - If you want to put a picture of yourself on your card, change systemName to uiImage and delete "person.crop.circle" together with the quotation marks. Then click on + and choose an image of yours. It should look like this: Image(uiImage: yourImage)
                */
                Image(systemName: "person.crop.circle")
                //#-end-editable-code
                //#-hidden-code
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                //#-end-hidden-code
                
                VStack(alignment: .leading) {
                    //#-editable-code
                    // Text is a simple View but widely used that serves to put text on our screen
                    // Just put your text in quotation marks
                    Text("change by your name")
                    //#-end-editable-code
                    //#-hidden-code
                        .fontWeight(.bold)
                    //#-end-hidden-code
                    //#-editable-code
                    Text("change by your occupation")
                    //#-end-editable-code
                    //#-hidden-code
                        .font(.subheadline)
                    //#-end-hidden-code
                    //#-editable-code
                    Text("@change by your username (fictitious)")
                    //#-end-editable-code
                    //#-hidden-code
                        .font(.subheadline)
                        .fontWeight(.light)
                    //#-end-hidden-code
                }
                //#-hidden-code
                .padding(.leading)

                Spacer()
                //#-end-hidden-code
                // We're putting an image to represent a QR Code, which could be used for someone else to add our card by reading it
                Image(systemName: "qrcode")
                //#-hidden-code
                    .resizable()
                    .frame(width: 40, height: 40, alignment: .center)
                //#-end-hidden-code
            }
            //#-hidden-code
            .padding(.bottom)
            //#-end-hidden-code
            
            Text("Contacts: ")
                //#-hidden-code
                .font(.headline)
                .fontWeight(.light)
                //#-end-hidden-code
            
            ScrollView(.horizontal, showsIndicators: false) {
            // With ScrollView we can scroll and see the icons of our HStack that didn’t fit on the card
                HStack(alignment: .center) {
                    //#-editable-code
                    /*
                     - I created a View called SocialNetworkView to already bring the icons of some social networks.
                     - See how I did it in ShareCode.swift
                     - To use it we must put a social network (with a . before) and your username on that network. I left a completed example for you to orient yourself.
                     - Use as many SocialNetworkViews as you want!
                     - The social networks available are: .WhatsApp, .Instagram, .Facebook, .Twitter, .Snapchat, .LinkedIn, .GitHub, .Telegram and .TicTok
                     */
                    SocialNetworkView(socialNetwork: .Instagram, username: "userWithoutSpace")
                    //#-end-editable-code
                }
                 
            }
            //#-hidden-code
            .padding(.bottom)
            //#-end-hidden-code
            
            VStack {
                //#-editable-code
                /*
                 - I created the EmailView that contains an HStack with three Views: Image | Text | Image, so we only need to replace the parameter in quotes on the View Text and thus the code is simplified here.
                 - See how I did it in ShareCode.swift
                 - Use as many EmailView as you want!
                 */
                EmailView("changeByYourEmailWithoutSpace")
                //#-end-editable-code
            }
            //#-hidden-code
            .padding(.bottom, 5)
            //#-end-hidden-code
            
            VStack {
                //#-editable-code
                /*
                 - PhoneView is very similar with EmailView, with just a different icon.
                 - See how I did it in ShareCode.swift
                 - Use as many PhoneView as you want!
                 */
                PhoneView("changeByYourPhoneNumberWithoutSpace")
                //#-end-editable-code
            }
            
        }
        //#-hidden-code
        .padding()
        //#-end-hidden-code
    }
    //#-hidden-code
        .frame(maxWidth: 400)
        .foregroundColor(Color(#colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)))
        .background(Color(#colorLiteral(red: 0.8406170010566711, green: 0.8407586216926575, blue: 0.8405983448028564, alpha: 1.0)))
        .cornerRadius(25)
        .shadow(color: .black, radius: 10, x: 5, y: 5)
    }
}

PlaygroundPage.current.setLiveView(ContactCardView().padding())
//#-end-hidden-code

/*:
# ▶️ Run the code and see your Contact Card!
 
I hope this book on SwiftUI Stacks has helped you 😊
 
Finally I strongly recommend you try to take this tutorial that uses the concepts we saw here: [Creating and Combining Views](https://developer.apple.com/tutorials/swiftui/creating-and-combining-views)
*/
