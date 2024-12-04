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
      cloudBaseAvg: (json['cloudBaseAvg'] is int)
          ? (json['cloudBaseAvg'] as int).toDouble()
          : json['cloudBaseAvg'],
      cloudBaseMax: (json['cloudBaseMax'] is int)
          ? (json['cloudBaseMax'] as int).toDouble()
          : json['cloudBaseMax'],
      cloudBaseMin: (json['cloudBaseMin'] is int)
          ? (json['cloudBaseMin'] as int).toDouble()
          : json['cloudBaseMin'],
      cloudCeilingAvg: (json['cloudCeilingAvg'] is int)
          ? (json['cloudCeilingAvg'] as int).toDouble()
          : json['cloudCeilingAvg'],
      cloudCeilingMax: (json['cloudCeilingMax'] is int)
          ? (json['cloudCeilingMax'] as int).toDouble()
          : json['cloudCeilingMax'],
      cloudCeilingMin: (json['cloudCeilingMin'] is int)
          ? (json['cloudCeilingMin'] as int).toDouble()
          : json['cloudCeilingMin'],
      cloudCoverAvg: (json['cloudCoverAvg'] is int)
          ? (json['cloudCoverAvg'] as int).toDouble()
          : json['cloudCoverAvg'],
      cloudCoverMax: (json['cloudCoverMax'] is int)
          ? (json['cloudCoverMax'] as int).toDouble()
          : json['cloudCoverMax'],
      cloudCoverMin: (json['cloudCoverMin'] is int)
          ? (json['cloudCoverMin'] as int).toDouble()
          : json['cloudCoverMin'],
      dewPointAvg: (json['dewPointAvg'] is int)
          ? (json['dewPointAvg'] as int).toDouble()
          : json['dewPointAvg'],
      dewPointMax: (json['dewPointMax'] is int)
          ? (json['dewPointMax'] as int).toDouble()
          : json['dewPointMax'],
      dewPointMin: (json['dewPointMin'] is int)
          ? (json['dewPointMin'] as int).toDouble()
          : json['dewPointMin'],
      evapotranspirationAvg: (json['evapotranspirationAvg'] is int)
          ? (json['evapotranspirationAvg'] as int).toDouble()
          : json['evapotranspirationAvg'],
      evapotranspirationMax: (json['evapotranspirationMax'] is int)
          ? (json['evapotranspirationMax'] as int).toDouble()
          : json['evapotranspirationMax'],
      evapotranspirationMin: (json['evapotranspirationMin'] is int)
          ? (json['evapotranspirationMin'] as int).toDouble()
          : json['evapotranspirationMin'],
      evapotranspirationSum: (json['evapotranspirationSum'] is int)
          ? (json['evapotranspirationSum'] as int).toDouble()
          : json['evapotranspirationSum'],
      freezingRainIntensityAvg: (json['freezingRainIntensityAvg'] is int)
          ? (json['freezingRainIntensityAvg'] as int).toDouble()
          : json['freezingRainIntensityAvg'],
      freezingRainIntensityMax: (json['freezingRainIntensityMax'] is int)
          ? (json['freezingRainIntensityMax'] as int).toDouble()
          : json['freezingRainIntensityMax'],
      freezingRainIntensityMin: (json['freezingRainIntensityMin'] is int)
          ? (json['freezingRainIntensityMin'] as int).toDouble()
          : json['freezingRainIntensityMin'],
      humidityAvg: (json['humidityAvg'] is int)
          ? (json['humidityAvg'] as int).toDouble()
          : json['humidityAvg'],
      humidityMax: (json['humidityMax'] is int)
          ? (json['humidityMax'] as int).toDouble()
          : json['humidityMax'],
      humidityMin: (json['humidityMin'] is int)
          ? (json['humidityMin'] as int).toDouble()
          : json['humidityMin'],
      iceAccumulationAvg: (json['iceAccumulationAvg'] is int)
          ? (json['iceAccumulationAvg'] as int).toDouble()
          : json['iceAccumulationAvg'],
      iceAccumulationLweAvg: (json['iceAccumulationLweAvg'] is int)
          ? (json['iceAccumulationLweAvg'] as int).toDouble()
          : json['iceAccumulationLweAvg'],
      iceAccumulationLweMax: (json['iceAccumulationLweMax'] is int)
          ? (json['iceAccumulationLweMax'] as int).toDouble()
          : json['iceAccumulationLweMax'],
      iceAccumulationLweMin: (json['iceAccumulationLweMin'] is int)
          ? (json['iceAccumulationLweMin'] as int).toDouble()
          : json['iceAccumulationLweMin'],
      iceAccumulationLweSum: (json['iceAccumulationLweSum'] is int)
          ? (json['iceAccumulationLweSum'] as int).toDouble()
          : json['iceAccumulationLweSum'],
      iceAccumulationMax: (json['iceAccumulationMax'] is int)
          ? (json['iceAccumulationMax'] as int).toDouble()
          : json['iceAccumulationMax'],
      iceAccumulationMin: (json['iceAccumulationMin'] is int)
          ? (json['iceAccumulationMin'] as int).toDouble()
          : json['iceAccumulationMin'],
      iceAccumulationSum: (json['iceAccumulationSum'] is int)
          ? (json['iceAccumulationSum'] as int).toDouble()
          : json['iceAccumulationSum'],
      moonriseTime: json['moonriseTime'] ?? "",
      moonsetTime: json['moonsetTime'] ?? "",
      precipitationProbabilityAvg: (json['precipitationProbabilityAvg'] is int)
          ? (json['precipitationProbabilityAvg'] as int).toDouble()
          : json['precipitationProbabilityAvg'],
      precipitationProbabilityMax: (json['precipitationProbabilityMax'] is int)
          ? (json['precipitationProbabilityMax'] as int).toDouble()
          : json['precipitationProbabilityMax'],
      precipitationProbabilityMin: (json['precipitationProbabilityMin'] is int)
          ? (json['precipitationProbabilityMin'] as int).toDouble()
          : json['precipitationProbabilityMin'],
      pressureSurfaceLevelAvg: (json['pressureSurfaceLevelAvg'] is int)
          ? (json['pressureSurfaceLevelAvg'] as int).toDouble()
          : json['pressureSurfaceLevelAvg'],
      pressureSurfaceLevelMax: (json['pressureSurfaceLevelMax'] is int)
          ? (json['pressureSurfaceLevelMax'] as int).toDouble()
          : json['pressureSurfaceLevelMax'],
      pressureSurfaceLevelMin: (json['pressureSurfaceLevelMin'] is int)
          ? (json['pressureSurfaceLevelMin'] as int).toDouble()
          : json['pressureSurfaceLevelMin'],
      rainAccumulationAvg: (json['rainAccumulationAvg'] is int)
          ? (json['rainAccumulationAvg'] as int).toDouble()
          : json['rainAccumulationAvg'],
      rainAccumulationLweAvg: (json['rainAccumulationLweAvg'] is int)
          ? (json['rainAccumulationLweAvg'] as int).toDouble()
          : json['rainAccumulationLweAvg'],
      rainAccumulationLweMax: (json['rainAccumulationLweMax'] is int)
          ? (json['rainAccumulationLweMax'] as int).toDouble()
          : json['rainAccumulationLweMax'],
      rainAccumulationLweMin: (json['rainAccumulationLweMin'] is int)
          ? (json['rainAccumulationLweMin'] as int).toDouble()
          : json['rainAccumulationLweMin'],
      rainAccumulationMax: (json['rainAccumulationMax'] is int)
          ? (json['rainAccumulationMax'] as int).toDouble()
          : json['rainAccumulationMax'],
      rainAccumulationMin: (json['rainAccumulationMin'] is int)
          ? (json['rainAccumulationMin'] as int).toDouble()
          : json['rainAccumulationMin'],
      rainAccumulationSum: (json['rainAccumulationSum'] is int)
          ? (json['rainAccumulationSum'] as int).toDouble()
          : json['rainAccumulationSum'],
      rainIntensityAvg: (json['rainIntensityAvg'] is int)
          ? (json['rainIntensityAvg'] as int).toDouble()
          : json['rainIntensityAvg'],
      rainIntensityMax: (json['rainIntensityMax'] is int)
          ? (json['rainIntensityMax'] as int).toDouble()
          : json['rainIntensityMax'],
      rainIntensityMin: (json['rainIntensityMin'] is int)
          ? (json['rainIntensityMin'] as int).toDouble()
          : json['rainIntensityMin'],
      sleetAccumulationAvg: (json['sleetAccumulationAvg'] is int)
          ? (json['sleetAccumulationAvg'] as int).toDouble()
          : json['sleetAccumulationAvg'],
      sleetAccumulationLweAvg: (json['sleetAccumulationLweAvg'] is int)
          ? (json['sleetAccumulationLweAvg'] as int).toDouble()
          : json['sleetAccumulationLweAvg'],
      sleetAccumulationLweMax: (json['sleetAccumulationLweMax'] is int)
          ? (json['sleetAccumulationLweMax'] as int).toDouble()
          : json['sleetAccumulationLweMax'],
      sleetAccumulationLweMin: (json['sleetAccumulationLweMin'] is int)
          ? (json['sleetAccumulationLweMin'] as int).toDouble()
          : json['sleetAccumulationLweMin'],
      sleetAccumulationLweSum: (json['sleetAccumulationLweSum'] is int)
          ? (json['sleetAccumulationLweSum'] as int).toDouble()
          : json['sleetAccumulationLweSum'],
      sleetAccumulationMax: (json['sleetAccumulationMax'] is int)
          ? (json['sleetAccumulationMax'] as int).toDouble()
          : json['sleetAccumulationMax'],
      sleetAccumulationMin: (json['sleetAccumulationMin'] is int)
          ? (json['sleetAccumulationMin'] as int).toDouble()
          : json['sleetAccumulationMin'],
      sleetIntensityAvg: (json['sleetIntensityAvg'] is int)
          ? (json['sleetIntensityAvg'] as int).toDouble()
          : json['sleetIntensityAvg'],
      sleetIntensityMax: (json['sleetIntensityMax'] is int)
          ? (json['sleetIntensityMax'] as int).toDouble()
          : json['sleetIntensityMax'],
      sleetIntensityMin: (json['sleetIntensityMin'] is int)
          ? (json['sleetIntensityMin'] as int).toDouble()
          : json['sleetIntensityMin'],
      snowAccumulationAvg: (json['snowAccumulationAvg'] is int)
          ? (json['snowAccumulationAvg'] as int).toDouble()
          : json['snowAccumulationAvg'],
      snowAccumulationLweAvg: (json['snowAccumulationLweAvg'] is int)
          ? (json['snowAccumulationLweAvg'] as int).toDouble()
          : json['snowAccumulationLweAvg'],
      snowAccumulationLweMax: (json['snowAccumulationLweMax'] is int)
          ? (json['snowAccumulationLweMax'] as int).toDouble()
          : json['snowAccumulationLweMax'],
      snowAccumulationLweMin: (json['snowAccumulationLweMin'] is int)
          ? (json['snowAccumulationLweMin'] as int).toDouble()
          : json['snowAccumulationLweMin'],
      snowAccumulationLweSum: (json['snowAccumulationLweSum'] is int)
          ? (json['snowAccumulationLweSum'] as int).toDouble()
          : json['snowAccumulationLweSum'],
      snowAccumulationMax: (json['snowAccumulationMax'] is int)
          ? (json['snowAccumulationMax'] as int).toDouble()
          : json['snowAccumulationMax'],
      snowAccumulationMin: (json['snowAccumulationMin'] is int)
          ? (json['snowAccumulationMin'] as int).toDouble()
          : json['snowAccumulationMin'],
      snowAccumulationSum: (json['snowAccumulationSum'] is int)
          ? (json['snowAccumulationSum'] as int).toDouble()
          : json['snowAccumulationSum'],
      snowIntensityAvg: (json['snowIntensityAvg'] is int)
          ? (json['snowIntensityAvg'] as int).toDouble()
          : json['snowIntensityAvg'],
      snowIntensityMax: (json['snowIntensityMax'] is int)
          ? (json['snowIntensityMax'] as int).toDouble()
          : json['snowIntensityMax'],
      snowIntensityMin: (json['snowIntensityMin'] is int)
          ? (json['snowIntensityMin'] as int).toDouble()
          : json['snowIntensityMin'],
      sunriseTime: json['sunriseTime'] ?? "",
      sunsetTime: json['sunsetTime'] ?? "",
      temperatureApparentAvg: (json['temperatureApparentAvg'] is int)
          ? (json['temperatureApparentAvg'] as int).toDouble()
          : json['temperatureApparentAvg'],
      temperatureApparentMax: (json['temperatureApparentMax'] is int)
          ? (json['temperatureApparentMax'] as int).toDouble()
          : json['temperatureApparentMax'],
      temperatureApparentMin: (json['temperatureApparentMin'] is int)
          ? (json['temperatureApparentMin'] as int).toDouble()
          : json['temperatureApparentMin'],
      temperatureAvg: (json['temperatureAvg'] is int)
          ? (json['temperatureAvg'] as int).toDouble()
          : json['temperatureAvg'],
      temperatureMax: (json['temperatureMax'] is int)
          ? (json['temperatureMax'] as int).toDouble()
          : json['temperatureMax'],
      temperatureMin: (json['temperatureMin'] is int)
          ? (json['temperatureMin'] as int).toDouble()
          : json['temperatureMin'],
      uvHealthConcernAvg: (json['uvHealthConcernAvg'] is int)
          ? (json['uvHealthConcernAvg'] as int).toDouble()
          : json['uvHealthConcernAvg'],
      uvHealthConcernMax: (json['uvHealthConcernMax'] is int)
          ? (json['uvHealthConcernMax'] as int).toDouble()
          : json['uvHealthConcernMax'],
      uvHealthConcernMin: (json['uvHealthConcernMin'] is int)
          ? (json['uvHealthConcernMin'] as int).toDouble()
          : json['uvHealthConcernMin'],
      uvIndexAvg: (json['uvIndexAvg'] is int)
          ? (json['uvIndexAvg'] as int).toDouble()
          : json['uvIndexAvg'],
      uvIndexMax: (json['uvIndexMax'] is int)
          ? (json['uvIndexMax'] as int).toDouble()
          : json['uvIndexMax'],
      uvIndexMin: (json['uvIndexMin'] is int)
          ? (json['uvIndexMin'] as int).toDouble()
          : json['uvIndexMin'],
      visibilityAvg: (json['visibilityAvg'] is int)
          ? (json['visibilityAvg'] as int).toDouble()
          : json['visibilityAvg'],
      visibilityMax: (json['visibilityMax'] is int)
          ? (json['visibilityMax'] as int).toDouble()
          : json['visibilityMax'],
      visibilityMin: (json['visibilityMin'] is int)
          ? (json['visibilityMin'] as int).toDouble()
          : json['visibilityMin'],
      weatherCodeMax: json['weatherCodeMax'] ?? 0,
      weatherCodeMin: json['weatherCodeMin'] ?? 0,
      windDirectionAvg: (json['windDirectionAvg'] is int)
          ? (json['windDirectionAvg'] as int).toDouble()
          : json['windDirectionAvg'],
      windGustAvg: (json['windGustAvg'] is int)
          ? (json['windGustAvg'] as int).toDouble()
          : json['windGustAvg'],
      windGustMax: (json['windGustMax'] is int)
          ? (json['windGustMax'] as int).toDouble()
          : json['windGustMax'],
      windGustMin: (json['windGustMin'] is int)
          ? (json['windGustMin'] as int).toDouble()
          : json['windGustMin'],
      windSpeedAvg: (json['windSpeedAvg'] is int)
          ? (json['windSpeedAvg'] as int).toDouble()
          : json['windSpeedAvg'],
      windSpeedMax: (json['windSpeedMax'] is int)
          ? (json['windSpeedMax'] as int).toDouble()
          : json['windSpeedMax'],
      windSpeedMin: (json['windSpeedMin'] is int)
          ? (json['windSpeedMin'] as int).toDouble()
          : json['windSpeedMin'],
    );
  }
}
