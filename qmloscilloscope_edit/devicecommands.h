#ifndef DEVICECOMMANDS_H
#define DEVICECOMMANDS_H

#include <QObject>

class DeviceCommands : public QObject
{
    Q_OBJECT
public:
    explicit DeviceCommands(QObject *parent = nullptr);

    Q_INVOKABLE void loadSettings(){
        int c = 5;
        c = 5;
    }

signals:

};

#endif // DEVICECOMMANDS_H
