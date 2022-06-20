import SwiftUI
import LocalAuthentication

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    @State private var isUnlocked = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("primaryColor")
                    .ignoresSafeArea()
                    .preferredColorScheme(.light)

                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                VStack {
                    Text("Connexion")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .preferredColorScheme(.light)
                        
                    TextField("Email", text: $username)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .border(.red, width: CGFloat(wrongUsername))
                        .preferredColorScheme(.light)
                        .background(Color.black.opacity(0.05))
                    
                    SecureField("Mot de passe", text: $password)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                        .preferredColorScheme(.light)
                        .background(Color.black.opacity(0.05))
                    
                    VStack {
                        Button("Se connecter") {
                            authUser(username: username, password: password)
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color("primaryColor"))
                        .cornerRadius(10)
                        
                        Button("Utiliser sa connexion biométrique") {
                            authenticateBiometry()
                        }
                        .foregroundColor(.white).frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color("primaryColor").opacity(0.8))
                        .cornerRadius(10)
                    }.padding()
                    
                    NavigationLink(
                        destination: Text("You are logged in @\(username)"),
                        isActive: $showingLoginScreen) {
                        EmptyView()
                    }
                }
                .padding(.horizontal, 30)
            }
            .navigationBarHidden(true)
        }
    }
    
    func authenticateBiometry() {
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "We need to unlock your data"
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) {
                (success, authenticationError) in
                if success {
                    // Authenticated successfully
                    isUnlocked = true
                } else {
                    // There was a problem
                }
            }
        } else {
            // No Biometrics
        }
    }
    
    func authUser(username: String, password: String) {
        if username == "eden" {
            wrongUsername = 0
            if password == "eden" {
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
        
        // TODO
    }

        
//        var user: Bool = false
//        let apiUrl: String = "https://staging.edenml.fr"
//
//        ///- Stockage des données
//        let body: [String: Any] = ["data": ["username": username, "password": password]]
//        let jsonData = try? JSONSerialization.data(withJSONObject: body)
//
//        ///- Création d'une requête
//        var request = URLRequest(url: URL(string: apiUrl + "/login")!)
//        request.httpMethod = "POST"
//        request.setValue("\(String(describing: jsonData?.count))", forHTTPHeaderField: "Content-Length")
//        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//        request.httpBody = jsonData
//
//        let task = URLSession.shared.dataTask(with: request) {
//            (data, response, error) in
//            if error != nil {
//                print(error!)
//                return
//            }
//
//            if let response = response {
//                print(response)
//            }
//
//            if data != nil { // let data = data
//                do {
//                    user = true
//                    // let user = try JSONDecoder().decode(User.self, from: data) //- Save le token
//                }
//                catch {
//                    print("Could not decode the data. Error: \(error)")
//                }
//            }
//
//            if user {
//                wrongUsername = 2
//                wrongPassword = 2
//                showingLoginScreen = true
//            } else {
//                wrongUsername = 0
//                wrongPassword = 0
//            }
//        }
//        task.resume()
//    }
        
        
//        let body: [String: Any] = ["data": ["username": username, "password": password]]
//        let jsonData = try? JSONSerialization.data(withJSONObject: body)
//
//        let url = URL(string: "http://staging.edenml.fr/login")!
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.setValue("\(String(describing: jsonData?.count))", forHTTPHeaderField: "Content-Length")
//        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//        request.httpBody = jsonData
//
//        let task = URLSession.shared.dataTask(with: request) {
//            (data, response, error) in
//            guard let data = data, error == nil else {
//                print(error?.localizedDescription ?? "No data")
//                return
//            }
//
//            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
//            if let responseJSON = responseJSON as? [String: Any] {
//                print("-----2> responseJSON: \(responseJSON)")
//            }
//        }
//
//        task.resume()
//    }
    
         
         
//        let request = URLRequest(
//            url: URL(string: "http://localhost/sport-club-ios-api/login")!)
//
//        let task = URLSession.shared.dataTask(with: request) {
//            (data, response, error) in
//            if error != nil {
//                print(error!)
//                return
//            }
//
//            if let response = response {
//                print(response)
//            }
//
//            if let data = data {
//                do {
//                    let user = try JSONDecoder().decode(User.self, from: data) //- Save le token
//                }
//                catch {
//                    print("Could not decode the data. Error: \(error)")
//                }
//            }
//
//            if user {
//                wrongUsername = 2
//                wrongPassword = 2
//                showingLoginScreen = true
//            } else {
//                wrongUsername = 0
//                wrongPassword = 0
//            }
//        }
//        task.resume()
//    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
