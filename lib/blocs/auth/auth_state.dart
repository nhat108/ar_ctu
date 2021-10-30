part of 'auth_bloc.dart';

class AuthState extends Equatable {
  final bool? isAuthLoading;

  AuthState({this.isAuthLoading});

  factory AuthState.empty() {
    return AuthState(
      isAuthLoading: false,
    );
  }

  AuthState copyWith({
    bool? isAuthLoading,
  }) {
    return AuthState(
      isAuthLoading: isAuthLoading ?? this.isAuthLoading,
    );
  }

  @override
  List<Object?> get props => [this.isAuthLoading];
}
