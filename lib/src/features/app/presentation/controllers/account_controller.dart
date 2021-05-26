
import 'package:get/get.dart';
import 'package:store_vtex/src/features/domain/entities/user_entity.dart';
import 'package:store_vtex/src/features/domain/usecases/get_user_account_id_use_case.dart';
import 'package:meta/meta.dart';
class AccountController extends GetxController {
   final GetUserAccountIdUseCase _getUserAccountIdUseCase;
   UserEntity user;
   AccountController({@required GetUserAccountIdUseCase getUserAccountIdUseCase}) : assert(
   getUserAccountIdUseCase !=  null
   ), _getUserAccountIdUseCase = getUserAccountIdUseCase;


  Future<void> loadForId(String id) async {
     final res = await _getUserAccountIdUseCase.call(id);
     res.fold((l) {

     }, (r) {
       user =  r;
       update();
     });
   }

   @override
  void onReady() {
    loadForId("1098832946_CI");
    super.onReady();
  }
}