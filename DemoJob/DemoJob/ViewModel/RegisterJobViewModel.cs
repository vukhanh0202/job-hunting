using DemoJob.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace DemoJob.ViewModel
{
    public class RegisterJobViewModel : BaseViewModel
    {

        private ObservableCollection<Company> _CompanyList;
        public ObservableCollection<Company> CompanyList { get => _CompanyList; set { _CompanyList = value; OnPropertyChanged(); } }
        private ObservableCollection<Job> _JobList;
        public ObservableCollection<Job> JobList { get => _JobList; set { _JobList = value; OnPropertyChanged(); } }

        private string _Title;
        public string Title { get => _Title; set { _Title = value; OnPropertyChanged(); } }

        private string _IDCustom;
        public string IDCustom { get => _IDCustom; set { _IDCustom = value; OnPropertyChanged(); } }

        private string _Major;
        public string Major { get => _Major; set { _Major = value; OnPropertyChanged(); } }

        private string _NatureOfJob;
        public string NatureOfJob { get => _NatureOfJob; set { _NatureOfJob = value; OnPropertyChanged(); } }

        private string _TypeJob;
        public string TypeJob { get => _TypeJob; set { _TypeJob = value; OnPropertyChanged(); } }

        private string _Place;
        public string Place { get => _Place; set { _Place = value; OnPropertyChanged(); } }

        private string _Request;
        public string Request { get => _Request; set { _Request = value; OnPropertyChanged(); } }

        private string _Descriptions;
        public string Descriptions { get => _Descriptions; set { _Descriptions = value; OnPropertyChanged(); } }

        private string _MoreInfo;
        public string MoreInfo { get => _MoreInfo; set { _MoreInfo = value; OnPropertyChanged(); } }

        private string _Salary;
        public string Salary { get => _Salary; set { _Salary = value; OnPropertyChanged(); } }

        private string _Timeregister;
        public string Timeregister { get => _Timeregister; set { _Timeregister = value; OnPropertyChanged(); } }

        private string _DisplayName;
        public string DisplayName { get => _DisplayName; set { _DisplayName = value; OnPropertyChanged(); } }

        private string _Address;
        public string Address { get => _Address; set { _Address = value; OnPropertyChanged(); } }

        private string _Phone;
        public string Phone { get => _Phone; set { _Phone = value; OnPropertyChanged(); } }

        private string _TimeTable;
        public string TimeTable { get => _TimeTable; set { _TimeTable = value; OnPropertyChanged(); } }

        private string _Email;
        public string Email { get => _Email; set { _Email = value; OnPropertyChanged(); } }


        private string _Avatar;
        public string Avatar { get => _Avatar; set { _Avatar = value; OnPropertyChanged(); } }
        public ICommand AddJobCommand { get; set; }
        public ICommand ExitCommand { get; set; }

        private int IdAccounts;
        public LoginWindow loginWindow;
        private int IdCompany;

        public RegisterJobViewModel()
        {
            loginWindow = new LoginWindow();
            var memberLoginVM1 = loginWindow.DataContext as LoginViewModel;
            IdAccounts = memberLoginVM1.GetIdUser;
            IdCompany = 0;
            CompanyList = new ObservableCollection<Company>( DataProvider.Ins.DB.Companies);
            foreach (var item in CompanyList)
            {
                if (item.IdAccount == IdAccounts)
                    IdCompany = item.Id;
            }
            JobList = new ObservableCollection<Job>(DataProvider.Ins.DB.Jobs);
            AddJobCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {

                if (Title == null || Major == null || NatureOfJob == null
                || TypeJob == null || Place == null || Request == null
                || Descriptions == null || MoreInfo==null ||Salary==null|| Timeregister==null)
                    MessageBox.Show("Vui lòng nhập đủ thông tin!");
                else
                {

                    Job job = new Job()
                    {
                        IdCompany = IdCompany,
                        TypeJob = TypeJob,
                        NatureOfJob = NatureOfJob,
                        Major = Major,
                        Place = Place,
                        Request = Request,
                        Descriptions = Descriptions,
                        MoreInfo = MoreInfo,
                        Title = Title,
                        Salary = Salary,
                        Timeregister= Timeregister
                    };
                    DataProvider.Ins.DB.Jobs.Add(job);
                    DataProvider.Ins.DB.SaveChanges();
                    MessageBox.Show("Thêm thành công");
                    p.Close();
                }
            });
            ExitCommand = new RelayCommand<Window>((p) => { return true; }, (p) => { p.Close(); });
            loginWindow.Close();
        }
        public void updateInfoCompany()
        {
            CompanyList = new ObservableCollection<Company>(DataProvider.Ins.DB.Companies);
            var CompanyLoginVM1 = loginWindow.DataContext as LoginViewModel;
            IdAccounts = CompanyLoginVM1.GetIdUser;

            string workingDirectory = Environment.CurrentDirectory;

            string projectDirectory = Directory.GetParent(workingDirectory).Parent.FullName; //LogoCompany

            string path = projectDirectory + @"\LogoPicture\";

            string fileName = path + "Avatar.png";

            if (File.Exists(path + DataProvider.Ins.DB.Companies.Where(x => x.IdAccount == IdAccounts).SingleOrDefault().IdAccount.ToString() + ".jpg"))
            {
                fileName = path + DataProvider.Ins.DB.Companies.Where(x => x.IdAccount == IdAccounts).SingleOrDefault().IdAccount.ToString() + ".jpg";

            }
            var item = DataProvider.Ins.DB.Companies.Where(x => x.IdAccount == IdAccounts).SingleOrDefault();

            IDCustom = "(ID: " + item.Id + ")";
            IdCompany = item.Id;
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
           
            if (item.TimeTable != null)
            {
                TimeTable = item.TimeTable;
            }
            else
            {
                TimeTable = "";
            }
            //
            Avatar = fileName;
        }
    }
}
