using DemoJob.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace DemoJob.ViewModel
{
    public class InfoMemberCompanyViewModel : BaseViewModel
    {
        #region
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

        private string _Birthday;
        public string Birthday { get => _Birthday; set { _Birthday = value; OnPropertyChanged(); } }

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

        private string _TimeBeginDegree;
        public string TimeBeginDegree { get => _TimeBeginDegree; set { _TimeBeginDegree = value; OnPropertyChanged(); } }

        private string _TimeEndDegree;
        public string TimeEndDegree { get => _TimeEndDegree; set { _TimeEndDegree = value; OnPropertyChanged(); } }

        private string _MoreInfoDegree;
        public string MoreInfoDegree { get => _MoreInfoDegree; set { _MoreInfoDegree = value; OnPropertyChanged(); } }

        private string _PositionExperience;
        public string PositionExperience { get => _PositionExperience; set { _PositionExperience = value; OnPropertyChanged(); } }

        private string _CompanyExperience;
        public string CompanyExperience { get => _CompanyExperience; set { _CompanyExperience = value; OnPropertyChanged(); } }

        private string _TimeBeginExperience;
        public string TimeBeginExperience { get => _TimeBeginExperience; set { _TimeBeginExperience = value; OnPropertyChanged(); } }

        private string _TimeEndExperience;
        public string TimeEndExperience { get => _TimeEndExperience; set { _TimeEndExperience = value; OnPropertyChanged(); } }

        private string _MoreInfoExperience;
        public string MoreInfoExperience { get => _MoreInfoExperience; set { _MoreInfoExperience = value; OnPropertyChanged(); } }

        private string _Avatar;
        public string Avatar { get => _Avatar; set { _Avatar = value; OnPropertyChanged(); } }


        private string fileName;

        private ObservableCollection<Member> _MemberList;
        public ObservableCollection<Member> MemberList { get => _MemberList; set { _MemberList = value; OnPropertyChanged(); } }

        private ObservableCollection<Register> RegisterList;
        public ObservableCollection<Register> _RegisterList { get => _RegisterList; set { _RegisterList = value; OnPropertyChanged(); } }
        #endregion
        public ICommand ExitCommand { get; set; }
        public InfoMemberCompanyViewModel()
        {
            ExitCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                p.Close();
            });
            

        }
        public void Update()
        {
            MemberList = new ObservableCollection<Member>(DataProvider.Ins.DB.Members);
            RegisterList = new ObservableCollection<Register>(DataProvider.Ins.DB.Registers);
            CompanyWindow CPWD = new CompanyWindow();
            InformationJobCompanyWindow infoJobCompWindow = new InformationJobCompanyWindow();
            var infoJobComp = infoJobCompWindow.DataContext as InfoJobCompanyViewModel;
            var cp = CPWD.DataContext as CompanyViewModel;
            int IdJob = cp.GetIdJob;
            int tempID =(int) DataProvider.Ins.DB.Members.Where(x => x.Id == infoJobComp.GetIdAccount).SingleOrDefault().IdAccount;
            foreach (var item in RegisterList)
            {
                if (IdJob == item.IdJob)
                {
                    foreach (var item1 in MemberList)
                    {
                        if (item1.IdAccount == tempID)
                        {
                            var User = DataProvider.Ins.DB.Members.Where(x => x.IdAccount == item1.IdAccount).SingleOrDefault();
                            var LanguageSkill = DataProvider.Ins.DB.LanguageSkills.Where(x => x.Id == User.IdLanguageSkill).SingleOrDefault();
                            var OfficeSkill = DataProvider.Ins.DB.OfficeSkills.Where(x => x.Id == User.IdOfficeSkill).SingleOrDefault();
                            var Degree = DataProvider.Ins.DB.Degrees.Where(x => x.Id == User.IdDegree).SingleOrDefault();
                            var Experience = DataProvider.Ins.DB.Experiences.Where(x => x.Id == User.IdExperience).SingleOrDefault();


                            if (User.DisplayName != null)
                                DisplayName = User.DisplayName;
                            if (User.Position != null)
                                Position = User.Position;
                            if (User.PhoneNumber != null)
                                PhoneNumber = User.PhoneNumber;
                            if (User.Email != null)
                                Email = User.Email;
                            if (User.Place != null)
                                Place = User.Place;


                            if (User.Birthday != null)
                            {
                                var dateTime = DateTime.ParseExact(
                                        s: User.Birthday,
                                        format: "M/d/yyyy",
                                        provider: CultureInfo.InvariantCulture);
                                Birthday = dateTime.ToShortDateString();
                            }

                            if (User.Sex != null)
                                Sex = User.Sex;
                            if (User.MarryStatus != null)
                                MarryStatus = User.MarryStatus;
                            if (User.AimJob != null)
                                AimJob = User.AimJob;
                            if (User.PersonalSkill != null)
                                PersonalSkill = User.PersonalSkill;

                            string workingDirectory = Environment.CurrentDirectory;

                            string projectDirectory = Directory.GetParent(workingDirectory).Parent.FullName; //LogoCompany
                            string path = projectDirectory + @"\AvatarMember\";

                            fileName = path + "Avatar.png";

                            if (File.Exists(path + DataProvider.Ins.DB.Members.Where(x => x.IdAccount == item1.IdAccount).SingleOrDefault().IdAccount.ToString() + ".jpg"))
                            {
                                fileName = path + DataProvider.Ins.DB.Members.Where(x => x.IdAccount == item1.IdAccount).SingleOrDefault().IdAccount.ToString() + ".jpg";
                            }

                            Avatar = fileName;


                            if (LanguageSkill.English != null)
                                English = (int)LanguageSkill.English;
                            if (LanguageSkill.French != null)
                                French = (int)LanguageSkill.French;
                            if (LanguageSkill.Russian != null)
                                Russian = (int)LanguageSkill.Russian;
                            if (LanguageSkill.Korean != null)
                                Korean = (int)LanguageSkill.Korean;
                            if (LanguageSkill.Chinese != null)
                                Chinese = (int)LanguageSkill.Chinese;
                            if (LanguageSkill.Japanese != null)
                                Japanese = (int)LanguageSkill.Japanese;


                            if (OfficeSkill.Word != null)
                                Word = (int)OfficeSkill.Word;
                            if (OfficeSkill.Excel != null)
                                Excel = (int)OfficeSkill.Excel;
                            if (OfficeSkill.PowerPoint != null)
                                PowerPoint = (int)OfficeSkill.PowerPoint;
                            if (OfficeSkill.Outlook != null)
                                Outlook = (int)OfficeSkill.Outlook;


                            if (Degree.SchoolTrain != null)
                                SchoolTrainDegree = Degree.SchoolTrain;
                            if (Degree.FacultyTrain != null)
                                FacultyTrainDegree = Degree.FacultyTrain;
                            if (Degree.Diploma != null)
                                DiplomaDegree = Degree.Diploma;
                            if (Degree.MajorTrain != null)
                                MajorTrainDegree = Degree.MajorTrain;
                            if (Degree.Ranked != null)
                                RankedDegree = Degree.Ranked;
                            if (Degree.TimeBegin != null)
                            {
                                var dateTime = DateTime.ParseExact(
                                       s: Degree.TimeBegin,
                                       format: "M/d/yyyy",
                                       provider: CultureInfo.InvariantCulture);
                                TimeBeginDegree = dateTime.ToShortDateString();
                            }
                            if (Degree.TimeEnd != null)
                            {
                                var dateTime = DateTime.ParseExact(
                                      s: Degree.TimeEnd,
                                      format: "M/d/yyyy",
                                      provider: CultureInfo.InvariantCulture);
                                TimeEndDegree = dateTime.ToShortDateString();
                            }
                            if (Degree.MoreInfo != null)
                                MoreInfoDegree = Degree.MoreInfo;

                            if (Experience.Position != null)
                                PositionExperience = Experience.Position;
                            if (Experience.Company != null)
                                CompanyExperience = Experience.Company;
                            if (Experience.TimeBegin != null)
                            {
                                var dateTime = DateTime.ParseExact(
                                     s: Experience.TimeBegin,
                                     format: "M/d/yyyy",
                                     provider: CultureInfo.InvariantCulture);
                                TimeBeginExperience = dateTime.ToShortDateString();
                            }
                            if (Experience.TimeEnd != null)
                            {
                                var dateTime = DateTime.ParseExact(
                                     s: Experience.TimeEnd,
                                     format: "M/d/yyyy",
                                     provider: CultureInfo.InvariantCulture);
                                TimeEndExperience = dateTime.ToShortDateString();
                            }
                            if (Experience.MoreInfo != null)
                                MoreInfoExperience = Experience.MoreInfo;

                        }
                    }
                }
            }
            infoJobCompWindow.Close();
            CPWD.Close();
        }
    }
}