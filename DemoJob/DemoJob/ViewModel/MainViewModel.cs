using DemoJob.Model;
using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Resources;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.ComponentModel;
using System.Windows.Documents;

namespace DemoJob.ViewModel
{
    public class MainViewModel : BaseViewModel
    {
        #region
        // Đây là mainview hay memberview
        private ObservableCollection<Job> _JobList;
        public ObservableCollection<Job> JobList { get => _JobList; set { _JobList = value; OnPropertyChanged(); } }

        private ObservableCollection<Job> _JobListSearch;
        public ObservableCollection<Job> JobListSearch { get => _JobListSearch; set { _JobListSearch = value; OnPropertyChanged(); } }


        private ObservableCollection<Job> _Jobs;
        public ObservableCollection<Job> Jobs { get => _Jobs; set { _Jobs = value; OnPropertyChanged(); } }

        private ObservableCollection<Company> _CompanyList;
        public ObservableCollection<Company> CompanyList { get => _CompanyList; set { _CompanyList = value; OnPropertyChanged(); } }

        private ObservableCollection<String> _MajorList;
        public ObservableCollection<String> MajorList { get => _MajorList; set { _MajorList = value; OnPropertyChanged(); } }

        private ObservableCollection<String> _PlaceList;
        public ObservableCollection<String> PlaceList { get => _PlaceList; set { _PlaceList = value; OnPropertyChanged(); } }

        private ObservableCollection<Register> _RegisterList;
        public ObservableCollection<Register> RegisterList { get => _RegisterList; set { _RegisterList = value; OnPropertyChanged(); } }

        public CollectionView collectionView;

        private string _SelectedItemMajor;
        public string SelectedItemMajor { get => _SelectedItemMajor; set { _SelectedItemMajor = value; OnPropertyChanged(); } }

        private string _SelectedItemPlace;
        public string SelectedItemPlace { get => _SelectedItemPlace;
            set
            {
                _SelectedItemPlace = value;
                OnPropertyChanged();
               
            }
        }

        private int _SaveQualityJob;
        public int SaveQuatityJob { get => _SaveQualityJob; set { _SaveQualityJob = value; OnPropertyChanged(); } }

        private int _QuatityJob;
        public int QuatityJob { get => _QuatityJob; set { _QuatityJob = value; OnPropertyChanged(); } }

        private bool _DefaultChecked;
        public bool DefaultChecked { get => _DefaultChecked; set { _DefaultChecked = value; OnPropertyChanged(); } }

        private string _ValueFilterByNature;
        public string ValueFilterByNature { get => _ValueFilterByNature; set { _ValueFilterByNature = value; OnPropertyChanged(); } }

        private string _ValueFilterBySalary;
        public string ValueFilterBySalary { get => _ValueFilterBySalary; set { _ValueFilterBySalary = value; OnPropertyChanged(); } }

        private string _ValueSort;
        public string ValueSort { get => _ValueSort; set { _ValueSort = value; OnPropertyChanged(); } }

        private string _SearchTextBox;
        public string SearchTextBox { get => _SearchTextBox; set { _SearchTextBox = value; OnPropertyChanged(); } }


        #endregion
        private Job _SelectedItem;
        public Job SelectedItem { get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    GetIdJob = SelectedItem.Id;
                }
            }
        }

        private int _GetIdJob;
        public int GetIdJob { get => _GetIdJob; set { _GetIdJob = value; OnPropertyChanged(); } }



        public bool IsLoaded = false;
        public int SaveJobCount = 0;
        public bool IsChecked;
        public bool IsCheckedShow;
        #region
        public ICommand LoadedWindowCommand { get; set; }
        public ICommand SearchCommand { get; set; }
        public ICommand InformationMemberCommand { get; set; }
        public ICommand InformationJobCommand { get; set; }
        public ICommand ListJobCommand { get; set; }
        public ICommand SaveJobCommand { get; set; }
        public ICommand CheckedCommand { get; set; }
        public ICommand UnCheckedCommand { get; set; }
        public ICommand Filter { get; set; }
        public ICommand ShowSaveJobCommand { get; set; }
        public ICommand HideSaveJobCommand { get; set; }
        public ICommand ShowCommand { get; set; }
        public ICommand DeleteFilterCommand { get; set; }
        public ICommand SortCommand { get; set; }
        public ICommand LogOutCommand { get; set; }
        public int IdAccount = 0;
        public bool isLoginAgain = false;

        private string fileName;
        private string path;
        #endregion
        public MainViewModel()
        {
            SaveQuatityJob = 0;
            //IsChecked = false;
            DefaultChecked = true;
            ValueFilterByNature = "";
            ValueFilterBySalary = "";
            ValueSort = "";
            // Hàm loaded dữ liệu main window
            JobListSearch = new ObservableCollection<Job>(DataProvider.Ins.DB.Jobs);
            LoadedWindowCommand = new RelayCommand<Window>((p) => { return true; }, (p) => {
                IsLoaded = true;
                if (p == null)
                    return;
                p.Hide();
                LoginWindow loginWindow = new LoginWindow();
                var memberLoginVM = loginWindow.DataContext as LoginViewModel;
                if (isLoginAgain == false)
                {
                    loginWindow.ShowDialog();
                    memberLoginVM.LoadImage();
                }
                
                if (loginWindow.DataContext == null)
                    return;
                //var memberLoginVM = loginWindow.DataContext as LoginViewModel;
                IdAccount = memberLoginVM.GetIdUser;
                if (memberLoginVM.IsMemberLogin)
                {
                    p.Show();
                    var memberList = DataProvider.Ins.DB.Members;
                    bool checkMember = false;

                    foreach (var item in memberList)
                    {
                        if (item.IdAccount == IdAccount)
                            checkMember = true; // đã có thông tin
                    }
                    if (checkMember == false) // chưa có thông tin 
                    {
                        var user = new Member() { IdAccount = IdAccount };
                        DataProvider.Ins.DB.Members.Add(user);
                        DataProvider.Ins.DB.SaveChanges();
                    }
                    LoadDataJob();
                }
                else if (memberLoginVM.IsCompanyLogin)
                {
                    CompanyWindow companyWindow = new CompanyWindow();
                    var companyVM = companyWindow.DataContext as CompanyViewModel;
                    companyVM.UpdateInfoListJob();

                    companyWindow.Show();
                    p.Close();
                }
                else
                {
                    p.Close();
                }

                loginWindow.Close();

             
               


            }
             );

            LogOutCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                MessageBoxResult isExit = MessageBox.Show("Bạn có muốn đăng xuất không ?", "Đăng xuất", MessageBoxButton.OKCancel);
                if (isExit == MessageBoxResult.OK)
                {
                    SaveJobCount = 0;
                    LoginWindow lg = new LoginWindow();
                    p.Hide();
                    var mv1 = lg.DataContext as LoginViewModel;
                    mv1.UserName = "";
                    mv1.Password = "";
                    mv1.GetIdUser = -1;
                    mv1.IsCompanyLogin = false;
                    mv1.IsMemberLogin = false;
                    lg.ShowDialog();
                    int IdAccount = mv1.GetIdUser;
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
                        IsCheckedShow = false;
                        var main1 = main.DataContext as MainViewModel;
                        main1.isLoginAgain = true;
                        main1.LoadDataJob();
                        main.ShowDialog();
                        
                    }
                    else if (mv1.IsCompanyLogin)
                    {
                        var pp = new CompanyWindow();
                        p.Close();
                        var p1 = pp.DataContext as CompanyViewModel;
                        p1.UpdateInfoListJob();
                        pp.ShowDialog();
                        pp.Close();
                    }
                    else
                    {
                        p.Close();
                    }
                    p.Close();
                }
            });
            

            //
            // Dùng cho button tìm kiếm
            //
            SearchCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                JobListSearch.Clear();
                ValueFilterByNature = "";
                ValueFilterBySalary = "";
                string tempPlace = SelectedItemPlace;
                string tempMajor = SelectedItemMajor;
                if (SelectedItemPlace == "Tất cả địa điểm")
                {
                    SelectedItemPlace = "";
                }
                if (SelectedItemMajor == "Tất cả ngành nghề")
                {
                    SelectedItemMajor = "";
                }
                QuatityJob = 0;
                JobList.Clear();
                if (IsCheckedShow == true)
                {
                    UpdateListSaveJob();
                }
                else
                {
                    UpdateListAllJob();
                }


                // tempJobList dùng để gán dữ liệu của listJob hiện tại
                ObservableCollection<Job> tempJobList = new ObservableCollection<Job>();
                foreach (var item in JobList)
                {
                    tempJobList.Add(item);
                }
                JobList.Clear();

                QuatityJob = 0;

             


                // Biến kiểm tra xem item đã được add vào jobList hay chưa
                bool isAdd = false;

                if (SearchTextBox != "")
                {
                    foreach (var item in tempJobList)
                    {
                        isAdd = false;
                        // Tránh trường hợp nhập dữ liệu bị lỗi
                        if (item.Salary == null)
                        {
                            item.Salary = "";
                        }
                        if (item.Timeregister == null)
                        {
                            item.Timeregister = "";
                        }

                        // Lệnh duyệt giá trị từ ô textbox
                        if (item.TypeJob.ToLower().Contains(SearchTextBox.ToLower()) || item.NatureOfJob.ToLower().Contains(SearchTextBox.ToLower()) ||
                            item.Major.ToLower().Contains(SearchTextBox.ToLower()) || item.Place.ToLower().Contains(SearchTextBox.ToLower()) ||
                            item.Request.ToLower().Contains(SearchTextBox.ToLower()) || item.Descriptions.ToLower().Contains(SearchTextBox.ToLower()) ||
                            item.MoreInfo.ToLower().Contains(SearchTextBox.ToLower()) || item.Title.ToLower().Contains(SearchTextBox.ToLower()) ||
                            item.Salary.ToLower().Contains(SearchTextBox.ToLower()) || item.Timeregister.ToLower().Contains(SearchTextBox.ToLower()))
                        {
                            if (item.Major.ToLower().Contains(SelectedItemMajor.ToLower()) && SelectedItemMajor != "")
                            {
                                if (item.Place.ToLower().Contains(SelectedItemPlace.ToLower()) && SelectedItemPlace != "")
                                {
                                    JobList.Add(item);
                                    QuatityJob++;
                                }
                                else if (SelectedItemPlace == "")
                                {
                                    JobList.Add(item);
                                    QuatityJob++;
                                }
                            }
                            else if (item.Place.ToLower().Contains(SelectedItemPlace.ToLower()) && SelectedItemPlace != "")
                            {
                                if (item.Major.ToLower().Contains(SelectedItemMajor.ToLower()) && SelectedItemMajor != "")
                                {
                                    JobList.Add(item);
                                    QuatityJob++;
                                }
                                else if (SelectedItemMajor == "")
                                {
                                    JobList.Add(item);
                                    QuatityJob++;
                                }
                            }
                            else if (SelectedItemMajor == "" && SelectedItemPlace == "")
                            {

                                JobList.Add(item);
                                QuatityJob++;
                                isAdd = true;
                            }
                        }
                    }
                }
                else
                {
                    foreach (var item in tempJobList)
                    {
                        isAdd = false;


                        // Lệnh duyệt giá trị từ comboBox Major
                        if (SelectedItemMajor == "" && SelectedItemPlace=="")
                        {
                            JobList.Add(item);
                            QuatityJob++;
                        }
                        else if (SelectedItemPlace != "" && SelectedItemMajor != "")
                        {
                            if (item.Major.ToLower().Contains(SelectedItemMajor.ToLower()) && item.Place.ToLower().Contains(SelectedItemPlace.ToLower()))
                            {
                                JobList.Add(item);
                                QuatityJob++;
                            }
                        }
                        else
                        {
                            if (item.Major.ToLower().Contains(SelectedItemMajor.ToLower()) && isAdd == false && SelectedItemMajor != "")
                            {
                                JobList.Add(item);
                                QuatityJob++;
                                isAdd = true;
                            }

                            // Lệnh duyệt giá trị từ comboBox Place
                            if (item.Place.ToLower().Contains(SelectedItemPlace.ToLower()) && isAdd == false && SelectedItemPlace != "")
                            {
                                JobList.Add(item);
                                QuatityJob++;
                                isAdd = true;
                            }
                        }
                    }
                }
                
                if (tempPlace== "Tất cả địa điểm")
                {
                    SelectedItemPlace = tempPlace;
                }
                if (tempMajor == "Tất cả ngành nghề")
                {
                    SelectedItemMajor = tempMajor;
                }
                foreach (var item in JobList)
                {
                    JobListSearch.Add(item);
                }
            });

            //
            // Dùng cho Toggle hiển thị danh sách công việc đã lưu hoặc tất cả công việc 
            //
            ShowSaveJobCommand = new RelayCommand<ToggleButton>((p) => { return true; }, (p) =>
            {
                if (p.IsChecked == true)
                {
                    IsCheckedShow = true;
                }

            });
            HideSaveJobCommand = new RelayCommand<ToggleButton>((p) => { return true; }, (p) =>
            {
                if (p.IsChecked == false)
                {
                    IsCheckedShow = false;
                }

            });
            ShowCommand = new RelayCommand<ToggleButton>((p) => { return true; }, (p) =>
            {
                ValueFilterByNature = "";
                ValueFilterBySalary = "";
                QuatityJob = 0;
                JobList.Clear();
                if (IsCheckedShow==true)
                {
                    UpdateListSaveJob();
                }
                else
                {
                    UpdateListAllJob();
                }

            });

            //
            // Dùng để lọc dữ liệu theo mức lương và tính chất công việc
            //
            Filter = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                // tempJobList dùng để gán dữ liệu của listJob hiện tại
                List<Job> tempJobList = new List<Job>();
                foreach (var item in JobListSearch)
                {
                    tempJobList.Add(item);
                }
                JobList.Clear();


                QuatityJob = 0;
                foreach (var item in tempJobList)
                {
                    var salary = "";  // Gán giá trị Salary, phòng trường hợp null gây lỗi
                    if (item.Salary != null)
                    {
                        salary = item.Salary.ToString();
                    }
                    if (ValueFilterByNature.Contains(item.NatureOfJob) && ValueFilterBySalary =="")
                    {
                        JobList.Add(item);
                        QuatityJob++;
                    }
                    else if (ValueFilterByNature=="" && ValueFilterBySalary != "" && salary !="")
                    {
                        string tempString = "";

                        // Vòng lặp cắt chuỗi Salary sang số
                        foreach (var item1 in salary)
                        {
                            if (item1 >= '0' && item1 <= '9')
                                tempString = String.Concat(tempString, item1);
                        }

                        
                        if (tempString == "") // Tức là những job có salary không có số cụ thể : như Thương lượng ,.. thì tự động add vào
                        {
                            JobList.Add(item);
                            QuatityJob++;
                        }
                        else
                        {
                            if (ValueFilterBySalary.Contains("≤ $500"))
                            {
                                if (int.Parse(tempString) <= 500)
                                {
                                    JobList.Add(item);
                                    QuatityJob++;
                                }
                            }
                            else if (ValueFilterBySalary.Contains("$500 - $1000"))
                            {
                                if (int.Parse(tempString) > 500 && int.Parse(tempString) <= 1000)
                                {
                                    JobList.Add(item);
                                    QuatityJob++;
                                }
                            }
                            else if (ValueFilterBySalary.Contains("$1000 - $1500"))
                            {
                                if (int.Parse(tempString) > 1000 && int.Parse(tempString) <= 1500)
                                {
                                    JobList.Add(item);
                                    QuatityJob++;
                                }
                            }
                            else if (ValueFilterBySalary.Contains("$1500 - $2000"))
                            {
                                if (int.Parse(tempString) > 1500 && int.Parse(tempString) <= 2000)
                                {
                                    JobList.Add(item);
                                    QuatityJob++;
                                }
                            }
                            else if (ValueFilterBySalary.Contains("$2000 - $3000"))
                            {
                                if (int.Parse(tempString) > 2000 && int.Parse(tempString) <= 3000)
                                {
                                    JobList.Add(item);
                                    QuatityJob++;
                                }
                            }
                            else
                            {
                                if (int.Parse(tempString) > 3000)
                                {
                                    JobList.Add(item);
                                    QuatityJob++;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (ValueFilterByNature.Contains(item.NatureOfJob))
                        {
                            string tempString = "";

                            foreach (var item1 in salary)
                            {
                                if (item1 >= '0' && item1 <= '9')
                                    tempString = String.Concat(tempString, item1);
                            }

                            // Vòng lặp cắt chuỗi Salary sang số
                            if (tempString == "") // Tức là những job có salary không có số cụ thể : như Thương lượng ,.. thì tự động add vào
                            {
                                JobList.Add(item);
                                QuatityJob++;
                            }
                            else
                            {
                                if (ValueFilterBySalary.Contains("≤ $500"))
                                {
                                    if (int.Parse(tempString) <= 500)
                                    {
                                        JobList.Add(item);
                                        QuatityJob++;
                                    }
                                }
                                else if (ValueFilterBySalary.Contains("$500 - $1000"))
                                {
                                    if (int.Parse(tempString) > 500 && int.Parse(tempString) <= 1000)
                                    {
                                        JobList.Add(item);
                                        QuatityJob++;
                                    }
                                }
                                else if (ValueFilterBySalary.Contains("$1000 - $1500"))
                                {
                                    if (int.Parse(tempString) > 1000 && int.Parse(tempString) <= 1500)
                                    {
                                        JobList.Add(item);
                                        QuatityJob++;
                                    }
                                }
                                else if (ValueFilterBySalary.Contains("$1500 - $2000"))
                                {
                                    if (int.Parse(tempString) > 1500 && int.Parse(tempString) <= 2000)
                                    {
                                        JobList.Add(item);
                                        QuatityJob++;
                                    }
                                }
                                else if (ValueFilterBySalary.Contains("$2000 - $3000"))
                                {
                                    if (int.Parse(tempString) > 2000 && int.Parse(tempString) <= 3000)
                                    {
                                        JobList.Add(item);
                                        QuatityJob++;
                                    }
                                }
                                else
                                {
                                    if (int.Parse(tempString) > 3000)
                                    {
                                        JobList.Add(item);
                                        QuatityJob++;
                                    }
                                }
                            }
                        }
                    }
                }
               
            });

            //
            // Sort
            //
            SortCommand = new RelayCommand<object>((x) => { return true; }, (x) =>
            {
                if (ValueSort.Contains("Ngày tăng dần"))
                {
                    ObservableCollection<Job> temp;
                    temp = new ObservableCollection<Job>(JobList.OrderBy(p => p.GetTimeRegister()));
                    JobList.Clear();
                    foreach (var item in temp)
                    {
                        JobList.Add(item);
                    }
                }
                else if (ValueSort.Contains("Ngày giảm dần"))
                {
                    ObservableCollection<Job> temp;
                    temp = new ObservableCollection<Job>(JobList.OrderByDescending(p => p.GetTimeRegister()));
                    JobList.Clear();
                    foreach (var item in temp)
                    {
                        JobList.Add(item);
                    }
                }
                else if (ValueSort.Contains("Lương tăng dần"))
                {
                    ObservableCollection<Job> temp;
                    temp = new ObservableCollection<Job>(JobList.OrderBy(p => p.GetIntSalary()));
                    JobList.Clear();
                    foreach (var item in temp)
                    {
                        JobList.Add(item);
                    }
                }
                else if (ValueSort.Contains("Lương giảm dần"))
                {
                    ObservableCollection<Job> temp;
                    temp = new ObservableCollection<Job>(JobList.OrderByDescending(p => p.GetIntSalary()));
                    JobList.Clear();
                    foreach (var item in temp)
                    {
                        JobList.Add(item);
                    }
                }

            });


            //
            // Xóa filter và sort
            //
            DeleteFilterCommand = new RelayCommand<ToggleButton>((p) => { return true; }, (p) =>
            {
                ValueFilterByNature = "";
                ValueFilterBySalary = "";
                ValueSort = "";
                SearchTextBox = "";
                SelectedItemMajor = "";
                SelectedItemPlace = "";
                QuatityJob = 0;
                JobList.Clear();
                if (IsCheckedShow == true)
                {
                    UpdateListSaveJob();
                }
                else
                {
                    UpdateListAllJob();
                }
            });
            SaveJobCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                string temp = p.ToString();
                GetIdJob = int.Parse(temp);
                if (IsChecked == true)
                {
                    Register regs = new Register() {IdAccount=IdAccount,IdJob=GetIdJob };
                    RegisterList.Add(regs);
                    DataProvider.Ins.DB.Registers.Add(regs);
                    DataProvider.Ins.DB.SaveChanges();
                    QuatityJob--;
                    SaveQuatityJob++;
                    UpdateListAllJob();
                    MessageBox.Show("Đã lưu công việc thành công");
                }
                else if (IsChecked == false)
                {
                    //Register regs = new Register() { IdAccount = IdAccount, IdJob = GetIdJob };
                    //RegisterList.Remove(regs);
                    foreach (var item in RegisterList)
                    {
                        if (item.IdJob == GetIdJob && item.IdAccount == IdAccount)
                        {
                            DataProvider.Ins.DB.Registers.Remove(item);
                            RegisterList.Remove(item);
                            break;
                        }
                    }
                    DataProvider.Ins.DB.SaveChanges();
                    QuatityJob--;
                    SaveQuatityJob--;
                    UpdateListSaveJob();
                    MessageBox.Show("Đã hủy lưu công việc");
                }

            });
            CheckedCommand = new RelayCommand<ToggleButton>((p) => { return true; }, (p) =>
            {
                if (p.IsChecked == true)
                {
                    IsChecked = true;
                }
                
            });
            UnCheckedCommand = new RelayCommand<ToggleButton>((p) => { return true; }, (p) =>
            {
                if (p.IsChecked == false)
                {
                    IsChecked = false;
                }

            });
            InformationMemberCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                InformationMemberWindow informationMemberWindow = new InformationMemberWindow();
                var infoMemberVM = informationMemberWindow.DataContext as InforMemberViewModel;
                infoMemberVM.Update();
                //infoMemberVM.Avatar = infoMemberVM.tempFileName;
                informationMemberWindow.ShowDialog();
            });
            InformationJobCommand = new RelayCommand<Object>((p) => { return true; }, (p) =>
            {
                string temp = p.ToString();
                GetIdJob = int.Parse(temp);
                InformationJobWindow informationJobWindow = new InformationJobWindow();
                var infoJob = informationJobWindow.DataContext as InfoJobViewModel;
                infoJob.UpdateInfoJobOfMainViewModel();
                informationJobWindow.ShowDialog();
            });
          

        }

        public void LoadDataJob()
        {
            JobList = new ObservableCollection<Job>();
            Jobs = new ObservableCollection<Job>(DataProvider.Ins.DB.Jobs);
            RegisterList = new ObservableCollection<Register>(DataProvider.Ins.DB.Registers);
            UpdateListAllJob();
            MajorListSelectedItemMajor = new ObservableCollection<string>();
            PlaceList = new ObservableCollection<string>();
            MajorList.Add("Tất cả ngành nghề");
            PlaceList.Add("Tất cả địa điểm");
            SelectedItemMajor = "";
            SelectedItemPlace = "";
            SearchTextBox = "";
            foreach (var item in JobList)
            {
                if (!MajorList.Contains(item.Major.Trim()) && item.Major.Trim() != "Khac")
                    MajorList.Add(item.Major.Trim());
                if (!PlaceList.Contains(item.Place.Trim()) && item.Place.Trim() != "Khac")
                    PlaceList.Add(item.Place.Trim());
            }


            foreach (var item in RegisterList)
            {
                if (item.IdAccount == IdAccount)
                {
                    SaveQuatityJob++;
                }
            }

            // Load dữ liệu job list
            if (IsCheckedShow == true)
            {
                UpdateListSaveJob();
            }
            else
            {
                UpdateListAllJob();
            }




            CompanyList = new ObservableCollection<Company>(DataProvider.Ins.DB.Companies);

            string workingDirectory = Environment.CurrentDirectory;

            string projectDirectory = Directory.GetParent(workingDirectory).Parent.FullName; //LogoCompany

            path = projectDirectory + @"\LogoPicture\";

            foreach (var item in JobList)
            {
                foreach (var item1 in CompanyList)
                {
                    if (item.IdCompany == item1.Id && item1.Avatar != null)
                    {
                        item.Link = path + item1.IdAccount.ToString() + ".jpg";
                    }
                }
            }


        }
        public void UpdateListAllJob()
        {

            QuatityJob = 0;
            SaveQuatityJob = 0;
            JobList.Clear();
            foreach (var item in Jobs)
            {
                JobList.Add(item);
            }
            QuatityJob = JobList.Count();
            foreach (var item in RegisterList)
            {
                if (item.IdAccount == IdAccount)
                {
                    foreach (var item1 in Jobs)
                    {
                        if (item1.Id == item.IdJob)
                        {
                            JobList.Remove(item1);
                            QuatityJob--;
                            SaveQuatityJob++;
                        }
                    }
                }
            }

            //Sort
            ObservableCollection<Job> temp;
            temp = new ObservableCollection<Job>(JobList.OrderBy(p => p.Title));
            JobList.Clear();
            foreach (var item in temp)
            {
                JobList.Add(item);
            }
        }
        public void UpdateListSaveJob()
        {
            QuatityJob = 0;
            SaveQuatityJob = 0;
            JobList.Clear();
            foreach (var item in RegisterList)
            {
                if (item.IdAccount == IdAccount)
                {
                    foreach (var item1 in Jobs)
                    {
                        if (item1.Id == item.IdJob)
                        {
                            JobList.Add(item1);
                            QuatityJob++;
                            SaveQuatityJob++;
                        }
                    }
                }
            }
            // Sort
            ObservableCollection<Job> temp;
            temp = new ObservableCollection<Job>(JobList.OrderBy(p => p.Title));
            JobList.Clear();
            foreach (var item in temp)
            {
                JobList.Add(item);
            }
        }
    }
    
}
