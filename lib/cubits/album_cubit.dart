import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/album_model.dart';
import '../services/api_service.dart';


abstract class AlbumsState {}
class AlbumsInitial extends AlbumsState {}
class AlbumsLoading extends AlbumsState {}
class AlbumsLoaded extends AlbumsState {
  final List<Album> albums;
  AlbumsLoaded(this.albums);
}
class AlbumsError extends AlbumsState {
  final String message;
  AlbumsError(this.message);
}


class AlbumsCubit extends Cubit<AlbumsState> {
  final ApiService apiService;
  AlbumsCubit(this.apiService) : super(AlbumsInitial());


  Future<void> loadAlbums() async {
    try {
      emit(AlbumsLoading());
      final albums = await apiService.fetchAlbums();
      emit(AlbumsLoaded(albums));
    } catch (e) {
      emit(AlbumsError(e.toString()));
    }
  }
}