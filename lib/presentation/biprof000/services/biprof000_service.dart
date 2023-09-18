/*
import 'package:agroapp_trc/sladmf000/model/remoteDatasource.dart';
import 'package:agroapp_trc/utils/database/dao/AgUsuariosProductores.dart';
import 'package:agroapp_trc/utils/database/dao/CompanyDao.dart';
import 'package:agroapp_trc/utils/database/dao/UsersDao.dart';

class Sladmf001Service {
  Future<List<Map<String, Object?>>> getName() async {
    return UsersDao().getName();
  }

  Future<List<Map<String, Object?>>> getIdUsuario() async {
    return UsersDao().idUsuario();
  }

  Future<String> getCompanyName() async {
    var company = await CompanyDao().getCompanyName();
    return company[0]['cveEmpresa'].toString();
  }

  Future<String> getCveUsuario() async {
    var usuario = await UsersDao().getCveUsuario();
    return usuario[0]['cveUsuario'].toString();
  }

  Future<int> deleteUser() async {
    return await UsersDao().deleteAll();
  }

  Future<int> deleteUsuariosProductores() async {
    return await AgUsuariosProductoresDao().deleteAll();
  }

  Future<int> getCompanyidEmpresa(String cveEmpresa) async {
    var company = await CompanyDao().getCompanyIdEmpresa(cveEmpresa);
    return int.parse(company.first['idEmpresa'].toString());
  }
}
*/