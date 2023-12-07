import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';
import 'package:weather/weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    on<FetchWeather>((event, emit) async {
      emit(WeatherLoading());
      try{
        WeatherFactory wf = WeatherFactory('2c5c2a3dcaaa0816337c69db0ddfa508', language: Language.ENGLISH);
        Weather weather = await wf.currentWeatherByLocation(
            event.position.latitude,event.position.longitude);
        emit(WeatherSucces(weather));
      }catch(e){

      }

    });
  }
}
