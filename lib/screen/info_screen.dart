import 'package:demo/screen/weather_api.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  final WeatherService weatherService = WeatherService();
  Map<String, dynamic>? weatherData;
  String city = "Hanoi"; // Thành phố mặc định
  final TextEditingController cityController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchWeatherData();
  }

  Future<void> fetchWeatherData() async {
    try {
      final data = await weatherService.fetchWeather(city);
      setState(() {
        weatherData = data;
      });
    } catch (e) {
      setState(() {
        weatherData = null;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Không thể tải dữ liệu cho $city. Vui lòng thử lại!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Thông tin thời tiết')),
        backgroundColor: Colors.blueAccent,
      ),
      body: Stack(
        children: [
          // Gradient nền
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade300, Colors.blue.shade900],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          // Hoạ tiết nền
          Positioned(
            top: 50,
            left: -50,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            right: -80,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          ),

          // Nội dung chính
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Expanded(
                    child: weatherData == null
                        ? Center(
                            child: Text(
                              'Không có dữ liệu',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Tên thành phố
                              Text(
                                weatherData!['name'], // Hanoi
                                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                              SizedBox(height: 10),

                              // Biểu tượng thời tiết
                              Image.network(
                                'https://openweathermap.org/img/wn/${weatherData!['weather'][0]['icon']}@2x.png',
                                width: 100,
                                height: 100,
                              ),

                              // Nhiệt độ
                              Text(
                                '${weatherData!['main']['temp']}°C',
                                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                              SizedBox(height: 10),

                              // Mô tả thời tiết
                              Text(
                                weatherData!['weather'][0]['description'], // clear sky
                                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic, color: Colors.white70),
                              ),
                              SizedBox(height: 20),

                              // Các thông tin chi tiết
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Icon(Icons.water, color: Colors.blue.shade100),
                                      Text(
                                        '${weatherData!['main']['humidity']}%',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text('Độ ẩm', style: TextStyle(color: Colors.white70)),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Icon(Icons.air, color: Colors.green.shade100),
                                      Text(
                                        '${weatherData!['wind']['speed']} m/s',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text('Gió', style: TextStyle(color: Colors.white70)),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Icon(Icons.thermostat, color: Colors.red.shade100),
                                      Text(
                                        '${weatherData!['main']['feels_like']}°C',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text('Cảm giác', style: TextStyle(color: Colors.white70)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                  ),
                  SizedBox(height: 20),
                  // Input đổi thành phố
                  TextField(
                    controller: cityController,
                    decoration: InputDecoration(
                      hintText: 'Nhập tên thành phố',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: TextStyle(color: Colors.black),
                    onSubmitted: (value) {
                      setState(() {
                        city = value;
                      });
                      fetchWeatherData();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
