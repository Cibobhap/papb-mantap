// weekly_forecast_screen.dart
import 'package:flutter/material.dart';
import 'package:weather/models/forecast_model.dart';
import 'package:weather/services/weather_api.dart';

class WeeklyForecastScreen extends StatefulWidget {
  const WeeklyForecastScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WeeklyForecastScreen createState() => _WeeklyForecastScreen();
}

class _WeeklyForecastScreen extends State<WeeklyForecastScreen> {
  TommorowApi tommorowApi = TommorowApi();
  TimelinesResponse? timelineRespone;
  String location = 'Jakarta';
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchWeather(location);
  }

  IconData getWeatherIcon(int weatherCode) {
    // Example mapping based on the weather code
    switch (weatherCode) {
      case 1001: // Clear sky
        return Icons.wb_sunny;
      case 1002: // Partly cloudy
        return Icons.cloud;
      case 1003: // Cloudy
        return Icons.cloud_queue;
      case 1004: // Overcast
        return Icons.cloud_off;
      // Add more cases based on your weather codes
      case 4200: // Light Rain
        return Icons.umbrella;
      default:
        return Icons.help_outline;
    }
  }

  String getWeatherColor(int weatherCode) {
    switch (weatherCode) {
      case 1001: // Clear sky
        return "y";
      case 1002: // Partly cloudy
        return Icons.cloud;
      case 1003: // Cloudy
        return Icons.cloud_queue;
      case 1004: // Overcast
        return Icons.cloud_off;
      // Add more cases based on your weather codes
      case 4200: // Light Rain
        return Icons.umbrella;
      default:
        return Icons.help_outline;
    }
  }

  void fetchWeather(String city) async {
    setState(() {
      isLoading = true;
    });

    try {
      final tommorowRes = await tommorowApi.fetchWeatherData(location);

      setState(() {
        timelineRespone = tommorowRes;
        isLoading = false;
      });
    } catch (e) {
      debugPrint(e.toString());
      setState(() {
        isLoading = false;
      });
    }
  }

  String getWeekdayFromDate(String date) {
    DateTime parsedDate = DateTime.parse(date);
    // List of short weekday names
    List<String> weekDays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

    // Return the corresponding day name based on the parsedDate's weekday.
    return weekDays[parsedDate.weekday %
        7]; // Weekday is 1-based, so use % 7 to get the correct day.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.grey[900], // Set background to dark color
      body: isLoading
          ? const Center(child: CircularProgressIndicator(color: Colors.white))
          : timelineRespone != null
              ? Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        // Center the text
                        child: Text(
                          "Weekly Forecast",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white, // Set text color to white
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Column(
                        children: [
                          ...timelineRespone!.daily.map((day) {
                            return Container(
                              margin: const EdgeInsets.symmetric(vertical: 8),
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: const LinearGradient(
                                  colors: [Colors.blueGrey, Colors.blueAccent],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Display date (time)
                                  Text(
                                    getWeekdayFromDate(day
                                        .time), // Assuming 'time' is in a proper date format
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      // Display weather icon
                                      Icon(
                                        getWeatherIcon(
                                            day.values.weatherCodeMax),
                                        color: Colors.yellowAccent,
                                        size: 30,
                                      ),
                                      const SizedBox(width: 15),
                                      // Display temperature range
                                      Text(
                                        "${day.values.temperatureMin}° - ${day.values.temperatureMax}°",
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ],
                      ),
                    ],
                  ),
                )
              : const Center(
                  child: Text(
                    'Failed to load weather data',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
    );
  }
}
