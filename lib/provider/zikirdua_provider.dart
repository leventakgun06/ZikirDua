import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/constants.dart';
import '../services/zikirdua_service.dart';


final zikirDuaProvider =
Provider((ref) => ZikirDuaService(zikirDuaUrl, "dua"));

final ayetelProvider =
Provider((ref) => ZikirDuaService(zikirDuaUrl, "ayetel"));

final hadisProvider =
Provider((ref) => ZikirDuaService(zikirDuaUrl, "hadis"));

final esmaProvider =
Provider((ref) => ZikirDuaService(zikirDuaUrl, "esmaul"));