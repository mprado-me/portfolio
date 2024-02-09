start:
	fvm flutter run -d chrome --pid-file /tmp/flutter.pid;
	
watch:
	./scripts/hot_reload.sh;

build-web:
	fvm flutter build web;

fix:
	fvm dart fix --apply;
