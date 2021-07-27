//
//  ContentView.swift
//  SwiftLesson01
//
//  Created by Sartria Ardiantha Uno on 13/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(spacing:20){
                Logo()
                FormBox()
            }
            .padding(.all,20)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Logo : View {
    var body: some View {
        
        VStack {
            Image("Applelogo")
                .resizable()
                .frame(width: 80, height: 80)
                .background(Color("Warnaku"))
                .foregroundColor(Color.white)
                .padding()
                .background(Color("Warnaku"))
                .cornerRadius(20)
            
            Text("Hello Swift UI").foregroundColor(.white)
            
        }
        
    }
    
}

struct FormBox : View {
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(alignment:.leading) {
            Text("username").font(.callout).bold()
            
            TextField("username...", text:$username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("password").font(.callout).bold()
            
            SecureField("password...", text:$password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {print("Hello Button")}){
                HStack {
                    Text("Sign In")
                    Spacer()
                }
            }
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(Color.white)
        }
        .padding(.all, 30)
        .background(Color.orange)
        .cornerRadius(10)
    }
}
