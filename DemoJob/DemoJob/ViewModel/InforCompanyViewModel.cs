using DemoJob.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Forms;
using System.Windows.Input;

namespace DemoJob.ViewModel
{

    public class InforCompanyViewModel : BaseViewModel
    {
        #region
        private string _DisplayName;
        public string DisplayName { get => _DisplayName; set { _DisplayName = value; OnPropertyChanged(); } }

        private string _Email;
        public string Email { get => _Email; set { _Email = value; OnPropertyChanged(); } }

        public ICommand ConfirmCommand { get; set; }
        public ICommand ExitCommand { get; set; }
        public ICommand ChangeAvatarCommand { get; set; }
        public ICommand ChangePasswordCommand { get; set; }


        private string _Phone;
        public string Phone { get => _Phone; set { _Phone = value; OnPropertyChanged(); } }

        private string _Address;
        public string Address { get => _Address; set { _Address = value; OnPropertyChanged(); } }

        private string _MoreInfo;
        public string MoreInfo { get => _MoreInfo; set { _MoreInfo = value; OnPropertyChanged(); } }

        private string _Avatar;
        public string Avatar { get => _Avatar; set { _Avatar = value; OnPropertyChanged(); } }

        private ObservableCollection<Company> _ListCompany;
        public ObservableCollection<Company> ListCompany { get => _ListCompany; set { _ListCompany = value; OnPropertyChanged(); } }

        public string fileName;
        public string tempFileName;
        private string path;
        private int IdAccount;
        #endregion
        public InforCompanyViewModel()
        {
            CompanyWindow companyWindows = new CompanyWindow();
            var datacompany = companyWindows.DataContext as CompanyViewModel;
            //datacompany.setLinkAvatar(" ");
            ListCompany = new ObservableCollection<Company>(DataProvider.Ins.DB.Companies);
            LoginWindow loginWindow = new LoginWindow();
            var companyLoginVM1 = loginWindow.DataContext as LoginViewModel;
            IdAccount = companyLoginVM1.GetIdUser;
            var companyList = DataProvider.Ins.DB.Companies;
            DisplayName = "";
            Email = "";
            Phone = "";
            Address = "";
            MoreInfo = "";
            Avatar = "";

            string workingDirectory = Environment.CurrentDirectory;

            string projectDirectory = Directory.GetParent(workingDirectory).Parent.FullName; //LogoCompany

            path = projectDirectory + @"\LogoPicture\";

            fileName = path + "Avatar.png";

            //fileName = path + "Avatar.png";
            if (File.Exists(path + DataProvider.Ins.DB.Companies.Where(x => x.IdAccount == IdAccount).SingleOrDefault().IdAccount.ToString() + ".jpg"))
            {
                fileName = path + DataProvider.Ins.DB.Companies.Where(x => x.IdAccount == IdAccount).SingleOrDefault().IdAccount.ToString() + ".jpg";
            }
            tempFileName = fileName;

         
            ConfirmCommand = new RelayCommand<InformationCompanyWindow>((p) => { return true; }, (p) =>
            {
                MessageBoxResult isConfirm = System.Windows.MessageBox.Show("Thay đổi thông tin cần đăng nhập bạn có chắc chắn muốn thay đổi ?", "Thay đổi thông tin", MessageBoxButton.OKCancel);
                if (isConfirm == MessageBoxResult.OK)
                {
                    var User = DataProvider.Ins.DB.Companies.Where(x => x.IdAccount == IdAccount).SingleOrDefault();
                    User.DisplayName = DisplayName;
                    User.Email = Email;
                    User.Phone = Phone;
                    User.Address = Address;
                    User.MoreInfo = MoreInfo;
                    User.Avatar = File.ReadAllBytes(Avatar);

                    DataProvider.Ins.DB.SaveChanges();
                  
                    //datacompany.setFileName(fileName);
                   
                    //Avatar = fileName;
                    System.Windows.MessageBox.Show("Vui lòng đăng nhập lại để thay đổi thông tin!!");
                    System.Windows.Forms.Application.Restart();
                    Environment.Exit(0);
                    p.Close();
                }
            });
            ChangeAvatarCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                using (OpenFileDialog ofd = new OpenFileDialog() { Filter = "Image files (*.png;*.jpeg)|*.png;*.jpeg|All files (*.*)|*.*", ValidateNames = true, Multiselect = false })
                {
                    if (ofd.ShowDialog() == DialogResult.OK)
                    {
                        fileName = ofd.FileName;
                        Avatar = fileName;
                    }
                }
            });
            ExitCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                p.Close();
            });

            ChangePasswordCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                ChangePasswordWindow change = new ChangePasswordWindow();
                var changeVM = change.DataContext as ChangePasswordViewModel;
                changeVM.setIdAccount();
                change.ShowDialog();
            });

            companyWindows.Close();
            loginWindow.Close();
        }
        public void Update()
        {
            LoginWindow loginWindow = new LoginWindow();
            var compLoginVM1 = loginWindow.DataContext as LoginViewModel;

            IdAccount = compLoginVM1.GetIdUser;
            var item = DataProvider.Ins.DB.Companies.Where(x => x.IdAccount == IdAccount).SingleOrDefault();

            string workingDirectory = Environment.CurrentDirectory;

            string projectDirectory = Directory.GetParent(workingDirectory).Parent.FullName; //LogoCompany

            string path = projectDirectory + @"\LogoPicture\";

            string fileName = path + "Avatar.png";

            if (File.Exists(path + DataProvider.Ins.DB.Companies.Where(x => x.IdAccount == IdAccount).SingleOrDefault().IdAccount.ToString() + ".jpg"))
            {
                fileName = path + DataProvider.Ins.DB.Companies.Where(x => x.IdAccount == IdAccount).SingleOrDefault().IdAccount.ToString() + ".jpg";

            }
            if (item.DisplayName != null)
            {
                DisplayName = item.DisplayName;
            }
            else
            {
                DisplayName = "";
            }
            //
            if (item.Address != null)
            {
                Address = item.Address;
            }
            else
            {
                Address = "";
            }
            //
            if (item.Phone != null)
            {
                Phone = item.Phone;
            }
            else
            {
                Phone = "";
            }
            //
            if (item.Email != null)
            {
                Email = item.Email;
            }
            else
            {
                Email = "";
            }
            //
            if (item.MoreInfo != null)
            {
                MoreInfo = item.MoreInfo;
            }
            else
            {
                MoreInfo = "";
            }
            //
          
            Avatar = fileName;

            loginWindow.Close();

        }
        
    }
}