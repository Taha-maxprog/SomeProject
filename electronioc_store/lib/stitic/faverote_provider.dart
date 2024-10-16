
import 'package:electronioc_store/stitic/prodect_card2.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class FaveroteProvider extends ChangeNotifier{

  final List<CardForAll> _favorites =[];
  List<CardForAll> get favorites => _favorites;
  void toggleFavorite(CardForAll cardForAll){

    if(_favorites.contains(cardForAll)){

      _favorites.remove(cardForAll);
    }else{

      notifyListeners();
    }
  }
  bool isExist (CardForAll cardForAll){
    final isExist = _favorites.contains(cardForAll);
    return isExist;
  }
  static FaveroteProvider of(BuildContext context ,{bool listen = true}){
    return Provider.of<FaveroteProvider>(context,listen: listen);
    
  }
}