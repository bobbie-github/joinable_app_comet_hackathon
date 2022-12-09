


import 'package:equatable/equatable.dart';

class Photo extends Equatable{
  final int albumId, id;
  final String title,url;
  const Photo(this.albumId, this.id, this.title, this.url);

  @override
  // TODO: implement props
  List<Object?> get props => [
      albumId,
      id,
     title,url
  ];
}