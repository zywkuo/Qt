#ifndef GAME_H
#define GAME_H

#include <QMainWindow>


#include <QWidget>
#include <QPaintEvent>
#include <QTimer>
#include <QDebug>
#include <QPainter>
#include <QMouseEvent>
#include <QPainterPath>
#include <QPen>
#include <QColor>
#include <QBrush>
#include <QMessageBox>
#include <QPushButton>
#include <QRadioButton>
#include <QButtonGroup>
#include <QPalette>
#include <QtDebug>
#include <QLabel>
#include <bits/stdc++.h>
#include <iostream>
#include <stack>
using namespace std;

class Game : public QMainWindow
{
    Q_OBJECT

public:
    Game(QWidget *parent = nullptr);
    ~Game();

private:
    int chessboard[15][15]; //棋盘 15*15
    int player;//玩家player=偶数 表示第一个玩家，player=奇数 表示第二个玩家
    int moveX,moveY;//控制鼠标Move位置
    int currentX,currentY; //上次落子位置
    bool lovk; //棋盘锁
    int flags; //游戏现状 0表示按钮为开始键，1表示按钮为结束建

    QPushButton *button;
    QButtonGroup *selectModelGroup;
    QString strWinner;
    stack<QPoint> stak; //悔棋操作

public:
    // 更新棋盘
    void update_chessboard(int x,int y);

    // 声明8个方向
    QPoint m_dir[8]={
        QPoint(0,1),
        QPoint(0,-1),
        QPoint(1,0),
        QPoint(1,-1),
        QPoint(1,1),
        QPoint(-1,0),
        QPoint(-1,1),
        QPoint(-1,-1)
    };

    // dir表示方向，offser位移的棋子类型
    int getPoint(QPoint p,int dir, int offset);

    //判断AI/用户，谁赢
    void is_Someone_Win(int x,int y);

    // 是否五子连珠
    int isWin(QPoint p);

    //人下棋，鼠标按下，获取位置
    void persion_tine(QMoveEvent *e);

    //AI 下棋
    void ai_time();

    // AI 核心 评分
    int Assess(QPoint noew, int me);

    //绘图事件
    void paintEvent(QPaintEvent *e);

    //鼠标移动事件
    void mouseMoveEvent(QMouseEvent *e);

    // 鼠标按压事件
    void mousePressEnent(QMouseEvent *e);


public slots:
    void operat();
    void SelectRadio();
    void back();


};



#endif // GAME_H
