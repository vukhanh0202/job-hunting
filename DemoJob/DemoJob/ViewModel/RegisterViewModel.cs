using DemoJob.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace DemoJob.ViewModel
{
    public class RegisterViewModel : BaseViewModel
    {
       
        private string _UserName;
        public string UserName { get => _UserName; set { _UserName = value; OnPropertyChanged(); } }
        
        private string _Password;
        public string Password { get => _Password; set { _Password = value; OnPropertyChanged(); } }

        private string _PasswordAgain;
        public string PasswordAgain { get => _PasswordAgain; set { _PasswordAgain = value; OnPropertyChanged(); } }

        private string _TextBlock;
        public string TextBlock { get => _TextBlock; set { _TextBlock = value; OnPropertyChanged(); } }
        private int _IdAccountRoles;
        public int IdAccountRoles { get => _IdAccountRoles; set { _IdAccountRoles = value; OnPropertyChanged(); } }

        public ICommand PasswordChangedCommand { get; set; }
        public ICommand PasswordChangedAgainCommand { get; set; }
        public ICommand TextBoxChangedCommand { get; set; }
        public ICommand CheckedBoxCommand { get; set; }
        public ICommand UnCheckedBoxCommand { get; set; }
        public ICommand ConfirmCommand { get; set; }
        public ICommand ExitCommand { get; set; }

        public RegisterViewModel()
        {
            IdAccountRoles = 2; // acc member
            PasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { Password = p.Password; });
            PasswordChangedAgainCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { PasswordAgain = p.Password; });
            CheckedBoxCommand = new RelayCommand<CheckBox>((p) => { return true; }, (p) => 
            {
                if (p.IsChecked.Value)
                    IdAccountRoles = 1; // acc company
                else
                    IdAccountRoles = 2; // acc member
                OnPropertyChanged();
            });
            var userList = DataProvider.Ins.DB.Accounts;
            bool checkUser = false;
            //MessageBox.Show("Da vao");
            ConfirmCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                foreach (var item in userList)
                {
                    if (item.UserName.Equals(UserName))
                        checkUser = true;
                }

                if (UserName == null || Password == null || PasswordAgain == null)
                {
                    MessageBox.Show("Nhập thiếu thông tin, vui lòng nhập lại");
                }
                else if (checkUser)
                {
                    MessageBox.Show("Tên đăng nhập bị trùng, vui lòng nhập lại!");
                    checkUser = false;
                }
                else if (Password != PasswordAgain)
                {
                    MessageBox.Show("Mật khẩu không khớp, vui lòng nhập lại!");
                }
                else
                {
                    Account account = new Account() { UserName = UserName, PassWord = Password, IdAccountRoles = IdAccountRoles };
                    DataProvider.Ins.DB.Accounts.Add(account);
                    DataProvider.Ins.DB.SaveChanges();
                    
                    IdAccountRoles = 2;
                    MessageBox.Show("Đăng ký thành công!");
                    p.Close();
                }
            });
            ExitCommand = new RelayCommand<Window>((p) => { return true; }, (p) => { p.Close(); });
        }
    }
}
