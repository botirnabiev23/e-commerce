part of 'area_bloc.dart';

@freezed
class AreaEvent with _$AreaEvent {
  const factory AreaEvent.loadAreas() = _LoadAreas;
  const factory AreaEvent.selectArea(String area) = _SelectArea;
}
