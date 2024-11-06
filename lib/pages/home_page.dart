import 'package:flutter/cupertino.dart';
import 'package:unsplash/services/http_service.dart';
import 'package:unsplash/services/log_sevice.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  apiSearchPhotos()async{
    var response = await Network.GET(Network.API_SEARCH_PHOTOS,Network.paramsSearchPhotos("office", 1));
    LogService.i(response!);
  }

  apiCollections()async{
    var response =await Network.GET(Network.API_COLLECTIONS, Network.paramsCollections(1));
    LogService.i(response!);
  }

  apiCollectionsPhotos()async{
    String id="sPgfgvR6DMo";
    var response =await Network.GET(Network.API_COLLECTIONS_PHOTOS.replaceFirst(":id", id), Network.paramsCollectionsPhotos(1));
    LogService.i(response!);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apiCollectionsPhotos();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
