//
//  LockScreen.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 2/21/23.
//

import SwiftUI

struct StudentLockScreen: View {
    var body: some View {
        
        NavigationStack{
            
            Home()
            
             
        }
        
    }
}


struct Home : View {
    
    @State var unLocked = false
    
    var body: some View{
        
        ZStack{
            
            Color.brandGradientlight2
                .ignoresSafeArea(.all)
       
            
            // Lockscreen...
            
            if unLocked {
                
               DashBoard()
            }
            else{
                
                LockScreen(unLocked: $unLocked)
            
            }
        }
        //.preferredColorScheme(unLocked ? .light : .dark)
    
    }
}

struct LockScreen : View {
    
    @State var password = ""
    @State private var forgotPasswordSheetShowing = false
    // you can change it when user clicks reset password....
    // AppStorage => UserDefaults....
    @AppStorage("lock_Password") var key = "5654"
    @Binding var unLocked : Bool
    @State var wrongPassword = false
    let height = UIScreen.main.bounds.width
    
    var body: some View{
        
        VStack{
         
            Spacer()
          
            Spacer()
            
      
            Text("Enter Passcode")
                .font(.title3)
                .fontWeight(.bold)
        
            
            HStack(spacing: 4){
            
                
                // Password Circle View...
                
                ForEach(0..<4,id: \.self){index in
                    
                    PasswordView(index: index, password: $password)
                }
            }
            // for smaller size iphones...
            .padding(.top,height < 750 ? 20 : 30)
            
            // KeyPad....
            
            //Spacer(minLength: 0)
            
            Text(wrongPassword ? "Incorrect Pin" : "")
                .foregroundColor(.red)
                .fontWeight(.heavy)
            
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3),spacing: height < 750 ? 10 : 15){
                
                // Password Button ....
                
                ForEach(1...9,id: \.self){value in
                    
                    
                   PasswordButton(value: "\(value)",password: $password, key: $key, unlocked: $unLocked, wrongPass: $wrongPassword)
                }
                
                PasswordButton(value: "delete.fill",password: $password, key: $key, unlocked: $unLocked, wrongPass: $wrongPassword)
                
                PasswordButton(value: "0", password: $password, key: $key, unlocked: $unLocked, wrongPass: $wrongPassword)
            }
            Spacer()
                .frame(height: 40)

            
            Button {
                forgotPasswordSheetShowing.toggle()
            } label: {
                Text("Forgot Passcode")
                    .foregroundColor(.black)
                    .bold()
            }
  
            Spacer()
        }
        .padding(.horizontal, 50)
        
        .sheet(isPresented: $forgotPasswordSheetShowing) {
            Text("Forgot Passcode")
                .font(.system(size: 36, design: .rounded) .weight (.semibold))
                .padding(.bottom)
            
            
                .presentationDetents([.medium])
                .presentationDragIndicator(.visible)
        }
      
        .navigationTitle("")
        .navigationBarHidden(true)
    }
 
}

struct PasswordView : View {
    
    var index : Int
    @Binding var password : String
    
    var body: some View{
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.white)
                .opacity(0.3)
                .frame(width: 70, height: 70)
                .padding(.bottom)
                
            
            // checking whether it is typed...
            
            if password.count > index{
                
                Circle()
                    .fill(Color.black)
                    .frame(width: 20, height: 20)
            } else {
                Circle()
                    .stroke(.black, lineWidth: 2)
                    .frame(width: 15, height: 20)
            }
        }
    }
    
}

struct PasswordButton : View {
    
    var value : String
    @Binding var password : String
    @Binding var key : String
    @Binding var unlocked : Bool
    @Binding var wrongPass : Bool
    
    var body: some View{
        
        Button(action: setPassword, label: {
            
            VStack {
                
                if value.count > 1{
                    
                    // Image...
                    
                    Image(systemName: "delete.left")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                }
                else{
                    
                    ZStack(alignment: .center){
                     
                            Circle()
                                .stroke(.black, lineWidth: 2)
                                .frame(width: 150, height: 60)
                            
                            Text(value)
                                .font(.title)
                                .foregroundColor(.black)
                        }
                     
                        .padding(.top, -10)
                   
                }
            }
            
         
            .padding(15)
            
        

        })
      
    }
    
    func setPassword(){
        
        // checking if backspace pressed...
        
        withAnimation{
            
            if value.count > 1{
                
                if password.count != 0{
                    
                    password.removeLast()
                }
            }
            else{
                
                if password.count != 4{
                    
                    password.append(value)
                    
                    // Delay Animation...
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                        
                        withAnimation{
                            
                            if password.count == 4{
                                
                                if password == key{
                                    
                                    unlocked = true
                                }
                                else{
                                    
                                    wrongPass = true
                                    password.removeAll()
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct LockScreen_Previews: PreviewProvider {
    static var previews: some View {
        StudentLockScreen()
    }
}
