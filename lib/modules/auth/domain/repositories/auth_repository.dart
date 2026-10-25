import '../entities/authenticated_user.dart';

abstract interface class AuthRepository {
  /// Autentica um usuário existente utilizando e-mail e senha.
  ///
  /// Retorna o usuário autenticado com um perfil válido no KYM.
  /// Não realiza cadastro de novos usuários.
  Future<AuthenticatedUser> signInWithEmail({
    required String email,
    required String password,
  });

  /// Recupera o usuário autenticado atualmente.
  ///
  /// Retorna null quando não existe uma sessão autenticada.
  /// Se existir uma sessão, mas não for possível validar o perfil,
  /// a implementação deverá comunicar a falha correspondente.
  Future<AuthenticatedUser?> getCurrentUser();

  /// Encerra a sessão do usuário atual.
  Future<void> signOut();
}
