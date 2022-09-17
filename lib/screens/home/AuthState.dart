class AuthenticationState {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class UnAuthenticated extends AuthenticationState {}

class Authenticated extends AuthenticationState {}
