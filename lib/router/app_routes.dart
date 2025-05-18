enum AppRoutes {
  home('home', '/home'),
  basket('basket', '/basket'),
  main('main', '/main'),
  area('area', '/area');

  final String name;
  final String path;

  const AppRoutes(this.name, this.path);
}
