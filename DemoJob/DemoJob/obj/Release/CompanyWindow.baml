   M S B A M L   `   `   `  ���� B  >DemoJob, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:DemoJobDemoJob      DemoJob.CompanyWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  !localclr-namespace:DemoJob  -   $��companyInterface��  � Icon$  Picture/LOGOMAIN.ico��   	CompanyVM � DataContext# [  ���#f8f4e9 � Title$  Màn hình chính công ty��$	��900��$
��1400�� � WindowStartupLocation$ CenterScreen=� � 	Resources  �� 
TargetType  SnackBar �� Property �� Value  InfoJob  	btnDelete �� Triggers	 P� Property
 P� Value �� 
TargetType��%�  &	       &	 V     &	 y     �� " ��.���  � ��$ 0q���  � ��
 �������  � �� �#212A37�� " ��.���  � ��$ 16(��� " �� P� 	 �@J�IsMouseOver
 . . ���  � ��
 �������  �@J�Opacity$	 0.9Q���  � ��
 �  ��.���  � �� �� " ��.R��� #��z��$��0q�._��� $��Center=�$��Center=���  � ��
 �������  �@J�Opacity$	 0.9Q���  � �� �#212A37.���  � RowDefinitions �� $	��80* ��� $
��247* ��� $
��532* �.+�� $��0��.+�]� $��0����.  ���#212A37.+��� $��10 0 0 0q�$��Picture/LOGOMAIN.png��$
��Left=��� $	��100��#��[ $��Right=�$��0 0 10 0q����� *LogOutCommand+ �� NotifyOnSourceUpdated .  �� UpdateSourceTrigger$ PropertyChanged=�����  �� ElementName$ companyInterface��.���� .+�'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]   Kind$ Export=�$��30��$��30��$��15 0 0 0q��� $��Đăng xuất���� $	��100��#��[ $��Right=�$��0 0 10 0q����� $ companyInterface������ *AddJobCommand+ . $ PropertyChanged=�.���� .+�  $ PlaylistPlus=�$��40��$��40��$��20 0 0 0q��� $��Thêm việc làm���� $	��100��#��[ $��Right=�$��0 0 10 0q����� *InformationCompanyCommand+���� $ companyInterface��.���� .+��� $��Picture/account.png��$��30��$��30��$��0 0 0 0q��� $��Hồ sơ công ty���� �� $��1�����#F6EFDC$��20 10q�$��10q� �� CornerRadius$ 5��._�� 
������� � ColumnDefinitions �� $	��43* ��� $
��285* �.+�� $��0��.+��� $��10q�$��0��$��Uniform=����� *Avatar+ �� Mode$ TwoWay=�$ PropertyChanged=� . � $��1�� �� $	��27* ��� $	��58* �.+��� $��0��.+���  �� Padding$ 10q�$��30(�$
��Bold"� �� TextAlignment$
 Left=����� *DisplayName+�� $��1�� �� Orientation$ Vertical=�$��0 5 0 0q�.+��� 
���   �$��0 0 0 0q�$��	0 0 100 5q�._��� $��2��$ 
Horizontal=�.+�  $ 	MapMarker=�$��30��$��25���� -    ��Name$ CommentTextBox4��$��20(�$ 5 0 0 0q����� *	Address+�� 
���   �$��0 0 0 0q�$��	0 0 100 5q�._��� $ 
Horizontal=�.+�  $ Phone=�$��30��$��25���� -   $ CommentTextBox2��$ 5 0 0 0q�$��20(����� *Phone+  $ 	Timetable=�$��30��$��29��$��30 0 0 0q��� $ 5 0 0 0q�$��20(����� *	TimeTable+�� 
���   �$��0 0 0 0q�$��	0 0 100 5q�._��� $��1��$ 
Horizontal=�.+�  $ Email=�$��30��$��25���� -   $ CommentTextBox3��$��20(�$ 5 0 0 0q����� *Email+�� $��2��.��� $��2�� �� $��3* ��� $��1* �.+��� $��0�����#F6EFDC$��10 10 15 10q�$��10q�$ 5��._�� 
������� �� $	��10* ��� $
��160* �.+�� $��0��.+��� $��0�����#F5F5F5$��0 0 0 5q�._�� $��0��.+��� $
��Jobs��$ 	15 10 0 5q�$
 Left=�$��40(�$
��Bold"�� $��1��.+��� -    ��Name$ ListJob������ *	JobList+���� .R��� $ Vertical=����� .R��� $��1q�._��  �� $	��15* ��� $	��44* �.+��� $��0��
�������$��1q����#F5F5F5._��� $��10q�$��0��$��Uniform=����� *Link+�� $��1������ " �� P� 	 �@J�IsMouseOver
 . . ���  � �� �#F7F4EB��  �@�Cursor$
 Hand��.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ MouseLeftButtonDown��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command ��  �� RelativeSource ��  �� AncestorType" �� �� Path$! DataContext.CheckJobCommand�    CommandParameter  �� $ Id�.+��� $
��Left=�$��25 0 0 0q�$ 	10 10 0 0q�$��0��$
 Left=�$��Center=�$
��Bold"�$��20(�$��WrapWithOverflow=����#212A37$��2������ *Title+� $��2��$��	10 10 0 0q� �� $��8* ��� $��8* ��� $	��21* ��� $��0* �.+�� $��0��.+��� $��15 0 0 0q�$ 10 0 0 0q�! J� Opacity$	! 0.7Q�#��[ $��Loại hình:��$
��Left=��� " �� Padding$" 	10 0 10 0q�$��0,0,2,0q����	#FFBDBDBD._��� #��[ ���� *	TypeJob+�� $ 10 0 0 0q�$	! 0.7Q�$��
Khu vực:��#��[ �� $" 	10 0 10 0q�$��0,0,2,0q����	#FFBDBDBD._��� #��[ ���� *Place+�� $ 10 0 0 0q�$	! 0.7Q�$��	Lương: ��#��[ �� $ 10 0 0 0q�#��[ ���#F77839���� *Salary+� $��1��.+��� $��15 0 0 0q�$ 10 0 0 0q�$	! 0.7Q�#��[ $��Chuyên môn:��$
��Left=��� $" 	10 0 10 0q�$��0,0,2,0q����	#FFBDBDBD._��� #��[ ���� *Major+�� $ 10 0 0 0q�$	! 0.7Q�$ ��Tính chất công việc:��#��[ �� $
" 10 0q�$��0,0,0,0q����	#FFBDBDBD._��� #��[ ���� *NatureOfJob+�� $��2��$	! 0.6Q�$��12(�$ 15 0 0 0q�$��
10 10 80 0q�$��WrapWithOverflow=����� *Descriptions+� $��3��$��Right=�.+��� $��0 7 0 0q�$��Center=�$��Right=�$ 10 0 0 0q�$	! 0.7Q�$��Ngày đăng : ��#��[ �� $��0 7 40 0q�#��[ $��Center=����� *Timeregister+�� $��1�����#F6EFDC$��
5 10 10 10q�$��10q�$ 5��._�� 
�������.+��� .+��� ���#F5F5F5$��0 0 0 5q�._��� $ 
Horizontal=�$��68��$
��Left=�.+�  $��	15 12 0 0q�$ Information=�$��53��$��49���� $��
Thông tin��$��40(�$
��Bold"�$ 5 10 0 5q��� .+��� $��20(�$
��Wrap=�$ 
30 5 30 30q����� *
MoreInfo+