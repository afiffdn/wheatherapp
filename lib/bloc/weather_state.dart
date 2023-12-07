part of 'weather_bloc.dart';

@immutable
abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}
class WeatherFailure extends WeatherState {}
class WeatherSucces extends WeatherState {

  final Weather weather;

  WeatherSucces(this.weather);

}

