import 'package:equatable/equatable.dart';
class CategoryEntity extends Equatable {

  final int id;
  final String name;
  final bool hasChildren;
  final String url;
  final List<CategoryEntity> children;
  final String title;
  final String metaTagDescription;

  CategoryEntity({this.id, this.name, this.hasChildren, this.url, this.children, this.title, this.metaTagDescription});

  @override
  List<Object> get props => [id, name, hasChildren, url, children, title, metaTagDescription];

}