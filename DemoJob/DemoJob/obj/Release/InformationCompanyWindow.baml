   M S B A M L   `   `   `  ���� B  >DemoJob, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:DemoJobDemoJob  &     DemoJob.InformationCompanyWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     'localclr-namespace:DemoJob     U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  -   $��InforCompany��   InforCompanyVM  � DataContext#  [  ���#f8f4e9 � Icon$ Picture/LOGOMAIN.ico�� � Title$ Thông tin công ty��$	��900��$
��1400�� � WindowStartupLocation$ CenterScreen=� � 	Resources  �� 
TargetType  btnChangePass �� Triggers P� Property P� Value	 �� Property
 �� Value �� 
TargetType��%�  &	       �� " �� P�  �@J�IsMouseOver . . ��� 	 � ��
 �#FE642E�� 	 � ��
 �� .R��� $��	Underline{�#��z���� 	 � ��

 ��  �.��� 	 � ��
 �� " ��.R��� #��z��$��0q�._��� $��Center=�$��Center=��� 	 � ��

 ������� 	 � ��$
 Center=��� 	 � ��$
 18(��� 	 � ��$

 Bold"��� 	 �@J�Opacity$	
 0.7Q��� 	 � ��
 �#212A37.���  � RowDefinitions �� $
��295* ��� $
��456* ��� $	��64* �.+�� $��0�� � ColumnDefinitions �� $	��95* ��� $
��253* �.+��� 
�������$��0��$��10 10 10 10q����#F6EFDC$��50 30 80 30 q� �� CornerRadius$ 5��._��� $��0������ *Avatar+ �� UpdateSourceTrigger$ PropertyChanged=� �� NotifyOnSourceUpdated .  �� Mode$ TwoWay=����� " ��.��� 	 �@J�Opacity$
 1Q� P�  �@J�IsMouseOver . . ��� 	 �@J�Opacity$	
 0.2Q��� 	 �@�ToolTip$%
 Nhấn để thay đổi avatar��.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ MouseLeftButtonDown��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *ChangeAvatarCommand+�� 
�������$��1��$��10 10 10 10q����#F6EFDC$��
0 30 50 30q�$ 5��._��  �� �� �� �� .+�� $��0�� �� $��3* ��� $��1* �.+���  �� Orientation$ 
Horizontal=�$��0��.+�'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]   Kind$ 	Briefcase=�$��57��$��70���� -    ��Name$ CommentTextBox1��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Nhập tên công ty��$��25(�$��Center=�$��Center=�$��0q����� *DisplayName+$ PropertyChanged=� . .���� $��1��#��[ $
��Left=�$��Đổi mật khẩu��$��25 5 0 0q����� *ChangePasswordCommand+� $��1��.+��� $ 
Horizontal=�.+�  $ 	MapMarker=�$��57��$��70���� -   $ CommentTextBox2��$ Nhập địa chỉ��$��25(�$��Center=�$��Center=�$��0q����� *	Address+$ PropertyChanged=� . .��� $��2��.+��� $ 
Horizontal=�.+�  $ Phone=�$��57��$��70���� -   $ CommentTextBox3��$! Nhập số điện thoại��$��25(�$��Center=�$��Center=�$��0q����� *Phone+$ PropertyChanged=� . .��� $��3��.+��� $ 
Horizontal=�.+�  $ Email=�$��57��$��70���� -   $ CommentTextBox4��$ Nhập Email��$��25(�$��Center=�$��Center=�$��0q����� *Email+$ PropertyChanged=� . .���� 
�������$��1��$��
50 0 50 20q�$��10 10 10 10q����#F6EFDC$ 5��._��  �� $	��71* ��� $
��331* �.+��� $��0�����#F6EFDC$��0 0 0 10q�._��� $��Thông tin thêm��$��Center=�$��Center=�$��40(�$
��Bold"� �� TextAlignment$ Center=��� $��1��.���� .+��� $��0q�$��35(� �� TextWrapping$
 Wrap=�" �� VerticalScrollBarVisibility$
 Auto=����� *
MoreInfo+� $��2�� �� �� .+��� $��0��$��50��$	��230��$��Xác nhận��$��25(�
��� ������� *ConfirmCommand+����  �� ElementName$ InforCompany���� $��1��$��50��$	��230��$��Thoát��$��25(�
��� ������� *ExitCommand+���� $ InforCompany��