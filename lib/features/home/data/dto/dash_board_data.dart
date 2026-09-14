import 'package:freezed_annotation/freezed_annotation.dart';

part 'dash_board_data.freezed.dart';
part 'dash_board_data.g.dart';

@freezed
abstract class DashBoardData with _$DashBoardData {
  const factory DashBoardData({
    required String szGreeting,
    required double decCashSaldo,
    @Default(false) bool bHasOpenBilled,
    @Default(0) int intOpenBill,
    String? gdId,
    int? intIndex,
    bool? bUpdated,
  }) = _DashBoardData;

  factory DashBoardData.fromJson(Map<String, dynamic> json) => _$DashBoardDataFromJson(json);
}
