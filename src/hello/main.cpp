#include <QtGui>
#include <QtQml>

int main(int argc, char **argv) {
  QGuiApplication app(argc, argv);
  QQmlApplicationEngine engine;

  if (argc > 1) {
    QFileInfo file(argv[1]);
    qDebug() << file;
    if (!file.exists()) {
      return 1;
    }
    engine.load(file.absoluteFilePath());
  } else {
    // default
    engine.loadFromModule("hello", "Main");
  }

  return app.exec();
}
