#include "mylistmodel.h"
#include <QHash>

MyListModel::MyListModel(QObject *parent)
    : QAbstractListModel(parent)
{
    m_data.append(myData("name1", 111));
    m_data.append(myData("name2", 222));
    m_data.append(myData("name3", 333));
}

MyListModel *MyListModel::getInstance()
{
    static MyListModel * obj = new MyListModel;
    return obj;
}

//QVariant MyListModel::headerData(int section, Qt::Orientation orientation, int role) const
//{
//    // FIXME: Implement me!
//}

// 元素个数 model 大小/长度
int MyListModel::rowCount(const QModelIndex &parent) const
{
    // For list models only the root node (an invalid parent) should return the list's size. For all
    // other (valid) parents, rowCount() should return 0 so that it does not become a tree model.
    if (parent.isValid())
        return 0;

    return m_data.count();

    // FIXME: Implement me!
}

QVariant MyListModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();

    if(role == MyRoleName::Name){
        return m_data[index.row()].m_string;
    }else if(role == MyRoleName::Value){
        return m_data[index.row()].m_value;
    }

    // FIXME: Implement me!
    return QVariant();
}

QHash<int, QByteArray> MyListModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles.insert(MyRoleName::Name,"name");
    roles.insert(MyRoleName::Value,"value");
    return roles;
}
