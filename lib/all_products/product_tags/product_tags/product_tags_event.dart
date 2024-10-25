part of 'product_tags_bloc.dart';

@freezed
class ProductTagsEvent with _$ProductTagsEvent {
   const factory ProductTagsEvent.fetch() = _Fetch;
}