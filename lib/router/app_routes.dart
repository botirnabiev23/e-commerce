enum AppRoutes {
  home('home', '/home'),
  basket('basket', '/basket'),
  main('main', '/main');

  final String name;
  final String path;

  const AppRoutes(this.name, this.path);
}
