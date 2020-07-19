using DemoJob.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace DemoJob.ViewModel
{
    class ChangePasswordViewModel : BaseViewModel
    {
        private string _OldPassword;
        public string OldPassword { get => _OldPassword; set { _OldPassword = value; OnPropertyChanged(); } }

        private string _NewPassword;
        public string NewPassword { get => _NewPassword; set { _NewPassword = value; OnPropertyChanged(); } }

        private string _NewPasswordAgain;
        public string NewPasswordAgain { get => _NewPasswordAgain; set { _NewPasswordAgain = value; OnPropertyChanged(); } }


        private int _IdAccount;
        public int IdAccount { get => _IdAccount; set { _IdAccount = value; OnPropertyChanged(); } }

        public ICommand OldPasswordCommand { get; set; }
        public ICommand NewPasswordCommand { get; set; }
        public ICommand NewPasswordCommandCommand { get; set; }

        public ICommand ConfirmCommand { get; set; }
        public ICommand ExitCommand { get; set; }

        LoginWindow loginWindow;
        public ChangePasswordViewModel()
        {

            OldPasswordCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { OldPassword = p.Password; });
            NewPasswordCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { NewPassword = p.Password; });
            NewPasswordCommandCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { NewPasswordAgain = p.Password; });

            setIdAccount();
            ConfirmCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                if (OldPassword != null && NewPassword != null && NewPasswordAgain != null)
                {
                    var account = DataProvider.Ins.DB.Accounts.Where(x => x.Id == IdAccount).SingleOrDefault();
                    if (OldPassword == account.PassWord)
                    {
                        if (NewPassword == NewPasswordAgain)
                        {
                            account.PassWord = NewPassword;
                            DataProvider.Ins.DB.SaveChanges();
                            MessageBox.Show("Thay đổi mật khẩu thành công!");
                            p.Close();
                        }
                        else
                        {
                            MessageBox.Show("Mật khẩu không trùng khớp!");
                        }
                    }
                    else
                    {
                        MessageBox.Show("Mật khẩu hiện tại không đúng!");
                    }
                    
                }
                else
                {
                    MessageBox.Show("Vui lòng nhập đủ thông tin!");
                }
            });
            ExitCommand = new RelayCommand<Window>((p) => { return true; }, (p) => { p.Close(); });
        }

        public void setIdAccount()
        {
            loginWindow = new LoginWindow();
            var lg = loginWindow.DataContext as LoginViewModel;
            IdAccount = lg.GetIdUser;
            loginWindow.Close();
        }
    }
}
