//
//  LoginView.swift
//  StellarCopy
//
//  Created by Jacob Sock on 3/27/23.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var moonModel = MoonViewModel()
    @State var firstName = ""
    @State var lastName = ""
    //MARK: We need to change this to Swift's 'Date' type
    @State var date = ""
    
    
    var body: some View {
        VStack
        {
            TextField("First name:", text: $firstName)
            TextField("Last name:", text: $lastName)
            TextField("Date of Birth", text: $date)
        }
        .task {
            await self.moonModel.reload()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
