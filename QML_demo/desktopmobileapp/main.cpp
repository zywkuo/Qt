#include <QFile>
#include <QFileSelector>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>

int main(int argc, char *argv[]) {
  QGuiApplication app(argc, argv);
  // 修改风格 需添加头文件及CMakeList.txt引入
  QQuickStyle::setStyle("Fusion");
  QQmlApplicationEngine engine;

  QFileSelector selector;
  QFile defaultsFile(selector.select("desktopmobileapp/Main.qml"));
  qDebug() << defaultsFile.fileName();
  //  const QUrl url("qrc:" + defaultsFile.fileName());
  const QUrl url(u"qrc:/desktopmobileapp/+android/main.qml"_qs);

  // const QUrl url(u"qrc:/desktopmobileapp/main.qml"_qs);

  QObject::connect(
      &engine, &QQmlApplicationEngine::objectCreated, &app,
      [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl) QCoreApplication::exit(-1);
      },
      Qt::QueuedConnection);
  engine.load(url);

  return app.exec();
}
