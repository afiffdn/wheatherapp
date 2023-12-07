part of 'weather_bloc.dart';

@immutable
abstract class WeatherEvent {}
class FetchWeather extends WeatherEvent{

  final Position position;

  FetchWeather(this.position);

}
