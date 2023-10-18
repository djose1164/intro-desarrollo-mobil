#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>

// Daniel Victoriano - 202010646
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QQuickStyle::setStyle("Material");
    const QUrl url(u"qrc:/Parcial1Apps/Main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed,
        &app, []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
