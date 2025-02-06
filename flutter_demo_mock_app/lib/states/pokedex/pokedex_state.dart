import 'package:flutter_demo_mock_app/models/pokedex/pokedex_page_state.dart';
import 'package:flutter_demo_mock_app/states/pokedex/usecase/loaded_case.dart';
import 'package:flutter_demo_mock_app/states/pokedex/usecase/loading_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PokedexState extends Notifier<PokedexPageState>
    with LoadingCase, LoadedCase {
  @override
  PokedexPageState build() {
    Future.delayed(
      Duration(seconds: 5),
      () {
        state = PokedexLoaded();
      },
    );
    return PokedexLoading();
  }

  @override
  Future<void> onClickLoadButton() async {
    print('on click load button');
  }
}

final pokedexProvider = NotifierProvider<PokedexState, PokedexPageState>(
  PokedexState.new,
);
