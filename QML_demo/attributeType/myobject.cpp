#include "myobject.h"

MyObject::MyObject(QObject *parent)
    : QObject{parent}
{

}

int MyObject::iValue() const
{
    return m_iValue;
}

void MyObject::setIValue(int newIValue)
{
    if (m_iValue == newIValue)
        return;
    m_iValue = newIValue;
    emit iValueChanged();
}

QString MyObject::sString() const
{
    return m_sString;
}

void MyObject::setSString(const QString &newSString)
{
    if (m_sString == newSString)
        return;
    m_sString = newSString;
    emit sStringChanged();
}
