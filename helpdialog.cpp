#include "helpdialog.h"
#include "ui_helpdialog.h"

helpDialog::helpDialog(QSettings* settings, QWidget *parent) :
    QDialog(parent),
    _settings(settings),
    ui(new Ui::helpDialog)
{
    ui->setupUi(this);
    setFixedSize(size());
    QIcon icon(":/images/icon.png");
    Qt::WindowFlags flags = windowFlags();
    Qt::WindowFlags helpFlag = Qt::WindowContextHelpButtonHint;
    flags = flags & (~helpFlag);
    setWindowFlags(flags);
    setWindowIcon(icon);
    ui->plainTextEdit->setWordWrapMode(QTextOption::WrapAnywhere);
}

helpDialog::~helpDialog()
{
    delete ui;
}

void helpDialog::on_pushButtonFinish_clicked()
{
    close();
}
