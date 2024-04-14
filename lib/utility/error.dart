enum AppErrorKey {
  common,
  apiFailed,
  notFound,
}

class AppError {
  final AppErrorKey key;
  final String? code;
  final String? message;

  const AppError({required this.key, this.code, this.message});

  factory AppError.common(String? msg, String? code) {
    return AppError(key: AppErrorKey.common, message: msg, code: code);
  }

  factory AppError.apiFailed(String? msg, String? code) {
    return AppError(key: AppErrorKey.apiFailed, message: msg, code: code);
  }

  factory AppError.notFound(String? msg, String? code) {
    return AppError(key: AppErrorKey.notFound, message: msg, code: code);
  }
}
