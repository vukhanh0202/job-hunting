   M S B A M L   `   `   `  ���� B  >DemoJob, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:DemoJobDemoJob  ,    &DemoJob.InformationMemberCompanyWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  !localclr-namespace:DemoJob  U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -   $��infoMemberCompanyVM��   InfoMemberCompanyVM  � DataContext#  [  $��Arial)� � Icon$ Picture/LOGOMAIN.ico�����#f8f4e9 � Title$ Thông tin ứng viên��$	��950��$	��850�� � WindowStartupLocation$ CenterScreen=� � 	Resources  �� 
TargetType �� Property �� Value��%@   '9�       '�� 
     �� " 9��� " ��.���  � ��$ 5q�.���� .���  � RowDefinitions �� $
��177* ��� $
��797* �.+�� $��0��$��0 10 0 0q�	 � ColumnDefinitions	 �� $
��169* ��� $
��623* �.+�� $��0��.+��� $��3q�
���   �$��1q�
 � ToolTip$%
 Nhấn để thay đổi avatar��._��� $��0������ *Avatar+ �� UpdateSourceTrigger$ PropertyChanged=� �� NotifyOnSourceUpdated .  �� Mode$ TwoWay=�� $��1��
������� �� $	��73* ��� $
��117* �.+�� $��0�� �� �� .+��� $��0�� �� Orientation$ 
Horizontal=�.+�'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]   Kind$ Account=�$��34��$��47���� -    ��Name$ CommentTextBox��$
��Wrap=�$	��577��$��20(����� *DisplayName+$ PropertyChanged=� . �� $��1��$ 
Horizontal=�.+�  $ 	Briefcase=�$��35��$��47���� -   $ CommentTextBox1��$
��Wrap=�$��20(�$	��575������ *
Position+$ PropertyChanged=� . � $��1��	 �� $
��363* ��� $
��260* �.+�� $��0�� �� �� �� .+��� $��0��$ 
Horizontal=�.+�  $ Phone=�$��37��$��46���� -   $ CommentTextBox2��$
��Wrap=�$��20(�$	��300������ *PhoneNumber+$ PropertyChanged=� . �� $��1��$ 
Horizontal=�.+�  $ Email=�$��37��$��46���� -   $ CommentTextBox3��$
��Wrap=�$��20(�$	��300������ *Email+$ PropertyChanged=� . �� $��2��$ 
Horizontal=�.+�  $ 	MapMarker=�$��37��$��46���� -   $ CommentTextBox4��$
��Wrap=�$��20(�$	��300������ *Place+$ PropertyChanged=� . � $��1�� �� �� �� .+��� $��0��$ 
Horizontal=�.+�  $
 Cake=�$��37��$��46���� $
��Wrap=�$��20(�$	��300������ *
Birthday+$ PropertyChanged=� . �� $��1��$ 
Horizontal=�.+�  $ GenderMaleFemale=�$��37��$��46���� -   $ CommentTextBox5��$
��Wrap=�$��20(�$	��200������ *Sex+$ PropertyChanged=� . �� $��2��$ 
Horizontal=�.+�  $ 	HomeHeart=�$��37��$��46���� -   $ CommentTextBox6��$
��Wrap=�$��20(�$	��200������ *MarryStatus+$ PropertyChanged=� . �� $��1��$ Vertical=�$��0,0,0,10q�.+��� $��1q����#A4A4A4 �� CornerRadius$ 5��$��	15 5 15 5q�._��� 
�������.+��� $��0��$ 
Horizontal=�.+�  $ Heart=�$��39��$��87���� $!��Mục tiêu nghề nghiệp��$
��Bold"�$��25(�$	��267���� -	   $ CommentTextBox7��$��17(�$
��Wrap=�$��	30,0,46,0q����� *AimJob+$ PropertyChanged=� . �� $��1q����#A4A4A4$ 5��$��	15 5 15 5q�._��� 
�������.+��� $��0��$ 
Horizontal=�.+�  $ AccountStar=�$��39��$��87���� $��Kỹ năng bản thân��$
��Bold"�$��25(�$	��267���� -
   $ CommentTextBox9��$��17(�$��	30,0,46,0q�$
��Wrap=����� *PersonalSkill+$ PropertyChanged=� . �� $��1q����#A4A4A4$ 5��$��	15 5 15 5q�._��� 
�������.+��� $��0��$ 
Horizontal=�.+�  $ BookOpenPageVariant=�$��39��$��87���� $ ��Trình độ ngoại ngữ��$
��Bold"�$��25(�$	��267���� $ 
Horizontal=�$��	120,0 0,0q�$��39��.+��� $��Tiếng Anh��$��20(�$	��164��(  "MaterialDesignThemes.Wpf.RatingBar  -     Name$ BasicRatingBar�����	#FFF77839   
IsReadOnly .    Value �� *	English+$ PropertyChanged=� . $ TwoWay=��� $ 
Horizontal=�$��	120,0,0,0q�$��39��.+��� $��Tiếng Pháp��$��20(�$	��164��  -   $ BasicRatingBar1�����	#FFF77839 .  �� *French+$ PropertyChanged=� . $ TwoWay=��� $ 
Horizontal=�$��	120,0,0,0q�$��39��.+��� $��Tiếng Nga��$��20(�$	��164��  -   $ BasicRatingBar2�����	#FFF77839 .  �� *	Russian+$ PropertyChanged=� . $ TwoWay=��� $ 
Horizontal=�$��	120,0,0,0q�$��39��.+��� $��Tiếng Hàn��$��20(�$	��164��  -   $ BasicRatingBar3�����	#FFF77839 .  �� *Korean+$ PropertyChanged=� . $ TwoWay=��� $ 
Horizontal=�$��	120,0,0,0q�$��39��.+��� $��Tiếng Trung��$��20(�$	��164��  -   $ BasicRatingBar4�����	#FFF77839 .  �� *	Chinese+$ PropertyChanged=� . $ TwoWay=��� $ 
Horizontal=�$��	120,0,0,0q�$��39��.+��� $��Tiếng Nhật��$��20(�$	��164��  -   $ BasicRatingBar5�����	#FFF77839 . $	��127�� �� *
Japanese+$ PropertyChanged=� . $ TwoWay=��� $��1q����#A4A4A4$ 5��$��	15 5 15 5q�._��� 
�������.+��� $��0��$ 
Horizontal=�.+�  $ Office=�$��39��$��87���� $��Trình độ văn phòng��$
��Bold"�$��25(�$	��267���� $ 
Horizontal=�$��	120,0,0,0q�$��39��.+��� $��Ms Word��$��20(�$	��164��  -   $ BasicRatingBar6�����	#FFF77839 .  �� *Word+$ PropertyChanged=� . $ TwoWay=��� $ 
Horizontal=�$��	120,0,0,0q�$��39��.+��� $��Ms Excel��$��20(�$	��164��  -   $ BasicRatingBar7�����	#FFF77839 .  �� *Excel+$ PropertyChanged=� . $ TwoWay=��� $ 
Horizontal=�$��	120,0,0,0q�$��39��.+��� $��Ms Power Point��$��20(�$	��164��  -   $ BasicRatingBar8�����	#FFF77839 .  �� *
PowerPoint+$ PropertyChanged=� . $ TwoWay=��� $ 
Horizontal=�$��	120,0,0,0q�$��39��.+��� $��
Ms Outlook��$��20(�$	��164��  -   $ BasicRatingBar9�����	#FFF77839 .  �� *	Outlook+$ PropertyChanged=� . $ TwoWay=��� $��1q����#A4A4A4$ 5��$��	15 5 15 5q�._��� 
�������.+��� $��0��$ 
Horizontal=�.+�  $ Bookmark=�$��39��$��87���� $ ��Học Vấn / Bằng cấp��$
��Bold"�$��25(�$	��267���� $ 
Horizontal=�.+��� $ Vertical=�$��80,0,0,0q�$	��394��.+��� $5��/‣ Trường, cơ sở, trung tâm đào tạo��$��17(�$
��Bold"��� -   $ CommentTextBox8��$��17(�$��	30,0,46,0q����� *SchoolTrainDegree+$ PropertyChanged=� . �� $ Vertical=�$	��292��.+��� $��‣ Khoa đào tạo��$��17(�$
��Bold"��� -   $ CommentTextBox10��$��17(�$
��Wrap=�$��	30,0,10,0q����� *FacultyTrainDegree+$ PropertyChanged=� . �� $ Vertical=�$��80,0,0,0q�.+��� $)��#‣ Tên bằng cấp chứng chỉ��$��17(�$
��Bold"��� -   $ CommentTextBox11��$��17(�$
��Wrap=�$��	30,0,46,0q����� *DiplomaDegree+$ PropertyChanged=� . �� $ 
Horizontal=�.+��� $ Vertical=�$��80,0,0,0q�$	��394��.+��� $$��‣ Chuyên ngành đào tạo��$��17(�$
��Bold"��� -   $ CommentTextBox12��$��17(�$
��Wrap=�$��	30,0,46,0q����� *MajorTrainDegree+$ PropertyChanged=� . �� $ Vertical=�$	��292��.+��� $��‣ Xếp loại��$��17(�$
��Bold"��� -   $ CommentTextBox13��$��17(�$
��Wrap=�$��	30,0,10,0q����� *RankedDegree+$ PropertyChanged=� . �� $ 
Horizontal=�.+��� $ Vertical=�$��80,0,0,0q�$	��394��.+��� $/��)‣ Thời gian bắt đầu nhập học��$��17(�$
��Bold"��� $��13(�$
��Wrap=�$��
28,0,157,0q����� *TimeBeginDegree+ �� StringFormat$ d/M/yyyy���� $ Vertical=�$	��292��.+��� $!��‣ Thời gian kết thúc��$��17(�$
��Bold"��� $��13(�$
��Wrap=�$��	28,0,70,0q����� *TimeEndDegree+$ d/M/yyyy���� $ Vertical=�$��80,0,0,0q�.+��� $��‣ Thông tin bổ sung��$��17(�$
��Bold"��� -   $ CommentTextBox16��$��17(�$��	30,0,46,0q�$
��Wrap=����� *MoreInfoDegree+$ PropertyChanged=� . �� $��1q����#A4A4A4$ 5��$��	15 5 15 5q�._��� 
�������.+��� $��0��$ 
Horizontal=�.+�  $ Network=�$��39��$��87���� $9��3Kinh nghiệm làm việc (chưa có kinh nghiệm)��$
��Bold"�$��25(�$	��527���� $ 
Horizontal=�.+��� $ Vertical=�$��80,0,0,0q�$	��394��.+��� $!��‣ Chức danh / vị trí��$��17(�$
��Bold"��� -   $ CommentTextBox20��$��17(�$
��Wrap=�$��	30,0,46,0q����� *PositionExperience+$ PropertyChanged=� . �� $ Vertical=�$	��292��.+��� $��‣ Công ty��$��17(�$
��Bold"��� -   $ CommentTextBox21��$��17(�$
��Wrap=�$��	30,0,10,0q����� *CompanyExperience+$ PropertyChanged=� . �� $ 
Horizontal=�.+��� $ Vertical=�$��80,0,0,0q�$	��394��.+��� $"��‣ Thời gian bắt đầu��$��17(�$
��Bold"��� $��17(�$
��Wrap=�$��
28,0,157,0q����� *TimeBeginExperience+$ d/M/yyyy���� $ Vertical=�$	��292��.+��� $!��‣ Thời gian kết thúc��$��17(�$
��Bold"��� $��17(�$
��Wrap=�$��	28,0,70,0q����� *TimeEndExperience+$ d/M/yyyy���� $ Vertical=�$��80,0,0,0q�.+��� $��‣ Mô tả công việc��$��17(�$
��Bold"��� -   $ CommentTextBox22��$��17(�$
��Wrap=�$��	30,0,46,0q����� *MoreInfoExperience+$ PropertyChanged=� . � $��58��.+��� ���#F77839$��45��$	��200��$��25(�$��Thoát������ *ExitCommand+����  �� ElementName$ infoMemberCompanyVM��