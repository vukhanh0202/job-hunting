   M S B A M L   `   `   `  ���� B  >DemoJob, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:DemoJobDemoJob  %    DemoJob.InformationMemberWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  !localclr-namespace:DemoJob  U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -   $��informationMemberWindow��   InforMemberVM  � DataContext#  [   � Icon$ Picture/LOGOMAIN.ico��$��Arial)����#f8f4e9 � Title$ Hồ sơ cá nhân��$	��950��$	��850�� � WindowStartupLocation$ CenterScreen=� � 	Resources  �� 
TargetType �� Property �� Value  btnChangePass �� Triggers	 P� Property
 P� Value �� 
TargetType��%�  '9�       '�� 
     &	 ,     �� " 9��� " ��.���  � ��$ 5q��� " �� P� 	 �@J�IsMouseOver
 . . ���  � �� �#FE642E��  � �� �� .R��� $��	Underline{�#��z����  � ��
 ��  �.���  � �� �� " ��.R��� #��z��$��0q�._��� $��Center=�$��Center=���  � ��
 �������  � ��$ Center=���  � ��$ 18(���  � ��$
 Bold"���  �@J�Opacity$	 0.7Q���  � �� �#212A37.���� .���  � RowDefinitions �� $
��177* ��� $
��797* �.+�� $��0��$��0 10 0 0q� � ColumnDefinitions �� $
��169* ��� $
��623* �.+�� $��0��.+��� $��3q�
���   �$��1q� � ToolTip$% Nhấn để thay đổi avatar��._��� $��0������ *Avatar+ �� UpdateSourceTrigger$ PropertyChanged=� �� NotifyOnSourceUpdated .  �� Mode$ TwoWay=����� " ��.���  �@J�Opacity$ 1Q� P� 	 �@J�IsMouseOver
 . . ���  �@J�Opacity$	 0.2Q���  �@�ToolTip$% Nhấn để thay đổi avatar��.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ MouseLeftButtonDown��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *ChangeAvatarCommand+� $��1��
������� �� $	��73* ��� $
��117* �.+�� $��0�� �� �� .+��� $��0�� �� Orientation$ 
Horizontal=�.+�'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]   Kind$ Account=�$��34��$��47���� -    ��Name$ CommentTextBox��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Họ và tên��$	��450��$��20(����� *DisplayName+$ PropertyChanged=� . �� #��[ $
��Left=�$��Đổi mật khẩu��$��25 5 0 0q����� *ChangePasswordCommand+�� $��1��$ 
Horizontal=�.+�  $ 	Briefcase=�$��35��$��47���� -   $ CommentTextBox1��$+ %Nhập vị trí muốn ứng tuyển��$��20(�$	��575������ *
Position+$ PropertyChanged=� . � $��1�� �� $
��363* ��� $
��260* �.+�� $��0�� �� �� �� .+��� $��0��$ 
Horizontal=�.+�  $ Phone=�$��37��$��46���� -   $ CommentTextBox2��$ Số điện thoại��$��20(�$	��300������ *PhoneNumber+$ PropertyChanged=� . �� $��1��$ 
Horizontal=�.+�  $ Email=�$��37��$��46���� -   $ CommentTextBox3��$ Email��$��20(�$	��300������ *Email+$ PropertyChanged=� . �� $��2��$ 
Horizontal=�.+�  $ 	MapMarker=�$��37��$��46���� -   $ CommentTextBox4��$ Địa chỉ��$��20(�$	��300������ *Place+$ PropertyChanged=� . � $��1�� �� �� �� .+��� $��0��$ 
Horizontal=�.+�  $
 Cake=�$��37��$��46��(  "System.Windows.Controls.DatePicker  $	��200��$ BirthDay��$��13(� ( $MaterialDesignFloatingHintDatePicker#��[    SelectedDate �� *
Birthday+�� $��1��$ 
Horizontal=�.+�  $ GenderMaleFemale=�$��37��$��46���� -   $ CommentTextBox5��$ Giới tính��$��20(�$	��200������ *Sex+$ PropertyChanged=� . �� $��2��$ 
Horizontal=�.+�  $ 	HomeHeart=�$��37��$��46���� -   $ CommentTextBox6��$ Tình trạng hôn nhân��$��20(�$	��200������ *MarryStatus+$ PropertyChanged=� . �� $��1��$ Vertical=�$��0,0,0,10q�.+��� $��1q����#A4A4A4 �� CornerRadius$ 5��$��	15 5 15 5q�._��� 
�������.+��� $��0��$ 
Horizontal=�.+�  $ Heart=�$��39��$��87���� $!��Mục tiêu nghề nghiệp��$
��Bold"�$��25(�$	��267���� -	   $ CommentTextBox7��$��17(�$� ~Mô tả, giới thiệu về định hướng công việc của bản thân trong tương lai ngắn hạn hoặc dài hạn��$��	30,0,46,0q����� *AimJob+$ PropertyChanged=� . 9� $��20(�$5��/ Xem thêm mục tiêu nghề nghiệp gợi ý��.���� $ Vertical=�.+��� $ 
Horizontal=�$��40,0,0,0q�.+��� -
    ��Name$ 	checkbox1������ *CheckedBox1Command+����  �� ElementName$ 	checkbox1���� $A��;Mong muốn tìm được chỗ làm ổn định lâu dài��$��20(��� $ 
Horizontal=�$��40,0,0,0q�.+��� -   $ 	checkbox2������ *CheckedBox2Command+���� $ 	checkbox2���� $L��FMong muốn tìm được chỗ làm có cơ hội thăng tiến tốt��$��20(��� $ 
Horizontal=�$��40,0,0,0q�.+��� -   $ 	checkbox3������ *CheckedBox3Command+���� $ 	checkbox3���� $B��<Mong muốn tìm được chỗ làm có mức lương tốt��$��20(��� $ 
Horizontal=�$��40,0,0,0q�.+��� -   $ 	checkbox4������ *CheckedBox4Command+���� $ 	checkbox4���� $R��LMong muốn tìm được nơi có cơ hội cống hiến bản thân tốt��$��20(��� $��1q����#A4A4A4$ 5��$��	15 5 15 5q�._��� 
�������.+��� $��0��$ 
Horizontal=�.+�  $ AccountStar=�$��39��$��87���� $��Kỹ năng bản thân��$
��Bold"�$��25(�$	��267���� -   $ CommentTextBox9��$��17(�$J DNêu rõ các kỹ năng chuyên môn trong công việc của bạn��$��	30,0,46,0q����� *PersonalSkill+$ PropertyChanged=� . 9� $��20(�$5��/ Xem thêm mục tiêu nghề nghiệp gợi ý��.���� $ Vertical=�.+��� $ 
Horizontal=�$��40,0,0,0q�.+��� -   $ 	checkbox5������ *CheckedBox5Command+���� $ 	checkbox5���� $��Kỹ năng tổ chức��$��20(��� $ 
Horizontal=�$��40,0,0,0q�.+��� -   $ 	checkbox6������ *CheckedBox6Command+���� $ 	checkbox6���� $��Kỹ năng giao tiếp��$��20(��� $ 
Horizontal=�$��40,0,0,0q�.+��� -   $ 	checkbox7������ *CheckedBox7Command+���� $ 	checkbox7���� $"��Kỹ năng làm việc nhóm��$��20(��� $ 
Horizontal=�$��40,0,0,0q�.+��� -   $ 	checkbox8������ *CheckedBox8Command+���� $ 	checkbox8���� $ ��Giải quyết vấn đề��$��20(��� $ 
Horizontal=�$��40,0,0,0q�.+��� -   $ 	checkbox9������ *CheckedBox9Command+���� $ 	checkbox9���� $ ��Kỹ năng thuyết trình��$��20(��� $ 
Horizontal=�$��40,0,0,0q�.+��� -   $ 
checkbox10������ *CheckedBox10Command+���� $ 
checkbox10���� $��Tư duy sáng tạo��$��20(��� $ 
Horizontal=�$��40,0,0,0q�.+��� -   $ 
checkbox11������ *CheckedBox11Command+���� $ 
checkbox11���� $��Lập kế hoạch��$��20(��� $��1q����#A4A4A4$ 5��$��	15 5 15 5q�._��� 
�������.+��� $��0��$ 
Horizontal=�.+�  $ BookOpenPageVariant=�$��39��$��87���� $ ��Trình độ ngoại ngữ��$
��Bold"�$��25(�$	��267���� $ 
Horizontal=�$��	120,0 0,0q�$��39��.+��� $��Tiếng Anh��$��20(�$	��164��(	  "MaterialDesignThemes.Wpf.RatingBar	  -    	 Name$ BasicRatingBar�����	#FFF77839 	  Value �� *	English+$ PropertyChanged=� . $ TwoWay=��� $ 
Horizontal=�$��	120,0,0,0q�$��39��.+��� $��Tiếng Pháp��$��20(�$	��164��	  -   $ BasicRatingBar1�����	#FFF77839 �� *French+$ PropertyChanged=� . $ TwoWay=��� $ 
Horizontal=�$��	120,0,0,0q�$��39��.+��� $��Tiếng Nga��$��20(�$	��164��	  -   $ BasicRatingBar2�����	#FFF77839 �� *	Russian+$ PropertyChanged=� . $ TwoWay=��� $ 
Horizontal=�$��	120,0,0,0q�$��39��.+��� $��Tiếng Hàn��$��20(�$	��164��	  -   $ BasicRatingBar3�����	#FFF77839 �� *Korean+$ PropertyChanged=� . $ TwoWay=��� $ 
Horizontal=�$��	120,0,0,0q�$��39��.+��� $��Tiếng Trung��$��20(�$	��164��	  -   $ BasicRatingBar4�����	#FFF77839 �� *	Chinese+$ PropertyChanged=� . $ TwoWay=��� $ 
Horizontal=�$��	120,0,0,0q�$��39��.+��� $��Tiếng Nhật��$��20(�$	��164��	  -   $ BasicRatingBar5�����	#FFF77839$	��127�� �� *
Japanese+$ PropertyChanged=� . $ TwoWay=��� $��1q����#A4A4A4$ 5��$��	15 5 15 5q�._��� 
�������.+��� $��0��$ 
Horizontal=�.+�  $ Office=�$��39��$��87���� $��Trình độ văn phòng��$
��Bold"�$��25(�$	��267���� $ 
Horizontal=�$��	120,0,0,0q�$��39��.+��� $��Ms Word��$��20(�$	��164��	  -   $ BasicRatingBar6�����	#FFF77839 �� *Word+$ PropertyChanged=� . $ TwoWay=��� $ 
Horizontal=�$��	120,0,0,0q�$��39��.+��� $��Ms Excel��$��20(�$	��164��	  -   $ BasicRatingBar7�����	#FFF77839 �� *Excel+$ PropertyChanged=� . $ TwoWay=��� $ 
Horizontal=�$��	120,0,0,0q�$��39��.+��� $��Ms Power Point��$��20(�$	��164��	  -   $ BasicRatingBar8�����	#FFF77839 �� *
PowerPoint+$ PropertyChanged=� . $ TwoWay=��� $ 
Horizontal=�$��	120,0,0,0q�$��39��.+��� $��
Ms Outlook��$��20(�$	��164��	  -   $ BasicRatingBar9�����	#FFF77839 �� *	Outlook+$ PropertyChanged=� . $ TwoWay=��� $��1q����#A4A4A4$ 5��$��	15 5 15 5q�._��� 
�������.+��� $��0��$ 
Horizontal=�.+�  $ Bookmark=�$��39��$��87���� $ ��Học Vấn / Bằng cấp��$
��Bold"�$��25(�$	��267���� $ 
Horizontal=�.+��� $ Vertical=�$��80,0,0,0q�$	��394��.+��� $5��/‣ Trường, cơ sở, trung tâm đào tạo��$��17(�$
��Bold"��� -    $ CommentTextBox8��$��17(�$ Nhập tên trường��$��	30,0,46,0q����� *SchoolTrainDegree+$ PropertyChanged=� . �� $ Vertical=�$	��292��.+��� $��‣ Khoa đào tạo��$��17(�$
��Bold"��� -!   $ CommentTextBox10��$��17(�$  Vui lòng nhập tên khoa��$��	30,0,10,0q����� *FacultyTrainDegree+$ PropertyChanged=� . �� $ Vertical=�$��80,0,0,0q�.+��� $)��#‣ Tên bằng cấp chứng chỉ��$��17(�$
��Bold"��� -"   $ CommentTextBox11��$��17(�$W QVD: Cử nhân luật, Kỹ sư CNTT, Chứng chỉ nghề điện dân dụng...��$��	30,0,46,0q����� *DiplomaDegree+$ PropertyChanged=� . �� $ 
Horizontal=�.+��� $ Vertical=�$��80,0,0,0q�$	��394��.+��� $$��‣ Chuyên ngành đào tạo��$��17(�$
��Bold"��� -#   $ CommentTextBox12��$��17(�$- 'VD: Công nghệ thông tin, Kế toán��$��	30,0,46,0q����� *MajorTrainDegree+$ PropertyChanged=� . �� $ Vertical=�$	��292��.+��� $��‣ Xếp loại��$��17(�$
��Bold"��� -$   $ CommentTextBox13��$��17(�$ VD: Giỏi, Khá, ...��$��	30,0,10,0q����� *RankedDegree+$ PropertyChanged=� . �� $ 
Horizontal=�.+��� $ Vertical=�$��80,0,0,0q�$	��394��.+��� $/��)‣ Thời gian bắt đầu nhập học��$��17(�$
��Bold"�  $��13(�#��[ $��
28,0,157,0q� �� *TimeBeginDegree+  �� StringFormat$  d/M/yyyy���� $ Vertical=�$	��292��.+��� $!��‣ Thời gian kết thúc��$��17(�$
��Bold"�  $��13(�#��[ $��	28,0,70,0q� �� *TimeEndDegree+$  d/M/yyyy���� $ Vertical=�$��80,0,0,0q�.+��� $��‣ Thông tin bổ sung��$��17(�$
��Bold"��� -%   $ CommentTextBox16��$��17(�$` ZThông tin chi tiết quá trình học tập, hoạt động ngoại khóa... (nếu có)��$��	30,0,46,0q����� *MoreInfoDegree+$ PropertyChanged=� . �� $��1q����#A4A4A4$ 5��$��	15 5 15 5q�._��� 
�������.+��� $��0��$ 
Horizontal=�.+�  $ Network=�$��39��$��87���� $9��3Kinh nghiệm làm việc (chưa có kinh nghiệm)��$
��Bold"�$��25(�$	��527���� $ 
Horizontal=�.+��� $ Vertical=�$��80,0,0,0q�$	��394��.+��� $!��‣ Chức danh / vị trí��$��17(�$
��Bold"��� -&   $ CommentTextBox20��$��17(�$. (Vui lòng nhập chức danh / vị trí��$��	30,0,46,0q����� *PositionExperience+$ PropertyChanged=� . �� $ Vertical=�$	��292��.+��� $��‣ Công ty��$��17(�$
��Bold"��� -'   $ CommentTextBox21��$��17(�$$ Vui lòng nhập tên công ty��$��	30,0,10,0q����� *CompanyExperience+$ PropertyChanged=� . �� $ 
Horizontal=�.+��� $ Vertical=�$��80,0,0,0q�$	��394��.+��� $"��‣ Thời gian bắt đầu��$��17(�$
��Bold"�  $��13(�#��[ $��
28,0,157,0q� �� *TimeBeginExperience+�� $ Vertical=�$	��292��.+��� $!��‣ Thời gian kết thúc��$��17(�$
��Bold"�  $��13(�#��[ $��	28,0,70,0q� �� *TimeEndExperience+�� $ Vertical=�$��80,0,0,0q�.+��� $��‣ Mô tả công việc��$��17(�$
��Bold"��� -(   $ CommentTextBox22��$��17(�$j dMô tả nhiệm vụ, trách nhiệm trong khi làm việc. Các kỹ năng học hỏi được...��$��	30,0,46,0q����� *MoreInfoExperience+$ PropertyChanged=� . � $��58�� �� �� .+�� $��0��.+��� $��45��$	��200�����#F77839$��25(�$��Xác nhận������ *ConfirmCommand+���� $ informationMemberWindow��� $��1��.+��� ���#F77839$��45��$	��200��$��25(�$��Thoát������ *ExitCommand+���� $ informationMemberWindow��