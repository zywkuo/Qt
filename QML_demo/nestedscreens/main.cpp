#include <QGuiApplication>
#include <QIcon>
#include <QQmlApplicationEngine>
#include <QQuickStyle>

int main(int argc, char *argv[]) {
  QGuiApplication app(argc, argv);

  app.setWindowIcon(QIcon("nestedscreens/images/icon.ico"));
  QQuickStyle::setStyle("Material");

  QQmlApplicationEngine engine;
  const QUrl url(u"qrc:/nestedscreens/Main.qml"_qs);
  QObject::connect(
      &engine, &QQmlApplicationEngine::objectCreated, &app,
      [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl) QCoreApplication::exit(-1);
      },
      Qt::QueuedConnection);
  engine.load(url);

  return app.exec();
}
