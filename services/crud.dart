
class CrudMethods {
  Future<void> addData(blogData) async{

    Firestore.instance.collection("blogs").add(blogData).catchError((e){
      print(e);
    });
  }
}