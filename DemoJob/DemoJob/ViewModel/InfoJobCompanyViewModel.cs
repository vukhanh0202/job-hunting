using DemoJob.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Forms;
using System.Windows.Input;

namespace DemoJob.ViewModel
{
    public class InfoJobCompanyViewModel : BaseViewModel
    {
        #region
        string IDAccount;

        private int _GetIdAccount;
        public int GetIdAccount { get => _GetIdAccount; set { _GetIdAccount = value; OnPropertyChanged(); } }

        private string _Title;
        public string Title { get => _Title; set { _Title = value; OnPropertyChanged(); } }

        private string _DisplayName;
        public string DisplayName { get => _DisplayName; set { _DisplayName = value; OnPropertyChanged(); } }

        private string _Address;
        public string Address { get => _Address; set { _Address = value; OnPropertyChanged(); } }

        private string _Phone;
        public string Phone { get => _Phone; set { _Phone = value; OnPropertyChanged(); } }

        private string _Major;
        public string Major { get => _Major; set { _Major = value; OnPropertyChanged(); } }

        private string _Descriptions;
        public string Descriptions { get => _Descriptions; set { _Descriptions = value; OnPropertyChanged(); } }

        private string _Email;
        public string Email { get => _Email; set { _Email = value; OnPropertyChanged(); } }

        private string _Timeregister;
        public string Timeregister { get => _Timeregister; set { _Timeregister = value; OnPropertyChanged(); } }

        private string _Salary;
        public string Salary { get => _Salary; set { _Salary = value; OnPropertyChanged(); } }

        private string _Request;
        public string Request { get => _Request; set { _Request = value; OnPropertyChanged(); } }

        private string _MoreInfo;
        public string MoreInfo { get => _MoreInfo; set { _MoreInfo = value; OnPropertyChanged(); } }

        private string _NatureOfJob;
        public string NatureOfJob { get => _NatureOfJob; set { _NatureOfJob = value; OnPropertyChanged(); } }

        private string _TypeJob;
        public string TypeJob { get => _TypeJob; set { _TypeJob = value; OnPropertyChanged(); } }

        private string _Place;
        public string Place { get => _Place; set { _Place = value; OnPropertyChanged(); } }

        private ObservableCollection<Job> _JobList;
        public ObservableCollection<Job> JobList { get => _JobList; set { _JobList = value; OnPropertyChanged(); } }

        private ObservableCollection<Register> _RegisterList;
        public ObservableCollection<Register> RegisterList { get => _RegisterList; set { _RegisterList = value; OnPropertyChanged(); } }

        private ObservableCollection<Member> _MemberList;
        public ObservableCollection<Member> MemberList { get => _MemberList; set { _MemberList = value; OnPropertyChanged(); } }

        private ObservableCollection<Member> _MemberRegisterList;
        public ObservableCollection<Member> MemberRegisterList { get => _MemberRegisterList; set { _MemberRegisterList = value; OnPropertyChanged(); } }

        public CompanyWindow companyWindow;

        public ICommand CheckHSCommand { get; set; }

        public ICommand BtnRegisterCommand { get; set; }
        public ICommand DeleteJobCommand { get; set; }
        #endregion
        public InfoJobCompanyViewModel()
        {
            JobList = new ObservableCollection<Job>(DataProvider.Ins.DB.Jobs);
            RegisterList = new ObservableCollection<Register>(DataProvider.Ins.DB.Registers);
            MemberList = new ObservableCollection<Member>(DataProvider.Ins.DB.Members);

            //
            // Đăng ký
            //
            BtnRegisterCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                var cp = companyWindow.DataContext as CompanyViewModel;
                int IdJob = cp.GetIdJob;
                var item = DataProvider.Ins.DB.Jobs.Where(x => x.Id == IdJob).SingleOrDefault();

                item.Title = Title;
                item.Request = Request;
                item.Descriptions = Descriptions;
                item.MoreInfo = MoreInfo;
                item.Salary = Salary;
                item.Timeregister = Timeregister;
                item.TypeJob = TypeJob;
                item.NatureOfJob = NatureOfJob;
                item.Major = Major;
                item.Place = Place;
                DataProvider.Ins.DB.SaveChanges();
                System.Windows.MessageBox.Show("Thay đổi thành công");
                companyWindow.Close();
                p.Close();
            });


            //
            // Xem hồ sơ ứng viên
            //
            CheckHSCommand = new RelayCommand<Object>((p) => { return true; }, (p) =>
            {
                IDAccount = p.ToString();
                GetIdAccount = int.Parse(IDAccount);
                InformationMemberCompanyWindow informationMemberCompanyWindow = new InformationMemberCompanyWindow();
                var infoMemberCompany = informationMemberCompanyWindow.DataContext as InfoMemberCompanyViewModel;
                infoMemberCompany.Update();
                informationMemberCompanyWindow.ShowDialog();
                informationMemberCompanyWindow.Close();
            });

            // 
            // Xóa công việc
            //
            DeleteJobCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                MessageBoxResult isExit = System.Windows.MessageBox.Show("Bạn có muốn xóa công việc không?", "Xác nhận", MessageBoxButton.OKCancel);
                if (isExit == MessageBoxResult.OK)
                {
                    CompanyWindow CPWD = new CompanyWindow();
                    var cp = CPWD.DataContext as CompanyViewModel;
                    int IdJob = cp.GetIdJob;
                    System.Windows.MessageBox.Show("Xóa thành công");
                    RegisterList = new ObservableCollection<Register>(DataProvider.Ins.DB.Registers);
                    JobList.Clear();
                    JobList = new ObservableCollection<Job>(DataProvider.Ins.DB.Jobs);
                    foreach (var item in RegisterList)
                    {
                        if (item.IdJob == IdJob)
                        {
                            DataProvider.Ins.DB.Registers.Remove(item);
                            DataProvider.Ins.DB.SaveChanges();
                        }
                    }
                    foreach (var item in JobList)
                    {
                        if (item.Id == IdJob)
                        {
                            DataProvider.Ins.DB.Jobs.Remove(item);
                            DataProvider.Ins.DB.SaveChanges();

                        }
                    }
                    JobList.Clear();
                    cp.UpdateInfoListJob();
                    CPWD.Close();
                    p.Close();

                    OnPropertyChanged();
                }
            });

        }
        public void Update()
        {
            companyWindow = new CompanyWindow();
            var companyVM = companyWindow.DataContext as CompanyViewModel;
            int IdJob = companyVM.GetIdJob;

            var CpList = new ObservableCollection<Company>(DataProvider.Ins.DB.Companies);
            JobList.Clear();
            JobList = new ObservableCollection<Job>( DataProvider.Ins.DB.Jobs);
            foreach (var item in JobList)
            {
                if (item.Id == IdJob)
                {
                    foreach (var item1 in CpList)
                    {
                        if (item1.Id == item.IdCompany)
                            Email = item1.Email;
                    }
                }
            }
            foreach (var item in JobList)
            {
                if (item.Id == IdJob)
                {
                    Place = item.Place;
                    Request = item.Request;
                    NatureOfJob = item.NatureOfJob;
                    TypeJob = item.TypeJob;
                    MoreInfo = item.MoreInfo;
                    Major = item.Major;
                    Descriptions = item.Descriptions;
                    Title = item.Title;
                    Salary = item.Salary;
                    Timeregister = item.Timeregister;
                }
            }
            
            //}
            companyWindow.Close();
        }
        public void UpdateListMember()
        {
            var registerList = DataProvider.Ins.DB.Registers;
            MemberRegisterList = new ObservableCollection<Member>();
            companyWindow = new CompanyWindow();
            var companyVM = companyWindow.DataContext as CompanyViewModel;
            int IdJob = companyVM.GetIdJob;
            foreach (var item in registerList)
            {
                if (item.IdJob == IdJob)
                {
                    foreach (var item1 in MemberList)
                    {
                        if (item1.IdAccount == item.IdAccount)
                            MemberRegisterList.Add(item1);
                    }
                }
            }
            companyWindow.Close();
        }


    }
}