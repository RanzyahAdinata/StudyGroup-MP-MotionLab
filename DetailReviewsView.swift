import SwiftUI

struct DetailReviewsView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color.darkBlue
                    .ignoresSafeArea(.all)
                VStack{
                    HStack(spacing: 120) {
                        NavigationLink {
                            HomeView()
                                .navigationBarBackButtonHidden(true)
                        } label: {
                            Image(systemName: "lessthan")
                                .frame(width: 7, height: 15)
                                .foregroundColor(.white)
                        }
                        
                        Text("Detail")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Image(systemName: "bookmark.fill")
                            .foregroundColor(.white)
                    }
                    
                    ZStack{
                        LocalImage.Poster10
                            .resizable()
                            .frame(width: 395, height: 225)
                            .padding(.bottom, 50)
                            .padding(.top, 10)
                        HStack(alignment: .center) {
                            LocalImage.Poster2
                                .resizable()
                                .frame(width: 95, height: 120)
                            Text("Spiderman no Way\nHome")
                                .foregroundColor(.white)
                                .font(.system(size: 19))
                                .fontWeight(.semibold)
                                .padding(.top, 74)
                        }
                        .padding(.top, 180)
                        .padding(.leading, 45)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.bottom, 20)
                    
                    HStack(spacing: 24){
                        HStack{
                            Image(systemName: "calendar")
                                .frame(width: 11, height: 11)
                                .foregroundColor(.gray)
                            Text("2021")
                                .font(.system(size: 12))
                                .fontWeight(.medium)
                                .foregroundColor(.gray)
                        }
                        HStack{
                            Image(systemName: "clock")
                                .frame(width: 16, height: 16)
                                .foregroundColor(.gray)
                            Text("148 Minutes")
                                .font(.system(size: 12))
                                .fontWeight(.medium)
                                .foregroundColor(.gray)
                        }
                        HStack{
                            Image(systemName: "ticket")
                                .frame(width: 16, height: 16)
                                .foregroundColor(.gray)
                            Text("Action")
                                .font(.system(size: 12))
                                .fontWeight(.medium)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.bottom, 24)
                    
                    HStack(spacing: 25){
                        NavigationLink(destination: DetailView()
                            .navigationBarBackButtonHidden(true)
                        ) {
                            Text("About Movie")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                        }
                        VStack{
                            Text("Reviews")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .fontWeight(.medium)
                            Rectangle()
                                .frame(width: 50, height: 4)
                                .fontWeight(.medium)
                                .foregroundColor(.gray)
                        }
                        .padding(.top, 12)
                        Text("Cast")
                            .foregroundColor(.white)
                            .font(.system(size: 14))
                            .fontWeight(.regular)
                    }
                    .padding(.leading, 50)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 15)
                    
                    ZStack (alignment: .topLeading){
                        LocalImage.Profile1
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.leading, 45)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, 28)
                        Text("6.3")
                            .foregroundColor(LocalColor.lightBlue)
                               .font(.system(size: 12))
                               .fontWeight(.medium)
                               .frame(maxWidth: .infinity, alignment: .leading)
                               .padding(.leading, 60)
                               .padding(.top, 50)
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Iqbal Shafiq Rozaan")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .fontWeight(.medium)
                            Text("From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government.")
                                .foregroundColor(.white)
                                .font(.system(size: 12))
                                .fontWeight(.regular)
                                .padding(.trailing, 35)
                                .lineSpacing(1.5)
                        }
                        .padding(.leading, 120)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.bottom, 30)
                    
                    ZStack{
                        LocalImage.Profile1
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.leading, 45)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, 28)
                        Text("6.3")
                            .foregroundColor(LocalColor.lightBlue)
                            .font(.system(size: 12))
                            .fontWeight(.medium)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 60)
                            .padding(.top, 50)
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Iqbal Shafiq Rozaan")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .fontWeight(.medium)
                            Text("From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government.")
                                .foregroundColor(.white)
                                .font(.system(size: 12))
                                .fontWeight(.regular)
                                .padding(.trailing, 35)
                                .lineSpacing(1.5)
                        }
                        .padding(.leading, 120)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    DetailReviewsView()
}
