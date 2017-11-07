#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;
    qDebug() << engine.offlineStoragePath();

    return app.exec();
}
