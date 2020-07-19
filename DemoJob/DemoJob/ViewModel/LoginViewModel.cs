using DemoJob.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;

namespace DemoJob.ViewModel
{
    public class LoginViewModel : BaseViewModel
    {

        private ObservableCollection<Company> _CompanyList;
        public ObservableCollection<Company> CompanyList { get => _CompanyList; set { _CompanyList = value; OnPropertyChanged(); } }
        public bool IsMemberLogin { get; set; }
        public bool IsCompanyLogin { get; set; }
        public int GetIdUser { get; set; }

        private string _UserName;
        public string UserName { get => _UserName ; set { _UserName = value; OnPropertyChanged(); } }

        private string _Password;
        public string Password { get => _Password; set { _Password = value; OnPropertyChanged(); } }

      
        public ICommand LoginCommand { get; set; }
        public ICommand RegisterCommand { get; set; }
        public ICommand PasswordChangedCommand { get; set; }

        public bool checkMember = false;

        public bool check = false;
        public LoginViewModel()
        {
            IsMemberLogin = false;
            IsCompanyLogin = false;
            LoginCommand = new RelayCommand<Window>((p) => { return true; }, (p) => { Login(p); });
            RegisterCommand = new RelayCommand<Window>((p) => { return true; }, (p) => {
                RegisterWindow registerWindow = new RegisterWindow();
                registerWindow.ShowDialog();
            });
            PasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { Password = p.Password; });


        }
        public void Login(Window p)
        {
           
            if (p == null)
                return;

            var accCountCompany = DataProvider.Ins.DB.Accounts.Where(x => x.UserName == UserName && x.PassWord == Password && x.IdAccountRoles == 1).Count();
            var accCountMember = DataProvider.Ins.DB.Accounts.Where(x => x.UserName == UserName && x.PassWord == Password && x.IdAccountRoles == 2).Count();
            var temp = DataProvider.Ins.DB.Accounts.Where(x => x.UserName == UserName && x.PassWord == Password); // Lấy ra tài khoản 
            ObservableCollection<Account> tempList = new ObservableCollection<Account>(temp);
            foreach (var item in tempList)
            {
                GetIdUser = item.Id;
            }

            if (accCountMember > 0)
            {
               
                IsCompanyLogin = false;
                IsMemberLogin = true;
                var memberList = DataProvider.Ins.DB.Members;
                
                foreach (var item in memberList)
                {
                    if (item.IdAccount == GetIdUser)
                        checkMember = true; // đã có thông tin
                }
                if (checkMember == false) // chưa có thông tin 
                {
                    var LanguageSkill = new LanguageSkill();
                    DataProvider.Ins.DB.LanguageSkills.Add(LanguageSkill);
                    DataProvider.Ins.DB.SaveChanges();

                    var OfficeSkill = new OfficeSkill();
                    DataProvider.Ins.DB.OfficeSkills.Add(OfficeSkill);
                    DataProvider.Ins.DB.SaveChanges();

                    var Degree = new Degree();
                    DataProvider.Ins.DB.Degrees.Add(Degree);
                    DataProvider.Ins.DB.SaveChanges();

                    var Experience = new Experience();
                    DataProvider.Ins.DB.Experiences.Add(Experience);
                    DataProvider.Ins.DB.SaveChanges();


                    var user = new Member() { IdAccount = GetIdUser, IdLanguageSkill = LanguageSkill.Id, IdOfficeSkill = OfficeSkill.Id, IdDegree = Degree.Id, IdExperience = Experience.Id };
                    DataProvider.Ins.DB.Members.Add(user);
                    DataProvider.Ins.DB.SaveChanges();
                }
                checkMember = false;
                p.Close();
            }
            else if (accCountCompany > 0)
            {
                IsCompanyLogin = true;
                IsMemberLogin = false;
                CompanyList = new ObservableCollection<Company>(DataProvider.Ins.DB.Companies);
                check = false;
                foreach (var item in CompanyList)
                {
                    if (item.IdAccount == GetIdUser)
                    {
                        check = true;
                    }

                }
                if (check == false)
                {
                    Company company = new Company() { IdAccount = GetIdUser };
                    DataProvider.Ins.DB.Companies.Add(company);
                    DataProvider.Ins.DB.SaveChanges();
                    var ComList = DataProvider.Ins.DB.Companies;
                    
                }
                check = false;
                p.Close();
            }
            else
            {
                MessageBox.Show("Sai tài khoản hoặc mật khẩu");
            }


         
        }
        public void LoadImage()
        {
            if (GetIdUser != 0)
            {
                //Load ảnh company
                try
                {
                    string workingDirectory = Environment.CurrentDirectory;

                    string projectDirectory = Directory.GetParent(workingDirectory).Parent.FullName; //LogoCompany

                    string path = projectDirectory + @"\LogoPicture\";
                    if (DataProvider.Ins.DB.Companies.Where(x => x.IdAccount == GetIdUser).SingleOrDefault() != null)
                    {
                        if (DataProvider.Ins.DB.Companies.Where(x => x.IdAccount == GetIdUser).SingleOrDefault().Avatar != null)
                        {
                            File.WriteAllBytes((path + DataProvider.Ins.DB.Companies.Where(x => x.IdAccount == GetIdUser).SingleOrDefault().IdAccount.ToString() + ".jpg"),
                            DataProvider.Ins.DB.Companies.Where(x => x.IdAccount == GetIdUser).SingleOrDefault().Avatar);
                        }
                    }
                }
                catch (Exception e)
                {
                    System.Windows.MessageBox.Show(e.ToString());
                }

                // Load ảnh member
                try
                {
                    string workingDirectory = Environment.CurrentDirectory;

                    string projectDirectory = Directory.GetParent(workingDirectory).Parent.FullName; //LogoCompany

                    string path = projectDirectory + @"\AvatarMember\";
                    if (DataProvider.Ins.DB.Members.Where(x => x.IdAccount == GetIdUser).SingleOrDefault() != null)
                    {
                        if (DataProvider.Ins.DB.Members.Where(x => x.IdAccount == GetIdUser).SingleOrDefault().Avatar != null)
                        {
                            File.WriteAllBytes((path + DataProvider.Ins.DB.Members.Where(x => x.IdAccount == GetIdUser).SingleOrDefault().IdAccount.ToString() + ".jpg"),
                      DataProvider.Ins.DB.Members.Where(x => x.IdAccount == GetIdUser).SingleOrDefault().Avatar);
                        }
                    }
                }
                catch (Exception e)
                {
                    System.Windows.MessageBox.Show(e.ToString());
                }
            }
        }
        
    }
}
