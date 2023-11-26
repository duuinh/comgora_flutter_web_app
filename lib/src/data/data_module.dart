import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'repository/contract_repository_impl.dart';
import 'repository/vowuser_repository_impl.dart';

final vowUserProvider = Provider((ref) => VowUserRepositoryImpl());
final contractProvider = Provider((ref) => ContractRepositoryImpl());
