#include "game.h"

Game::Game(QWidget *parent)
    : QMainWindow(parent)
{
    // 设置游戏窗口标题名称
    setWindowTitle("人机对战博弈游戏--五子棋");

    //设置窗口大小
    setMinimumSize(1000,800);
    setMaximumSize(1000,800);

    // 游戏信息显示参数
    QPushButton *button_start=new QPushButton(this);
    button_start->setStyleSheet("font:Bold;font-size:36px;color:white;background-color: rgb(30,144,255);border-radius:10px;padding:2px 4px;");
    button_start->setGeometry(QRect(785,100,200,50));
    button_start->setText("游戏模式");

    // 右下角标签
    QLabel *label=new QLabel(this);
    label->setText("智益游戏经典版V2.0");
    label->setGeometry(785,700,200,50);
    label->setStyleSheet("color:black;font-size:22px;");

    // 游戏模式选择按钮
    // game_model=1;
    selectModelGroup=new QButtonGroup(this);

    QRadioButton *pvc=new QRadioButton("PVC",this);
    selectModelGroup->addButton(pvc,1);
    pvc->setStyleSheet("font:Bold;font-size:36px;color:black;");
    pvc->setGeometry(825, 200,100,30);
    connect(pvc,SIGNAL(clicked()),this,SLOT(SelectRadio()));

    QRadioButton *pvp=new QRadioButton("PVP",this);
    selectModelGroup->addButton(pvp,2);
    pvp->setStyleSheet("font:Bold;font-size:36px;color:black;");
    pvp->setGeometry(825, 270,100,30);
    connect(pvp,SIGNAL(clicked()),this,SLOT(SelectRadio()));

    pvc->setChecked(true); // 默认人机对战

    // 游戏开始 游戏结束 按钮
    // flags=0;
    button=new QPushButton(this);
    button->setStyleSheet("font:Bold;font-size:36px;color:white;background-color: rgb(30,144,255);border-radius:10px;padding:2px 4px;");
    button->setGeometry(QRect(785,390,200,50));
    button->setText("游戏开始");
    connect(button,SIGNAL(clicked()),this,SLOT(operat()));

    // 悔棋操作 按钮
    while (!stak.empty()) {
        stak.pop();
    }

    QPushButton *back_button=new QPushButton(this);
    back_button->setStyleSheet("font:Bold;font-size:36px;color:white;background-color: rgb(30,144,255);border-radius:10px;padding:2px 4px;");
    back_button->setGeometry(QRect(785,520,200,50));
    back_button->setText("悔棋");
    connect(back_button,SIGNAL(clicked()),this,SLOT(back()));

    //开启鼠标监听操作
    setMouseTracking(true);
    // lock=1;
}

Game::~Game()
{
}

// 更新棋盘
void Game::update_chessboard(int x,int y)
{

}
// dir表示方向，offser位移的棋子类型
int Game::getPoint(QPoint p,int dir, int offset)
{
    return 0;
}
//判断AI/用户，谁赢
void Game::is_Someone_Win(int x,int y)
{

}
// 是否五子连珠
int Game::isWin(QPoint p)
{
    return 0;
}
//人下棋，鼠标按下，获取位置
void Game::persion_tine(QMoveEvent *e)
{

}
//AI 下棋
void ai_time()
{

}
// AI 核心 评分
int Game::Assess(QPoint noew, int me)
{
    return 0;
}
//绘图事件
void Game::paintEvent(QPaintEvent *e)
{

}
//鼠标移动事件
void Game::mouseMoveEvent(QMouseEvent *e)
{

}
// 鼠标按压事件
void Game::mousePressEnent(QMouseEvent *e)

{

}
void Game::operat()
{

}
void Game::SelectRadio()
{

}
void Game::back()
{

}
