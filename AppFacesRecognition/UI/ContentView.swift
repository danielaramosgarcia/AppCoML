//
//  ContentView.swift
//  co-ml
//
//  Created by Alumno on 02/10/23.
//
import SwiftUI
struct ContentView: View {
    var body: some View {
        GeometryReader { screen in
            HStack {
                    ZStack {
                        Color("grayBackground")
                            .ignoresSafeArea()
                        VStack {
                            HStack{
                                Image(systemName:"heart.fill")
                                Text("Equipo #4")
                                    
                                Spacer()
                            } // HStack
                            .font(.system(size: 40, weight: .light))
                            .padding(60)
                            Spacer()
                            Image("arturo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 600)
                            
                        } // VStack
                        .edgesIgnoringSafeArea(.all)
                    } // ZStack
                .frame(width: screen.size.width/2)
                
                    ZStack{
                        Color(.white)
                            .ignoresSafeArea()
                        VStack {
            Spacer()
                            Text("CO-ML Application")
                                .font(.system(size: 110, weight: .light))
                                .padding(.horizontal, 80)
                                                    
                            Button(action : {
                                print("Mandar a la siguiente escena")
                            }, label : {
                                HStack {
                                    Text("Continue")
                                        .padding()
                                    Image(systemName: "arrowshape.forward")
                                        .padding()
                                }
                                .padding(.horizontal, 150)
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .shadow(radius: 10)
                                .font(.system(size: 40, weight: .light))
                            })
                            
                            Spacer()
                            
                            
                            Text("Trabajo realizado por Arturo Duran, Alberto Tamez, Gael Garcia, Daniela Nuno, Daniela Ramos, Claudia Arcienega")
                                .font(.system(size: 25, weight: .light))
                                .padding(.horizontal, 120)
                                .padding(.bottom, 100)
                            
                            
                        } // VStack
                        
                    } // ZStack
                    
                
                .frame(width: screen.size.width/2)
            } // HStack
        } // GeometryReader
    } // body
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
