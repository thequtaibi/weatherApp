import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            backgroundView(topColor: isNight ? .black : .blue,
                           ButtomColor: isNight ? .gray : Color("lighblue"))
            VStack {
                
                VStack(spacing: 15) {
                    CitynamesView(nameOFcity: "الرياض, السعودية")
                    iconweatherView(weathericon: isNight ? "moon.fill" : "thermometer.sun.fill",                  temper: isNight ? 33 : 46)
                }
                .padding(.bottom, 40)
                HStack(spacing: 20) {
                    weatherDayView(
                        dayOfWeek: "الثلاثاء",
                        imgeName: "thermometer.sun.fill",
                        temper: 43)
                    weatherDayView(
                        dayOfWeek: "الاربعاء",
                        imgeName: "cloud.sun.fill",
                        temper: 46)
                    weatherDayView(
                        dayOfWeek: "الخميس",
                        imgeName: "sun.max.fill",
                        temper: 42)
                    weatherDayView(
                        dayOfWeek: "الجمعة",
                        imgeName: "tornado",
                        temper: 35)
                    weatherDayView(
                        dayOfWeek: "السبت",
                        imgeName: "cloud.sun.fill",
                        temper: 39)
                }
             Spacer()
                Button {
                    isNight.toggle()
                } label: {
                    buttonView(title: "تغيير اليوم", textColer: .blue, backGround: .white)
                }
            Spacer()
            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}


struct weatherDayView: View {
    var dayOfWeek: String
    var imgeName: String
    var temper: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imgeName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temper)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct backgroundView: View {
    var topColor: Color
    var ButtomColor: Color
    
    var body: some View {
        LinearGradient(gradient:
                        Gradient(colors: [topColor, ButtomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}


struct CitynamesView: View {
    var nameOFcity: String
    var body: some View {
        Text(nameOFcity)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding(.top, 20)
    }
}

struct iconweatherView: View {
    var weathericon: String
    var temper: Int
    var body: some View {
        Image(systemName: weathericon)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
            .padding(.top, 20)
        Text("\(temper)°")
            .font(.system(size: 70, weight: .medium))
            .foregroundColor(.white)
            .padding(.top, 12)
    }
}

