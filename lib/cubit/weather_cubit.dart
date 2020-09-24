import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_app/models/weather.dart';
import 'package:test_app/services/weather_repository.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherRepository _weatherRepository;

  WeatherCubit(this._weatherRepository) : super(WeatherInitial());

  Future<void> getWeather(String cityName) async {
    try {
      emit(WeatherLoading());
      final weather = await _weatherRepository.fetchWeather(cityName);
      emit(WeatherLoaded(weather: weather));
    } on NetworkException {
      emit(
        WeatherError(
          message: "Could't fetch weather. Is the device online ?",
        ),
      );
    }
  }
}
