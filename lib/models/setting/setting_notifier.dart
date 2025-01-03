import 'package:battle_timer/models/setting/rotation.dart';
import 'package:battle_timer/models/setting/setting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingNotifier extends StateNotifier<Setting> {
  SettingNotifier() : super(const Setting());

  void rotate() {
    state = state.copyWith(rotation: state.rotation.rotate());
  }

  void setTime(int hour, int minute, int second) {
    state = state.copyWith(hour: hour, minute: minute, second: second);
  }

  void setPlayerName(String playerName) {
    state = state.copyWith(playerName: playerName);
  }

  void setOpponentName(String opponentName) {
    state = state.copyWith(opponentName: opponentName);
  }

  void reset() {
    state = const Setting();
  }
}

final settingProvider = StateNotifierProvider<SettingNotifier, Setting>((ref) {
  return SettingNotifier();
});
