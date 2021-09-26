// @dart=2.9
part of 'account_bloc.dart';

abstract class AccountState extends Equatable {
  const AccountState();

  @override
  List<Object> get props => [];
}

class RegisterInitial extends AccountState {}

class AccountCheckInternet extends AccountState {}

class FailedState extends AccountState {
  final Failure failure;
  const FailedState(this.failure)
      : assert(failure != null, "field must equal value");

  @override
  List<Object> get props => [failure];
}

class UserReturningState extends AccountState {
  final User user;
  const UserReturningState(this.user)
      : assert(user != null, "field must have value");
  @override
  List<Object> get props => [user];
}

class SigninLoading extends AccountState {}

class SigninFailed extends FailedState {
  const SigninFailed(Failure failure) : super(failure);
}

class SignupLoading extends AccountState {}

class SignupFailed extends FailedState {
  const SignupFailed(Failure failure) : super(failure);
}

class IsSignInLoading extends AccountState {}

class IsSignInFailed extends FailedState {
  const IsSignInFailed(Failure failure) : super(failure);
}

class RegisterSucceed extends UserReturningState {
  RegisterSucceed(User user) : super(user);
}

class EditAccountLoading extends AccountState {}

class EditAccountSucceed extends UserReturningState {
  EditAccountSucceed(User user) : super(user);
}

class EditAccountFailed extends FailedState {
  const EditAccountFailed(Failure failure) : super(failure);
}

class LogOutLoading extends AccountState {}

class LogOutSucceed extends AccountState {}

class LogOutFailed extends FailedState {
  const LogOutFailed(Failure failure) : super(failure);
}

class FetchProfileLoading extends AccountState {}

class FetchProfileSucceed extends UserReturningState {
  FetchProfileSucceed(User user) : super(user);
}

class FetchProfileFailed extends FailedState {
  const FetchProfileFailed(Failure failure) : super(failure);
}
