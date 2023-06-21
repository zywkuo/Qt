# Qt

Qt Study

## QML C++ 创建自定义对象

1、新建 Qobject 页面 MyObject
2、main.cpp 加入

```
#include "myobject.h"

qmlRegisterType<MyObject>("MyObj",1,0,"MyObject");
```

3、QML 中使用

```
import MyObj

MyObject {

}
```

## QML 与 C++交互

> 前提 MyObject 需要注册过

### QML 访问 C++ 函数

- myobject.h

```
public:
    Q_INVOKABLE void func();
```

- myobject.cpp

```
void MyObject::func()
{
    qDebug() << __FUNCTION__;
}
```

- Main.qml

```
MyObject {
  id: myobjid
}

Button {
  onClicked: {
      myobjid.func()
  }
}
```

### QML 访问 C++ 函数传参

- myobject.h

```
public slots:
    void cppSlot(int i, QString s);
```

- myobject.cpp

```
void MyObject::cppSlot(int i, QString s)
{
    qDebug() << __FUNCTION__ << "  " << i << "  " << s;
}

```

- Main.qml

```
MyObject {
    id: myobjid
}

Button {
    onClicked: {
        qmlSig(10, 'haha')
    }
}

// 方式一
Connections {
    target: window
    function onQmlSig(i, s) {
        myobjid.cppSlot(i, s)
    }
}

// 方式二
Component.onCompleted: {
    qmlSig.connect(myobjid.cppSlot)
}
```

- main.cpp

```
// 方式三
auto window = list.first();
QObject::connect(window, SIGNAL(qmlSig(int, QString)), MyObject::getInstance(), SLOT(cppSlot(int, QString)));
```

### C++ 访问 QML 函数传参

> 方式一

- myobject.h

```
signals:
    void cppSig(int i, QString s);
```

- Main.qml

```
MyObject {
    id: myobjid
}

Button {
    onClicked: {
        myobjid.cppSig(99, 'xixi')
    }
}


Connections {
    target: myobjid
    function onCppSig(i, s) {
        qmlSlot(i, s)
    }
}
```

> 方式二

- myobject.h

```
public:
    Q_INVOKABLE void func();

signals:
    void cppSig(int i, QString s);
```

- myobject.cpp

```
void MyObject::func()
{
    emit cppSig(100, "gogo");
}

```

- Main.qml

```
MyObject {
    id: myobjid
}

Button {
    onClicked: {
        myobjid.func()
    }
}

Connections {
    target: myobjid
    function onCppSig(i, s) {
        qmlSlot(i, s)
    }
}
```

// 方式三  不需要创建object对象

- main.cpp

```
 qmlRegisterSingletonInstance("MyObj",1,0,"MyObject",MyObject::getInstance());

```

```
Button {
    onClicked: {
        MyObject.func()
    }
}

Connections {
    target: MyObject
    function onCppSig(i, s) {
        qmlSlot(i, s)
    }
}
```

// 方式四
- main.cpp

```
QObject::connect(MyObject::getInstance(), SIGNAL(cppSig(QVariant, QVariant)), window, SLOT(qmlSlot(QVariant, QVariant)));
```
