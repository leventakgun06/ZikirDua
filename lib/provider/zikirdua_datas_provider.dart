import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zikirdua/provider/zikirdua_provider.dart';

import '../models/zikirdua_model.dart';

final zikirDuaDatasProvider =
FutureProvider.autoDispose<List<ZikirDuaModel>>((ref) {
  return ref.read(zikirDuaProvider).getZikirDuaDatas().then((zikirDua) {
    final List<ZikirDuaModel> zikirDuaList = [];
    for (var i = 0; i < zikirDua.length; i++) {
      zikirDuaList.add(
        ZikirDuaModel(
          id: zikirDua[i]["id"],
          name: zikirDua[i]["name"],
          besmele: zikirDua[i]["besmele"],
          descp: zikirDua[i]["descp"],
        ),
      );
    }
    return zikirDuaList;
  });
});

final ayetelDatasProvider =
FutureProvider.autoDispose<List<ZikirDuaModel>>((ref) {
  return ref.read(ayetelProvider).getZikirDuaDatas().then((ayetel) {
    final List<ZikirDuaModel> ayetelList = [];
    for (var i = 0; i < ayetel.length; i++) {
      ayetelList.add(
        ZikirDuaModel(
          id: ayetel[i]["id"],
          name: ayetel[i]["name"],
          besmele: ayetel[i]["besmele"],
          descp: ayetel[i]["descp"],
        ),
      );
    }
    return ayetelList;
  });
});

final hadisDatasProvider =
FutureProvider.autoDispose<List<ZikirDuaModel>>((ref) {
  return ref.read(hadisProvider).getZikirDuaDatas().then((hadis) {
    final List<ZikirDuaModel> hadisList = [];
    for (var i = 0; i < hadis.length; i++) {
      hadisList.add(
        ZikirDuaModel(
          id: hadis[i]["id"],
          name: hadis[i]["name"],
          besmele: hadis[i]["besmele"],
          descp: hadis[i]["descp"],
        ),
      );
    }
    return hadisList;
  });
});

final esmaDatasProvider =
FutureProvider.autoDispose<List<ZikirDuaModel>>((ref) {
  return ref.read(esmaProvider).getZikirDuaDatas().then((esma) {
    final List<ZikirDuaModel> hadisList = [];
    for (var i = 0; i < esma.length; i++) {
      hadisList.add(
        ZikirDuaModel(
          id: esma[i]["id"],
          name: esma[i]["name"],
          besmele: esma[i]["besmele"],
          descp: esma[i]["descp"],
        ),
      );
    }
    return hadisList;
  });
});
