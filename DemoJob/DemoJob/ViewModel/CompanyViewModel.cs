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
    public class CompanyViewModel : BaseViewModel
    {
        #region
        private ObservableCollection<Job> _JobList;
        public ObservableCollection<Job> JobList { get => _JobList; set { _JobList = value; OnPropertyChanged(); } }

        private ObservableCollection<Company> _CompanyList;
        public ObservableCollection<Company> CompanyList { get => _CompanyList; set { _CompanyList = value; OnPropertyChanged(); } }

        private ObservableCollection<Register> _RegisterList;
        public ObservableCollection<Register> RegisterList { get => _RegisterList; set { _RegisterList = value; OnPropertyChanged(); } }


        private string SelectedItem;
       
        private int _GetIdJob;
        public int GetIdJob { get => _GetIdJob; set { _GetIdJob =value; OnPropertyChanged(); } }

     

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

        private string _MoreInfo;
        public string MoreInfo { get => _MoreInfo; set { _MoreInfo = value; OnPropertyChanged(); } }

        private string _Avatar;
        public string Avatar { get => _Avatar; set { _Avatar = value; OnPropertyChanged(); } }


        public ICommand InformationCompanyCommand { get; set; }
        public ICommand AddJobCommand { get; set; }

        public ICommand CheckJobCommand { get; set; }
        public ICommand LogOutCommand { get; set; }

        private int IdAccount;
        private int IdCompany;
        LoginWindow loginWindow = new LoginWindow();

        private string fileName;
        private string path;
        private string linked;
        #endregion
        public CompanyViewModel()
        {

            JobList = new ObservableCollection<Job>();
            CompanyList = new ObservableCollection<Company>(DataProvider.Ins.DB.Companies);
            var CompanyLoginVM1 = loginWindow.DataContext as LoginViewModel;
            IdAccount = CompanyLoginVM1.GetIdUser;


            bool check = false; // Kiểm tra tồn tại hay chưa
            foreach (var item in CompanyList)
            {
                if (item.IdAccount == IdAccount)
                {
                    check = true;
                    IdCompany = item.Id;
                }

            }
            if (check == false)
            {
                Company company = new Company() { IdAccount = IdAccount };
                DataProvider.Ins.DB.Companies.Add(company);
                DataProvider.Ins.DB.SaveChanges();

                CompanyList.Add(company);
                foreach (var item in CompanyList)
                {
                    if (item.IdAccount == IdAccount)
                        IdCompany = item.Id;
                }
            }

            //
            // Thông tin công ty
            //
            InformationCompanyCommand = new RelayCommand<Window>((p) => { return true; }, (p) => {
                InformationCompanyWindow informationCompanyWindow = new InformationCompanyWindow();
                var infoCompanyVM = informationCompanyWindow.DataContext as InforCompanyViewModel;
                Avatar ="";
                JobList.Clear();
                infoCompanyVM.Update();
                informationCompanyWindow.ShowDialog();
                UpdateInfoListJob();
            });

            //
            // Thêm việc làm
            //
            AddJobCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                RegisterJob registerJob = new RegisterJob();
                var res = registerJob.DataContext as RegisterJobViewModel;
                res.updateInfoCompany();
                registerJob.ShowDialog();
                JobList.Clear();
                UpdateInfoListJob();
            });

            //
            // Thông tin chi tiết công việc
            //
            CheckJobCommand = new RelayCommand<Object>((p) => { return true; }, (p) =>
            {
                SelectedItem = p.ToString();
                GetIdJob = int.Parse(SelectedItem);
                InformationJobCompanyWindow informationJobCompany = new InformationJobCompanyWindow();
                var inforJobCompany = informationJobCompany.DataContext as InfoJobCompanyViewModel;
                inforJobCompany.Update();
                inforJobCompany.UpdateListMember();
                informationJobCompany.ShowDialog();
                UpdateInfoListJob();
                informationJobCompany.Close();
            });


            //
            // Dăng xuất
            //
            LogOutCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                MessageBoxResult isExit = MessageBox.Show("Bạn có muốn đăng xuất không ?", "Đăng xuất", MessageBoxButton.OKCancel);
                if (isExit == MessageBoxResult.OK)
                {
                    LoginWindow lg = new LoginWindow();
                    p.Hide();
                    var mv1 = lg.DataContext as LoginViewModel;
                    mv1.UserName = "";
                    mv1.Password = "";
                    mv1.GetIdUser = -1;
                    mv1.IsCompanyLogin = false;
                    mv1.IsMemberLogin = false;
                    lg.ShowDialog();
                    IdAccount = mv1.GetIdUser;

                    if (mv1.IsMemberLogin)
                    {
                        var main = new MainWindow();
                        p.Close();
                        var memberList = DataProvider.Ins.DB.Members;
                        bool checkMember = false;

                        foreach (var item in memberList)
                        {
                            if (item.IdAccount == IdAccount)
                                checkMember = true; // đã có thông tin
                        }
                        if (checkMember == false) // chưa có thông tin 
                        {
                            var users = new Member() { IdAccount = IdAccount };
                            DataProvider.Ins.DB.Members.Add(users);
                            DataProvider.Ins.DB.SaveChanges();
                        }
                        var main1 = main.DataContext as MainViewModel;
                        main1.SaveJobCount = 0;
                        main1.LoadDataJob();
                        main1.isLoginAgain = true;
                        main.ShowDialog();

                    }
                    else if (mv1.IsCompanyLogin)
                    {
                        var pp = new CompanyWindow();
                        p.Close();
                        var p1 = pp.DataContext as CompanyViewModel;
                        p1.UpdateInfoListJob();
                        pp.ShowDialog();
                    }
                    else
                    {
                        p.Close();
                    }
                    p.Close();
                }
            });

            loginWindow.Close();
        }
        public void UpdateInfoListJob()
        {
            CompanyList = new ObservableCollection<Company>(DataProvider.Ins.DB.Companies);
            var CompanyLoginVM1 = loginWindow.DataContext as LoginViewModel;
            IdAccount = CompanyLoginVM1.GetIdUser;

            string workingDirectory = Environment.CurrentDirectory;

            string projectDirectory = Directory.GetParent(workingDirectory).Parent.FullName; //LogoCompany

            path = projectDirectory + @"\LogoPicture\";

            fileName = path + "Avatar.png";

            if (DataProvider.Ins.DB.Companies.Where(x => x.IdAccount == IdAccount).SingleOrDefault() != null)
            {
                if (File.Exists(path + DataProvider.Ins.DB.Companies.Where(x => x.IdAccount == IdAccount).SingleOrDefault().IdAccount.ToString() + ".jpg"))
                {
                    fileName = path + DataProvider.Ins.DB.Companies.Where(x => x.IdAccount == IdAccount).SingleOrDefault().IdAccount.ToString() + ".jpg";
                }
            }
            var item = DataProvider.Ins.DB.Companies.Where(x => x.IdAccount == IdAccount).SingleOrDefault();

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
            if (item.Email !=null)
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
            if (item.TimeTable != null)
            {
                TimeTable = item.TimeTable;
            }
            else
            {
                TimeTable = "";
            }
            //
            IdCompany = item.Id;

            Avatar = fileName;

            JobList.Clear();

            var List = DataProvider.Ins.DB.Jobs;
            foreach (var item1 in List)
            {
                if (item1.IdCompany == IdCompany)
                {
                    JobList.Add(item1);
                }
            }

            foreach (var i in JobList)
            {
                i.Link = fileName;
            }
            DataProvider.Ins.DB.SaveChanges();

          

       
        }
 
        public string getLinkAvatar()
        {
            return linked;
        }
        public void setFileName(string link)
        {
            this.fileName = link;
        }

       
    }
}