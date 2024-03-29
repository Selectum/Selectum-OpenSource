#ifndef HELPDIALOG_H
#define HELPDIALOG_H

#include <QDialog>
#include <QSettings>

namespace Ui {
class helpDialog;
}

class helpDialog : public QDialog
{
    Q_OBJECT

public:
    explicit helpDialog(QSettings* settings, QWidget *parent = 0);
    ~helpDialog();

private slots:
    void on_pushButtonFinish_clicked();
private:
    Ui::helpDialog *ui;
    QSettings* _settings;
};

#endif
