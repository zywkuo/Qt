#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickStyle>
#include <QScreen>
#include <QtQml>
#include <QQmlEngine>
#include <QObject>

#include "myobject.h"

int main(int argc, char *argv[]) {
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QQuickStyle::setStyle("Basic");

    // 创建全局对象
    QQmlContext *context = engine.rootContext();
    // 获取当前窗口大小
    QScreen *screen =  QGuiApplication::primaryScreen();
    // 创建盒子
    QRect rect = screen->virtualGeometry();
    // 赋值
    // rect.width()Ï
    context->setContextProperty("SCERRN_WIDTH", 800);

    qmlRegisterType<MyObject>("MyObj",1,0,"MyObject");

    qmlRegisterSingletonInstance("MyObj",1,0,"MyObject",MyObject::getInstance());

    const QUrl url(u"qrc:/attributeType/Main.qml"_qs);
    QObject::connect(
        &engine, &QQmlApplicationEngine::objectCreated, &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl) QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    engine.load(url);

    // engine 加载完成后   load以后

    // 返回QML主文件 所有对象信息 list
    auto list = engine.rootObjects();

    // 获取元素
    // auto objName = list.first()->objectName();
    // auto buttonObj = list.first()->findChild<QObject *>("mybutton");

    auto window = list.first();

    QObject::connect(window, SIGNAL(qmlSig(int, QString)), MyObject::getInstance(), SLOT(cppSlot(int, QString)));

    QObject::connect(MyObject::getInstance(), SIGNAL(cppSig(QVariant, QVariant)), window, SLOT(qmlSlot(QVariant, QVariant)));

    // qDebug() << buttonObj;

    return app.exec();
}
