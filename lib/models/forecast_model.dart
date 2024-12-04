import 'dart:convert';

class TimelinesResponse {
  final List<DailyTimeline> daily;

  TimelinesResponse({required this.daily});

  factory TimelinesResponse.fromJson(Map<String, dynamic> json) {
    var list = json['timelines']['daily'] as List;
    List<DailyTimeline> dailyList =
        list.map((item) => DailyTimeline.fromJson(item)).toList();

    return TimelinesResponse(daily: dailyList);
  }
}

class DailyTimeline {
  final String time;
  final WeatherValues values;

  DailyTimeline({required this.time, required this.values});

  factory DailyTimeline.fromJson(Map<String, dynamic> json) {
    return DailyTimeline(
      time: json['time'],
      values: WeatherValues.fromJson(json['values']),
    );
  }
}

class WeatherValues {
  final double cloudBaseAvg;
  final double cloudBaseMax;
  final double cloudBaseMin;
  final double cloudCeilingAvg;
  final double cloudCeilingMax;
  final double cloudCeilingMin;
  final double cloudCoverAvg;
  final double cloudCoverMax;
  final double cloudCoverMin;
  final double dewPointAvg;
  final double dewPointMax;
  final double dewPointMin;
  final double evapotranspirationAvg;
  final double evapotranspirationMax;
  final double evapotranspirationMin;
  final double evapotranspirationSum;
  final double freezingRainIntensityAvg;
  final double freezingRainIntensityMax;
  final double freezingRainIntensityMin;
  final double humidityAvg;
  final double humidityMax;
  final double humidityMin;
  final double iceAccumulationAvg;
  final double iceAccumulationLweAvg;
  final double iceAccumulationLweMax;
  final double iceAccumulationLweMin;
  final double iceAccumulationLweSum;
  final double iceAccumulationMax;
  final double iceAccumulationMin;
  final double iceAccumulationSum;
  final String moonriseTime;
  final String moonsetTime;
  final double precipitationProbabilityAvg;
  final double precipitationProbabilityMax;
  final double precipitationProbabilityMin;
  final double pressureSurfaceLevelAvg;
  final double pressureSurfaceLevelMax;
  final double pressureSurfaceLevelMin;
  final double rainAccumulationAvg;
  final double rainAccumulationLweAvg;
  final double rainAccumulationLweMax;
  final double rainAccumulationLweMin;
  final double rainAccumulationMax;
  final double rainAccumulationMin;
  final double rainAccumulationSum;
  final double rainIntensityAvg;
  final double rainIntensityMax;
  final double rainIntensityMin;
  final double sleetAccumulationAvg;
  final double sleetAccumulationLweAvg;
  final double sleetAccumulationLweMax;
  final double sleetAccumulationLweMin;
  final double sleetAccumulationLweSum;
  final double sleetAccumulationMax;
  final double sleetAccumulationMin;
  final double sleetIntensityAvg;
  final double sleetIntensityMax;
  final double sleetIntensityMin;
  final double snowAccumulationAvg;
  final double snowAccumulationLweAvg;
  final double snowAccumulationLweMax;
  final double snowAccumulationLweMin;
  final double snowAccumulationLweSum;
  final double snowAccumulationMax;
  final double snowAccumulationMin;
  final double snowAccumulationSum;
  final double snowIntensityAvg;
  final double snowIntensityMax;
  final double snowIntensityMin;
  final String sunriseTime;
  final String sunsetTime;
  final double temperatureApparentAvg;
  final double temperatureApparentMax;
  final double temperatureApparentMin;
  final double temperatureAvg;
  final double temperatureMax;
  final double temperatureMin;
  final double uvHealthConcernAvg;
  final double uvHealthConcernMax;
  final double uvHealthConcernMin;
  final double uvIndexAvg;
  final double uvIndexMax;
  final double uvIndexMin;
  final double visibilityAvg;
  final double visibilityMax;
  final double visibilityMin;
  final int weatherCodeMax;
  final int weatherCodeMin;
  final double windDirectionAvg;
  final double windGustAvg;
  final double windGustMax;
  final double windGustMin;
  final double windSpeedAvg;
  final double windSpeedMax;
  final double windSpeedMin;

  WeatherValues({
    required this.cloudBaseAvg,
    required this.cloudBaseMax,
    required this.cloudBaseMin,
    required this.cloudCeilingAvg,
    required this.cloudCeilingMax,
    required this.cloudCeilingMin,
    required this.cloudCoverAvg,
    required this.cloudCoverMax,
    required this.cloudCoverMin,
    required this.dewPointAvg,
    required this.dewPointMax,
    required this.dewPointMin,
    required this.evapotranspirationAvg,
    required this.evapotranspirationMax,
    required this.evapotranspirationMin,
    required this.evapotranspirationSum,
    required this.freezingRainIntensityAvg,
    required this.freezingRainIntensityMax,
    required this.freezingRainIntensityMin,
    required this.humidityAvg,
    required this.humidityMax,
    required this.humidityMin,
    required this.iceAccumulationAvg,
    required this.iceAccumulationLweAvg,
    required this.iceAccumulationLweMax,
    required this.iceAccumulationLweMin,
    required this.iceAccumulationLweSum,
    required this.iceAccumulationMax,
    required this.iceAccumulationMin,
    required this.iceAccumulationSum,
    required this.moonriseTime,
    required this.moonsetTime,
    required this.precipitationProbabilityAvg,
    required this.precipitationProbabilityMax,
    required this.precipitationProbabilityMin,
    required this.pressureSurfaceLevelAvg,
    required this.pressureSurfaceLevelMax,
    required this.pressureSurfaceLevelMin,
    required this.rainAccumulationAvg,
    required this.rainAccumulationLweAvg,
    required this.rainAccumulationLweMax,
    required this.rainAccumulationLweMin,
    required this.rainAccumulationMax,
    required this.rainAccumulationMin,
    required this.rainAccumulationSum,
    required this.rainIntensityAvg,
    required this.rainIntensityMax,
    required this.rainIntensityMin,
    required this.sleetAccumulationAvg,
    required this.sleetAccumulationLweAvg,
    required this.sleetAccumulationLweMax,
    required this.sleetAccumulationLweMin,
    required this.sleetAccumulationLweSum,
    required this.sleetAccumulationMax,
    required this.sleetAccumulationMin,
    required this.sleetIntensityAvg,
    required this.sleetIntensityMax,
    required this.sleetIntensityMin,
    required this.snowAccumulationAvg,
    required this.snowAccumulationLweAvg,
    required this.snowAccumulationLweMax,
    required this.snowAccumulationLweMin,
    required this.snowAccumulationLweSum,
    required this.snowAccumulationMax,
    required this.snowAccumulationMin,
    required this.snowAccumulationSum,
    required this.snowIntensityAvg,
    required this.snowIntensityMax,
    required this.snowIntensityMin,
    required this.sunriseTime,
    required this.sunsetTime,
    required this.temperatureApparentAvg,
    required this.temperatureApparentMax,
    required this.temperatureApparentMin,
    required this.temperatureAvg,
    required this.temperatureMax,
    required this.temperatureMin,
    required this.uvHealthConcernAvg,
    required this.uvHealthConcernMax,
    required this.uvHealthConcernMin,
    required this.uvIndexAvg,
    required this.uvIndexMax,
    required this.uvIndexMin,
    required this.visibilityAvg,
    required this.visibilityMax,
    required this.visibilityMin,
    required this.weatherCodeMax,
    required this.weatherCodeMin,
    required this.windDirectionAvg,
    required this.windGustAvg,
    required this.windGustMax,
    required this.windGustMin,
    required this.windSpeedAvg,
    required this.windSpeedMax,
    required this.windSpeedMin,
  });

  factory WeatherValues.fromJson(Map<String, dynamic> json) {
    return WeatherValues(
      cloudBaseAvg: json['cloudBaseAvg'],
      cloudBaseMax: json['cloudBaseMax'],
      cloudBaseMin: json['cloudBaseMin'],
      cloudCeilingAvg: json['cloudCeilingAvg'],
      cloudCeilingMax: json['cloudCeilingMax'],
      cloudCeilingMin: json['cloudCeilingMin'],
      cloudCoverAvg: json['cloudCoverAvg'],
      cloudCoverMax: json['cloudCoverMax'],
      cloudCoverMin: json['cloudCoverMin'],
      dewPointAvg: json['dewPointAvg'],
      dewPointMax: json['dewPointMax'],
      dewPointMin: json['dewPointMin'],
      evapotranspirationAvg: json['evapotranspirationAvg'],
      evapotranspirationMax: json['evapotranspirationMax'],
      evapotranspirationMin: json['evapotranspirationMin'],
      evapotranspirationSum: json['evapotranspirationSum'],
      freezingRainIntensityAvg: json['freezingRainIntensityAvg'],
      freezingRainIntensityMax: json['freezingRainIntensityMax'],
      freezingRainIntensityMin: json['freezingRainIntensityMin'],
      humidityAvg: json['humidityAvg'],
      humidityMax: json['humidityMax'],
      humidityMin: json['humidityMin'],
      iceAccumulationAvg: json['iceAccumulationAvg'],
      iceAccumulationLweAvg: json['iceAccumulationLweAvg'],
      iceAccumulationLweMax: json['iceAccumulationLweMax'],
      iceAccumulationLweMin: json['iceAccumulationLweMin'],
      iceAccumulationLweSum: json['iceAccumulationLweSum'],
      iceAccumulationMax: json['iceAccumulationMax'],
      iceAccumulationMin: json['iceAccumulationMin'],
      iceAccumulationSum: json['iceAccumulationSum'],
      moonriseTime: json['moonriseTime'],
      moonsetTime: json['moonsetTime'],
      precipitationProbabilityAvg: json['precipitationProbabilityAvg'],
      precipitationProbabilityMax: json['precipitationProbabilityMax'],
      precipitationProbabilityMin: json['precipitationProbabilityMin'],
      pressureSurfaceLevelAvg: json['pressureSurfaceLevelAvg'],
      pressureSurfaceLevelMax: json['pressureSurfaceLevelMax'],
      pressureSurfaceLevelMin: json['pressureSurfaceLevelMin'],
      rainAccumulationAvg: json['rainAccumulationAvg'],
      rainAccumulationLweAvg: json['rainAccumulationLweAvg'],
      rainAccumulationLweMax: json['rainAccumulationLweMax'],
      rainAccumulationLweMin: json['rainAccumulationLweMin'],
      rainAccumulationMax: json['rainAccumulationMax'],
      rainAccumulationMin: json['rainAccumulationMin'],
      rainAccumulationSum: json['rainAccumulationSum'],
      rainIntensityAvg: json['rainIntensityAvg'],
      rainIntensityMax: json['rainIntensityMax'],
      rainIntensityMin: json['rainIntensityMin'],
      sleetAccumulationAvg: json['sleetAccumulationAvg'],
      sleetAccumulationLweAvg: json['sleetAccumulationLweAvg'],
      sleetAccumulationLweMax: json['sleetAccumulationLweMax'],
      sleetAccumulationLweMin: json['sleetAccumulationLweMin'],
      sleetAccumulationLweSum: json['sleetAccumulationLweSum'],
      sleetAccumulationMax: json['sleetAccumulationMax'],
      sleetAccumulationMin: json['sleetAccumulationMin'],
      sleetIntensityAvg: json['sleetIntensityAvg'],
      sleetIntensityMax: json['sleetIntensityMax'],
      sleetIntensityMin: json['sleetIntensityMin'],
      snowAccumulationAvg: json['snowAccumulationAvg'],
      snowAccumulationLweAvg: json['snowAccumulationLweAvg'],
      snowAccumulationLweMax: json['snowAccumulationLweMax'],
      snowAccumulationLweMin: json['snowAccumulationLweMin'],
      snowAccumulationLweSum: json['snowAccumulationLweSum'],
      snowAccumulationMax: json['snowAccumulationMax'],
      snowAccumulationMin: json['snowAccumulationMin'],
      snowAccumulationSum: json['snowAccumulationSum'],
      snowIntensityAvg: json['snowIntensityAvg'],
      snowIntensityMax: json['snowIntensityMax'],
      snowIntensityMin: json['snowIntensityMin'],
      sunriseTime: json['sunriseTime'],
      sunsetTime: json['sunsetTime'],
      temperatureApparentAvg: json['temperatureApparentAvg'],
      temperatureApparentMax: json['temperatureApparentMax'],
      temperatureApparentMin: json['temperatureApparentMin'],
      temperatureAvg: json['temperatureAvg'],
      temperatureMax: json['temperatureMax'],
      temperatureMin: json['temperatureMin'],
      uvHealthConcernAvg: json['uvHealthConcernAvg'],
      uvHealthConcernMax: json['uvHealthConcernMax'],
      uvHealthConcernMin: json['uvHealthConcernMin'],
      uvIndexAvg: json['uvIndexAvg'],
      uvIndexMax: json['uvIndexMax'],
      uvIndexMin: json['uvIndexMin'],
      visibilityAvg: json['visibilityAvg'],
      visibilityMax: json['visibilityMax'],
      visibilityMin: json['visibilityMin'],
      weatherCodeMax: json['weatherCodeMax'],
      weatherCodeMin: json['weatherCodeMin'],
      windDirectionAvg: json['windDirectionAvg'],
      windGustAvg: json['windGustAvg'],
      windGustMax: json['windGustMax'],
      windGustMin: json['windGustMin'],
      windSpeedAvg: json['windSpeedAvg'],
      windSpeedMax: json['windSpeedMax'],
      windSpeedMin: json['windSpeedMin'],
    );
  }
}
