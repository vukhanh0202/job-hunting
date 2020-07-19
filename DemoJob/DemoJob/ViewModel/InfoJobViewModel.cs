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
    public class InfoJobViewModel : BaseViewModel
    {
        #region
        private ObservableCollection<Job> _ListJob;
        public ObservableCollection<Job> ListJob { get => _ListJob; set { _ListJob = value; OnPropertyChanged(); } }

        private ObservableCollection<Company> _ListCompany;
        public ObservableCollection<Company> ListCompany { get => _ListCompany; set { _ListCompany = value; OnPropertyChanged(); } }

        private ObservableCollection<Register> _ListRegister;
        public ObservableCollection<Register> ListRegister { get => _ListRegister; set { _ListRegister = value; OnPropertyChanged(); } }


        public ICommand RegisterCommand { get; set; }
        public ICommand ExitCommand { get; set; }
        public ICommand BtnRegisterCommand { get; set; }


        private string _Title;
        public string Title { get => _Title; set { _Title = value; OnPropertyChanged(); } }

        private string _Descriptions;
        public string Descriptions { get => _Descriptions; set { _Descriptions = value; OnPropertyChanged(); } }

        private string _Request;
        public string Request { get => _Request; set { _Request = value; OnPropertyChanged(); } }

        private string _MoreInfo;
        public string MoreInfo { get => _MoreInfo; set { _MoreInfo = value; OnPropertyChanged(); } }

        private string _DisplayName;
        public string DisplayName { get => _DisplayName; set { _DisplayName = value; OnPropertyChanged(); } }

        private string _Address;
        public string Address { get => _Address; set { _Address = value; OnPropertyChanged(); } }

        private string _Phone;
        public string Phone { get => _Phone; set { _Phone = value; OnPropertyChanged(); } }

        private string _Email;
        public string Email { get => _Email; set { _Email = value; OnPropertyChanged(); } }

        MainWindow mw = new MainWindow();
        LoginWindow loginWindow = new LoginWindow();

        private bool isClick = true;
        private bool isListEmpty = false;
        #endregion
        public InfoJobViewModel()
        {
            var memberLoginVM1 = loginWindow.DataContext as LoginViewModel;
            int IdAccount = memberLoginVM1.GetIdUser;
            loginWindow.Close();
            mw.Close();
            ExitCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                p.Close();
            });
        }
        public void UpdateInfoJobOfMainViewModel()
        {
            var Job = mw.DataContext as MainViewModel;
            int IdJob = Job.GetIdJob;
            isClick = true;
            ListJob = new ObservableCollection<Job>(DataProvider.Ins.DB.Jobs);
            ListCompany = new ObservableCollection<Company>(DataProvider.Ins.DB.Companies);

            foreach (var item in ListJob)
            {
                if (item.Id == IdJob)
                {
                    Title = item.Title;
                    Descriptions = item.Descriptions;
                    Request = item.Request;
                    MoreInfo = item.MoreInfo;
                    foreach (var item1 in ListCompany)
                    {
                        if (item1.Id == item.IdCompany)
                        {
                            DisplayName = item1.DisplayName;
                            Address = item1.Address;
                            Phone = item1.Phone;
                            Email = item1.Email;
                        }
                    }
                }
            }
            OnPropertyChanged();
        }
      
    }
}
