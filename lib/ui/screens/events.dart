

class favouriteEvents_type{}
class fitchFavourite extends favouriteEvents_type
{

}
class removeFromfavourite extends favouriteEvents_type
{
  final int removedId ;
  removeFromfavourite({required this.removedId});
}


