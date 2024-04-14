enum AppErrorKey {
  common,
  apiFailed,
  notFound,
}

class AppError {
  final AppErrorKey key;
  final String? message;

  const AppError({required this.key, this.message});

  factory AppError.common(String? msg) {
    return AppError(key: AppErrorKey.common, message: msg);
  }

  factory AppError.apiFailed(String? msg) {
    return AppError(key: AppErrorKey.apiFailed, message: msg);
  }

  factory AppError.notFound(String? msg) {
    return AppError(key: AppErrorKey.notFound, message: msg);
  }
}
