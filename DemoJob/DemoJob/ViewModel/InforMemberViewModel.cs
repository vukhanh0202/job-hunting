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
using System.Windows.Forms;
using System.Globalization;
using System.IO;

namespace DemoJob.ViewModel
{
    public class InforMemberViewModel : BaseViewModel
    {
        #region
        private ObservableCollection<Member> _ListMember;
        public ObservableCollection<Member> ListMember { get => _ListMember; set { _ListMember = value; OnPropertyChanged(); } }
        public ICommand ConfirmCommand { get; set; }
        public ICommand ExitCommand { get; set; }
        public ICommand CheckedBox1Command { get; set; }
        public ICommand CheckedBox2Command { get; set; }
        public ICommand CheckedBox3Command { get; set; }
        public ICommand CheckedBox4Command { get; set; }
        public ICommand CheckedBox5Command { get; set; }
        public ICommand CheckedBox6Command { get; set; }
        public ICommand CheckedBox7Command { get; set; }
        public ICommand CheckedBox8Command { get; set; }
        public ICommand CheckedBox9Command { get; set; }
        public ICommand CheckedBox10Command { get; set; }
        public ICommand CheckedBox11Command { get; set; }
        public ICommand ChangeAvatarCommand { get; set; }
        public ICommand ChangePasswordCommand { get; set; }
        

        private string _DisplayName;
        public string DisplayName { get => _DisplayName; set { _DisplayName = value; OnPropertyChanged(); } }

        private string _Position;
        public string Position { get => _Position; set { _Position = value; OnPropertyChanged(); } }

        private string _PhoneNumber;
        public string PhoneNumber { get => _PhoneNumber; set { _PhoneNumber = value; OnPropertyChanged(); } }

        private string _Email;
        public string Email { get => _Email; set { _Email = value; OnPropertyChanged(); } }

        private string _Place;
        public string Place { get => _Place; set { _Place = value; OnPropertyChanged(); } }

        private DateTime _Birthday;
        public DateTime Birthday { get => _Birthday; set { _Birthday = value; OnPropertyChanged(); } }

        private string _Sex;
        public string Sex { get => _Sex; set { _Sex = value; OnPropertyChanged(); } }

        private string _MarryStatus;
        public string MarryStatus { get => _MarryStatus; set { _MarryStatus = value; OnPropertyChanged(); } }

        private string _AimJob;
        public string AimJob { get => _AimJob; set { _AimJob = value; OnPropertyChanged(); } }

        private string _PersonalSkill;
        public string PersonalSkill { get => _PersonalSkill; set { _PersonalSkill = value; OnPropertyChanged(); } }

        private int _English;
        public int English { get => _English; set { _English = value; OnPropertyChanged(); } }

        private int _French;
        public int French { get => _French; set { _French = value; OnPropertyChanged(); } }

        private int _Russian;
        public int Russian { get => _Russian; set { _Russian = value; OnPropertyChanged(); } }

        private int _Korean;
        public int Korean { get => _Korean; set { _Korean = value; OnPropertyChanged(); } }

        private int _Chinese;
        public int Chinese { get => _Chinese; set { _Chinese = value; OnPropertyChanged(); } }

        private int _Japanese;
        public int Japanese { get => _Japanese; set { _Japanese = value; OnPropertyChanged(); } }

        private int _Word;
        public int Word { get => _Word; set { _Word = value; OnPropertyChanged(); } }

        private int _Excel;
        public int Excel { get => _Excel; set { _Excel = value; OnPropertyChanged(); } }

        private int _PowerPoint;
        public int PowerPoint { get => _PowerPoint; set { _PowerPoint = value; OnPropertyChanged(); } }

        private int _Outlook;
        public int Outlook { get => _Outlook; set { _Outlook = value; OnPropertyChanged(); } }

       

        private string _SchoolTrainDegree;
        public string SchoolTrainDegree { get => _SchoolTrainDegree; set { _SchoolTrainDegree = value; OnPropertyChanged(); } }

        private string _FacultyTrainDegree;
        public string FacultyTrainDegree { get => _FacultyTrainDegree; set { _FacultyTrainDegree = value; OnPropertyChanged(); } }

        private string _DiplomaDegree;
        public string DiplomaDegree { get => _DiplomaDegree; set { _DiplomaDegree = value; OnPropertyChanged(); } }

        private string _MajorTrainDegree;
        public string MajorTrainDegree { get => _MajorTrainDegree; set { _MajorTrainDegree = value; OnPropertyChanged(); } }

        private string _RankedDegree;
        public string RankedDegree { get => _RankedDegree; set { _RankedDegree = value; OnPropertyChanged(); } }

        private DateTime _TimeBeginDegree;
        public DateTime TimeBeginDegree { get => _TimeBeginDegree; set { _TimeBeginDegree = value; OnPropertyChanged(); } }

        private DateTime _TimeEndDegree;
        public DateTime TimeEndDegree { get => _TimeEndDegree; set { _TimeEndDegree = value; OnPropertyChanged(); } }

        private string _MoreInfoDegree;
        public string MoreInfoDegree { get => _MoreInfoDegree; set { _MoreInfoDegree = value; OnPropertyChanged(); } }

        private string _PositionExperience;
        public string PositionExperience { get => _PositionExperience; set { _PositionExperience = value; OnPropertyChanged(); } }

        private string _CompanyExperience;
        public string CompanyExperience { get => _CompanyExperience; set { _CompanyExperience = value; OnPropertyChanged(); } }

        private DateTime _TimeBeginExperience;
        public DateTime TimeBeginExperience { get => _TimeBeginExperience; set { _TimeBeginExperience = value; OnPropertyChanged(); } }

        private DateTime _TimeEndExperience;
        public DateTime TimeEndExperience { get => _TimeEndExperience; set { _TimeEndExperience = value; OnPropertyChanged(); } }

        private string _MoreInfoExperience;
        public string MoreInfoExperience { get => _MoreInfoExperience; set { _MoreInfoExperience = value; OnPropertyChanged(); } }

        private string _Avatar;
        public string Avatar { get => _Avatar; set { _Avatar = value; OnPropertyChanged(); } }

        #endregion
        private string fileName;
        public string tempFileName;
        private string path;
        private int IdAccount;
        public InforMemberViewModel()
        {
            ListMember = new ObservableCollection<Member>(DataProvider.Ins.DB.Members);
            LoginWindow loginWindow = new LoginWindow();
            var memberLoginVM1 = loginWindow.DataContext as LoginViewModel;
            IdAccount = memberLoginVM1.GetIdUser;
            var memberList = DataProvider.Ins.DB.Members;

            string workingDirectory = Environment.CurrentDirectory;

            string projectDirectory = Directory.GetParent(workingDirectory).Parent.FullName; //LogoCompany

            path = projectDirectory + @"\AvatarMember\";

            fileName = path + "Avatar.png";

            if (DataProvider.Ins.DB.Members.Where(x => x.IdAccount == memberLoginVM1.GetIdUser).SingleOrDefault() != null)
            {
                if (File.Exists(path + DataProvider.Ins.DB.Members.Where(x => x.IdAccount == memberLoginVM1.GetIdUser).SingleOrDefault().IdAccount.ToString() + ".jpg"))
                {
                    fileName = path + DataProvider.Ins.DB.Members.Where(x => x.IdAccount == memberLoginVM1.GetIdUser).SingleOrDefault().IdAccount.ToString() + ".jpg";
                }
            }
            tempFileName = fileName;
            ChangePasswordCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                ChangePasswordWindow change = new ChangePasswordWindow();
                var changeVM = change.DataContext as ChangePasswordViewModel;
                changeVM.setIdAccount();
                change.ShowDialog();
            });
            ConfirmCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                MessageBoxResult isConfirm = System.Windows.MessageBox.Show("Thay đổi thông tin cần đăng nhập bạn có chắc chắn muốn thay đổi ?", "Thay đổi thông tin", MessageBoxButton.OKCancel);
                if (isConfirm == MessageBoxResult.OK)
                {
                    var User = DataProvider.Ins.DB.Members.Where(x => x.IdAccount == memberLoginVM1.GetIdUser).SingleOrDefault();
                    var LanguageSkill = DataProvider.Ins.DB.LanguageSkills.Where(x => x.Id == User.IdLanguageSkill).SingleOrDefault();
                    var OfficeSkill = DataProvider.Ins.DB.OfficeSkills.Where(x => x.Id == User.IdOfficeSkill).SingleOrDefault();
                    var Degree = DataProvider.Ins.DB.Degrees.Where(x => x.Id == User.IdDegree).SingleOrDefault();
                    var Experience = DataProvider.Ins.DB.Experiences.Where(x => x.Id == User.IdExperience).SingleOrDefault();


                    User.DisplayName = DisplayName;
                    User.Position = Position;
                    User.PhoneNumber = PhoneNumber;
                    User.Email = Email;
                    User.Place = Place;
                    User.Birthday = Birthday.ToShortDateString().ToString();
                    User.Sex = Sex;
                    User.MarryStatus = MarryStatus;
                    User.AimJob = AimJob;
                    User.PersonalSkill = PersonalSkill;
                    User.Avatar = File.ReadAllBytes(fileName);

                    LanguageSkill.English = English;
                    LanguageSkill.French = French;
                    LanguageSkill.Russian = Russian;
                    LanguageSkill.Korean = Korean;
                    LanguageSkill.Chinese = Chinese;
                    LanguageSkill.Japanese = Japanese;

                    OfficeSkill.Word = Word;
                    OfficeSkill.Excel = Excel;
                    OfficeSkill.PowerPoint = PowerPoint;
                    OfficeSkill.Outlook = Outlook;

                    Degree.SchoolTrain = SchoolTrainDegree;
                    Degree.FacultyTrain = FacultyTrainDegree;
                    Degree.Diploma = DiplomaDegree;
                    Degree.MajorTrain = MajorTrainDegree;
                    Degree.Ranked = RankedDegree;
                    Degree.TimeBegin = TimeBeginDegree.ToShortDateString().ToString();
                    Degree.TimeEnd = TimeEndDegree.ToShortDateString().ToString();
                    Degree.MoreInfo = MoreInfoDegree;

                    Experience.Position = PositionExperience;
                    Experience.Company = CompanyExperience;
                    Experience.TimeBegin = TimeBeginExperience.ToShortDateString().ToString();
                    Experience.TimeEnd = TimeEndExperience.ToShortDateString().ToString();
                    Experience.MoreInfo = MoreInfoExperience;


                    DataProvider.Ins.DB.SaveChanges();
                    System.Windows.MessageBox.Show("Đã lưu thành công");
                    System.Windows.MessageBox.Show("Vui lòng đăng nhập lại để thay đổi thông tin!!");
                    System.Windows.Forms.Application.Restart();
                    Environment.Exit(0);
                    OnPropertyChanged();
                    Avatar = fileName;
                    p.Close();
                }
            });


            //
            // Button Exit
            //
            ExitCommand = new RelayCommand<Window>((p) => { return true; }, (p) => {  p.Close(); });

            ChangeAvatarCommand = new RelayCommand<Window>((p) => { return true; }, (p) => {
                using (OpenFileDialog ofd = new OpenFileDialog() { Filter = "Image files (*.png;*.jpeg)|*.png;*.jpeg|All files (*.*)|*.*", ValidateNames = true, Multiselect = false })
                {
                    if (ofd.ShowDialog() == DialogResult.OK)
                    {
                        fileName = ofd.FileName;
                        Avatar = fileName;

                    }
                }
                
            });


            //
            // Check box của AimJob
            //
            #region
            CheckedBox1Command = new RelayCommand<System.Windows.Controls.CheckBox>((p) => { return true; }, (p) => {
                if (p.IsChecked.Value)
                {
                    AimJob = String.Concat(AimJob, "- Mong muốn tìm được chỗ làm ổn định lâu dài\n");
                }
                else
                {
                    AimJob = AimJob.Replace("- Mong muốn tìm được chỗ làm ổn định lâu dài\n", "");
                } 
            });
            CheckedBox2Command = new RelayCommand<System.Windows.Controls.CheckBox>((p) => { return true; }, (p) => {
                if (p.IsChecked.Value)
                {
                    AimJob = String.Concat(AimJob, "- Mong muốn tìm được chỗ làm có cơ hội thăng tiến tốt\n");
                }
                else
                {
                    AimJob = AimJob.Replace("- Mong muốn tìm được chỗ làm có cơ hội thăng tiến tốt\n", "");
                }
            });
            CheckedBox3Command = new RelayCommand<System.Windows.Controls.CheckBox>((p) => { return true; }, (p) => {
                if (p.IsChecked.Value)
                {
                    AimJob = String.Concat(AimJob, "- Mong muốn tìm được chỗ làm có mức lương tốt\n");
                }
                else
                {
                    AimJob = AimJob.Replace("- Mong muốn tìm được chỗ làm có mức lương tốt\n", "");
                }
            });
            CheckedBox4Command = new RelayCommand<System.Windows.Controls.CheckBox>((p) => { return true; }, (p) => {
                if (p.IsChecked.Value)
                {
                    AimJob = String.Concat(AimJob, "- Mong muốn tìm được nơi có cơ hội cống hiến bản thân tốt\n");
                }
                else
                {
                    AimJob = AimJob.Replace("- Mong muốn tìm được nơi có cơ hội cống hiến bản thân tốt\n", "");
                }
            });
            #endregion

            //
            // CheckBox của PersonalSkill
            //
            #region
            CheckedBox5Command = new RelayCommand<System.Windows.Controls.CheckBox>((p) => { return true; }, (p) => {
                if (p.IsChecked.Value)
                {
                    PersonalSkill = String.Concat(PersonalSkill, "- Kỹ năng tổ chức\n");
                }
                else
                {
                    PersonalSkill = PersonalSkill.Replace("- Kỹ năng tổ chức\n", "");
                }
            });
            CheckedBox6Command = new RelayCommand<System.Windows.Controls.CheckBox>((p) => { return true; }, (p) => {
                if (p.IsChecked.Value)
                {
                    PersonalSkill = String.Concat(PersonalSkill, "- Kỹ năng giao tiếp\n");
                }
                else
                {
                    PersonalSkill = PersonalSkill.Replace("- Kỹ năng giao tiếp\n", "");
                }
            });
            CheckedBox7Command = new RelayCommand<System.Windows.Controls.CheckBox>((p) => { return true; }, (p) => {
                if (p.IsChecked.Value)
                {
                    PersonalSkill = String.Concat(PersonalSkill, "- Kỹ năng làm việc nhóm\n");
                }
                else
                {
                    PersonalSkill = PersonalSkill.Replace("- Kỹ năng làm việc nhóm\n", "");
                }
            });
            CheckedBox8Command = new RelayCommand<System.Windows.Controls.CheckBox>((p) => { return true; }, (p) => {
                if (p.IsChecked.Value)
                {
                    PersonalSkill = String.Concat(PersonalSkill, "- Giải quyết vấn đề\n");
                }
                else
                {
                    PersonalSkill = PersonalSkill.Replace("- Giải quyết vấn đề\n", "");
                }
            });
            CheckedBox9Command = new RelayCommand<System.Windows.Controls.CheckBox>((p) => { return true; }, (p) => {
                if (p.IsChecked.Value)
                {
                    PersonalSkill = String.Concat(PersonalSkill, "- Kỹ năng thuyết trình\n");
                }
                else
                {
                    PersonalSkill = PersonalSkill.Replace("- Kỹ năng thuyết trình\n", "");
                }
            });
            CheckedBox10Command = new RelayCommand<System.Windows.Controls.CheckBox>((p) => { return true; }, (p) => {
                if (p.IsChecked.Value)
                {
                    PersonalSkill = String.Concat(PersonalSkill, "- Tư duy sáng tạo\n");
                }
                else
                {
                    PersonalSkill = PersonalSkill.Replace("- Tư duy sáng tạo\n", "");
                }
            });
            CheckedBox11Command = new RelayCommand<System.Windows.Controls.CheckBox>((p) => { return true; }, (p) => {
                if (p.IsChecked.Value)
                {
                    PersonalSkill = String.Concat(PersonalSkill, "- Mong muốn tìm được chỗ làm có cơ hội thăng tiến tốt\n");
                }
                else
                {
                    PersonalSkill = PersonalSkill.Replace("- Lập kế hoạch\n", "");
                }
            });
#endregion


            loginWindow.Close();
        }

        public void Update()
        {
            string workingDirectory = Environment.CurrentDirectory;

            string projectDirectory = Directory.GetParent(workingDirectory).Parent.FullName; //LogoCompany

            path = projectDirectory + @"\AvatarMember\";

            fileName = path + "Avatar.png";
            ListMember = new ObservableCollection<Member>(DataProvider.Ins.DB.Members);
            LoginWindow loginWindow = new LoginWindow();
            var memberLoginVM1 = loginWindow.DataContext as LoginViewModel;

            
            var User = DataProvider.Ins.DB.Members.Where(x => x.IdAccount == memberLoginVM1.GetIdUser).SingleOrDefault();
            var LanguageSkill = DataProvider.Ins.DB.LanguageSkills.Where(x => x.Id == User.IdLanguageSkill).SingleOrDefault();
            var OfficeSkill = DataProvider.Ins.DB.OfficeSkills.Where(x => x.Id == User.IdOfficeSkill).SingleOrDefault();
            var Degree = DataProvider.Ins.DB.Degrees.Where(x => x.Id == User.IdDegree).SingleOrDefault();
            var Experience = DataProvider.Ins.DB.Experiences.Where(x => x.Id == User.IdExperience).SingleOrDefault();

            if (File.Exists(path + DataProvider.Ins.DB.Members.Where(x => x.IdAccount == memberLoginVM1.GetIdUser).SingleOrDefault().IdAccount.ToString() + ".jpg"))
            {
                fileName = path + DataProvider.Ins.DB.Members.Where(x => x.IdAccount == memberLoginVM1.GetIdUser).SingleOrDefault().IdAccount.ToString() + ".jpg";
            }
            if (User.DisplayName != null)
                DisplayName = User.DisplayName;
            else
                DisplayName = "";
            //
            if (User.Position != null)
                Position = User.Position;
            else
                Position = "";
            //
            if (User.PhoneNumber != null)
                PhoneNumber = User.PhoneNumber;
            else
                PhoneNumber = "";
            //
            if (User.Email != null)
                Email = User.Email;
            else
                Email = "";
            //
            if (User.Place != null)
                Place = User.Place;
            else
                Place = "";
            //

            if (User.Birthday != null)
            {
                DateTime dateTime;
                try
                {
                     dateTime = DateTime.ParseExact(
                            s: User.Birthday,
                            format: "M/d/yyyy",
                            provider: CultureInfo.InvariantCulture);
                }catch(Exception e)
                {
                    dateTime = DateTime.Now;
                }
                Birthday = dateTime;
            }
            else
            {
                Birthday = DateTime.Now;
            }

            if (User.Sex != null)
                Sex = User.Sex;
            else
                Sex = "";
            //

            if (User.MarryStatus != null)
                MarryStatus = User.MarryStatus;
            else
                MarryStatus = "";
            //

            if (User.AimJob != null)
                AimJob = User.AimJob;
            else
                AimJob = "";
            //

            if (User.PersonalSkill != null)
                PersonalSkill = User.PersonalSkill;
            else
                PersonalSkill = "";
            //




            Avatar = fileName;
          


            if (LanguageSkill.English != null)
                English = (int)LanguageSkill.English;
            else
                English = 0;
            //
            if (LanguageSkill.French != null)
                French = (int)LanguageSkill.French;
            else
                French = 0;
            //
            if (LanguageSkill.Russian != null)
                Russian = (int)LanguageSkill.Russian;
            else
                Russian = 0;
            //
            if (LanguageSkill.Korean != null)
                Korean = (int)LanguageSkill.Korean;
            else
                Korean = 0;
            //
            if (LanguageSkill.Chinese != null)
                Chinese = (int)LanguageSkill.Chinese;
            else
                Chinese = 0;
            //
            if (LanguageSkill.Japanese != null)
                Japanese = (int)LanguageSkill.Japanese;
            else
                Japanese = 0;
            //

            if (OfficeSkill.Word != null)
                Word = (int)OfficeSkill.Word;
            else
                Word = 0;
            //
            if (OfficeSkill.Excel != null)
                Excel = (int)OfficeSkill.Excel;
            else
                Excel = 0;
            //
            if (OfficeSkill.PowerPoint != null)
                PowerPoint = (int)OfficeSkill.PowerPoint;
            else
                PowerPoint = 0;
            //
            if (OfficeSkill.Outlook != null)
                Outlook = (int)OfficeSkill.Outlook;
            else
                Outlook = 0;
            //


            if (Degree.SchoolTrain != null)
                SchoolTrainDegree = Degree.SchoolTrain;
            else
                SchoolTrainDegree = "";
            //
            if (Degree.FacultyTrain != null)
                FacultyTrainDegree = Degree.FacultyTrain;
            else
                FacultyTrainDegree = "";
            //
            if (Degree.Diploma != null)
                DiplomaDegree = Degree.Diploma;
            else
                DiplomaDegree = "";
            //
            if (Degree.MajorTrain != null)
                MajorTrainDegree = Degree.MajorTrain;
            else
                MajorTrainDegree = "";
            //
            if (Degree.Ranked != null)
                RankedDegree = Degree.Ranked;
            else
                RankedDegree = "";
            //
            if (Degree.TimeBegin != null)
            {
                DateTime dateTime;
                try
                {
                    dateTime = DateTime.ParseExact(
                       s: Degree.TimeBegin,
                       format: "M/d/yyyy",
                       provider: CultureInfo.InvariantCulture);
                }
                catch (Exception e)
                {
                    dateTime = DateTime.Now;
                }
                TimeBeginDegree = dateTime;
            }
            else
            {
                TimeBeginDegree = DateTime.Now;
            }
            if (Degree.TimeEnd != null)
            {
                DateTime dateTime;
                try
                {
                    dateTime = DateTime.ParseExact(
                       s: Degree.TimeEnd,
                       format: "M/d/yyyy",
                       provider: CultureInfo.InvariantCulture);
                }
                catch (Exception e)
                {
                    dateTime = DateTime.Now;
                }
                TimeEndDegree = dateTime;
            }
            else
            {
                TimeEndDegree = DateTime.Now;
            }
            if (Degree.MoreInfo != null)
                MoreInfoDegree = Degree.MoreInfo;
            else
                MoreInfoDegree = "";
            //

            if (Experience.Position != null)
                PositionExperience = Experience.Position;
            else
                PositionExperience = "";
            //
            if (Experience.Company != null)
                CompanyExperience = Experience.Company;
            else
                CompanyExperience = "";
            //
            if (Experience.TimeBegin != null)
            {
                DateTime dateTime;
                try
                {
                    dateTime = DateTime.ParseExact(
                      s: Experience.TimeBegin,
                      format: "M/d/yyyy",
                      provider: CultureInfo.InvariantCulture);
                }
                catch (Exception e)
                {
                    dateTime = DateTime.Now;
                }
                TimeBeginExperience = dateTime;
            }
            else
            {
                TimeBeginExperience = DateTime.Now;
            }
            if (Experience.TimeEnd != null)
            {
                DateTime dateTime;
                try
                {
                    dateTime = DateTime.ParseExact(
                        s: Experience.TimeEnd,
                        format: "M/d/yyyy",
                        provider: CultureInfo.InvariantCulture);
                }
                catch (Exception e)
                {
                    dateTime = DateTime.Now;
                }
                TimeEndExperience = dateTime;
            }
            else
            {
                TimeEndExperience = DateTime.Now;
            }
            if (Experience.MoreInfo != null)
                MoreInfoExperience = Experience.MoreInfo;
            else
                MoreInfoExperience = "";
            //


            loginWindow.Close();
        }
     

    }
}
