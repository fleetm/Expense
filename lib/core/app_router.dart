import 'package:expenses/Features/Home/home_view.dart';
import 'package:expenses/Features/expense/expense_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: '/expense',
      builder: (context, state) {
        return const ExpenseView();
      },
    ),
  ]);
}
