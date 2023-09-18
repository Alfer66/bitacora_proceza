/*import 'package:agroapp_trc/utils/http/HttpRequests.dart' as http;

import '../../api/agro_api.dart';
import '../../main.dart';

class Sladmf000RemoteDataSource {
  //Peticiones GET
  Future<Map<String, dynamic>> getvalidaUsuariosSial(
      Map<String, String>? queryParameters) async {
    var res = await AgroApi.post(
        '${InitApp.apiBaseUrl}sialagrows/authorization/usersialauthorization',
        null,
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getEmpresaByUsuario(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}sialagrows/usuariosEmpresa/getEmpresaByEmpleado',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getProductoresByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}sialagrows/agproductores/datosProductoresMovil',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getPaisesByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}sialagrows/agpaises/paisesByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getEstadosProvinciaByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}sialagrows/agestadosprovincia/estadosProvinciaByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getDelegacionesMunicipiosByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}sialagrows/agdelegacionesmunicipios/delegacionesMunicipiosByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getTablaCodigosByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agtablacodigos/tablaCodigosByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getRanchosByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agranchos/ranchosByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getTemporadasByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agtemporadas/temporadasByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getSemanasByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agsemanas/semanasByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getCultivosByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agcultivos/cultivosByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getTemporadasCultivosByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agtemporadascultivos/temporadasCultivosByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getSectoresByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agsectores/sectoresByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getFormatosEvaluacionesByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agformatosevaluaciones/formatosEvaluacionesByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getFormatosPreguntasByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agformatospreguntas/formatosPreguntasByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getFormatosRespuestasByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agformatosrespuestas/formatosRespuestasByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getVisitasCampoByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agvisitascampo/visitasCampoByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getEvaProductoresByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agevaproductores/evaProductoresByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getEvaDetallesByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agevadetalles/evaDetallesByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getVisitasFoliosByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agvisitasfolios/visitasFoliosByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getVariedadesCultivosByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agvariedadescultivos/variedadesCultivosByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getUsuariosProductoresIdUsuario(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agusuariosproductores/usuariosProductoresByIdUsuario',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getPerfilesEmpresaByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agperfilesempresa/perfilesEmpresaByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getProductosServiciosByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/venfiws/vfproductosservicios/productosServiciosByFechaEmpresa',
        queryParameters);
    return res;
  }
  
  Future<Map<String, dynamic>> getPlaguicidasByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agplaguicidas/plaguicidasByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getAgPlagasPlgCultivosByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agplagasplgcultivos/plagasplgcultivosByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getAgBitacoraPlaguicidasByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agbitacoraplaguicidas/bitacoraPlaguicidasByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> setCargaInformacion(
      data, Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.post(
        '${InitApp.apiBaseUrl}/sialagrows/cargainformacion/sincronizaInformacionMovil',
        data,
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> setCargaInformacionVenfi(
      data, Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.post(
        '${InitApp.apiBaseUrl}/venfiws/cargainformacion/sincronizaInformacionMovil',
        data,
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getPlagasByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agplagas/plagasByFecha',
        queryParameters);
    return res;
  }

  Future<Map<String, dynamic>> getPlagasPlaguicidasByFecha(
      Map<String, dynamic>? queryParameters) async {
    var res = await AgroApi.httpGet(
        '${InitApp.apiBaseUrl}/sialagrows/agplagasplaguicidas/plagasPlaguicidasByFecha',
        queryParameters);
    return res;
  }
}
*/