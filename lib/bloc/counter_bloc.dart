import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_events.dart';

class CounterBloc extends Bloc<CounterEvents, int> {
  CounterBloc() : super(2) {
    on<CounterIncrement>((event, emit) {
      emit(state + 1);
    });

    on<CounterDecrement>((event, emit) {
      if (state == 0) {
        return;
      }
      emit(state - 1);
    });
  }
}
