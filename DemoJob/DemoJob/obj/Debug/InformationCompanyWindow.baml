   M S B A M L   `   `   `  ����B  >DemoJob, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:DemoJobDemoJob  5   	   &     DemoJob.InformationCompanyWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:DemoJob     5   	   U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   
   -   5        $��InforCompany��5   
      InforCompanyVM  � DataContext#  [  5
   	   ���#f8f4e9 � Icon$ Picture/LOGOMAIN.ico��5   4    � Title$ Thông tin công ty��5   	   $	��900��6#   $
��1400��60    � WindowStartupLocation$ CenterScreen=�6=    � 	Resources 5       �� 
TargetType  btnChangePass �� Triggers P� Property P� Value	 �� Property
 �� Value �� 
TargetType��%�  &	       �� 5   
   " ��6    5      P� 5       �@J�IsMouseOver . . �5      �� 	 � ��
 �#FE642E63   �� 5      	 � ��
 5      �� 5      .R�5   "   �� $��	Underline{�6,   #��z��6H   5      5      �� 5      	 � ��

 ��  �6B   5      .�5      �� 	 � ��
 5      �� 5      " ��6&   .R�5       �� #��z��6!   $��0q�6K   ._�5!      �� $��Center=�6/   $��Center=�6L   5"      5#      5%      �� 5&      	 � ��

 �����6;   �� 5'      	 � ��$
 Center=�62   6C   �� 5(      	 � ��$
 18(�6)   66   �� 5)      	 � ��$

 Bold"�6+   6:   �� 5*      	 �@J�Opacity$	
 0.7Q�6(   66   �� 5+      	 � ��
 �#212A376=   5,      5-      .��5.      �  � RowDefinitions 5/   
   �� 50      $
��295* �6   6,   �� 51      $
��456* �6   6,   �� 52      $	��64* �6   6+   .+�54   
   � $��0��6    � ColumnDefinitions 55      �� 56      $	��95* �6#   61   �� 57      $
��253* �6#   62   .+�59      �� 
�������$��0��6(   $��10 10 10 10q�68   ���#F6EFDC$��50 30 80 30 q�6l    �� CornerRadius$ 5��6�   ._�5:      �� $��0��6   ��6(   �� *Avatar+ �� UpdateSourceTrigger$ PropertyChanged=� �� NotifyOnSourceUpdated .  �� Mode$ TwoWay=���5;      �� 5<      " ��6    .�5=      �� 	 �@J�Opacity$
 1Q�68   6D    5>      P� 5?   "    �@J�IsMouseOver . . �5@   &   �� 	 �@J�Opacity$	
 0.2Q�6@   6N   �� 5A   &   	 �@�ToolTip$%
 Nhấn để thay đổi avatar��6@   6b   5B   #   5D      .  (System.Windows.Interactivity.Interaction   Triggers 5F      /  )System.Windows.Interactivity.EventTrigger  5G         	EventName$ MouseLeftButtonDown��6)   .  (System.Windows.Interactivity.TriggerBase   Actions. 5H      6  0System.Windows.Interactivity.InvokeCommandAction     Command 64   �� *ChangeAvatarCommand+5J      5L      5M      �� 5N      
�������$��1��6(   $��10 10 10 10q�68   ���#F6EFDC$��
0 30 50 30q�6l   $ 5��6�   ._�5O      �  5P      �� 5Q      6*   �� 5R      6*   �� 5S      6*   �� 5T      6*   .+�5V      � $��0��6    5W      �� 5X      $��3* �6/   6<   �� 5Y      $��1* �6/   6<   .+�5[      ��  �� Orientation$ 
Horizontal=�6%   $��0��6>   .+�5\      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]   Kind$ 	Briefcase=�66   $��57��6G   $��70��6S   �� 5]      -   5         ��Name$ CommentTextBox1��5^      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Nhập tên công ty��5_   !   $��25(�5`      $��Center=�6,   $��Center=�6I   $��0q�6d   ��5^   7   �� *DisplayName+$ PropertyChanged=� . .��5a      5b      5c      �� 5d      $��1��6!   #��[ 5e      $
��Left=�6D   $��Đổi mật khẩu��6Z   $��25 5 0 0q�6q   ��5f   %   �� *ChangePasswordCommand+5h      5i      � 5j      $��1��6   .+�5k      �� $ 
Horizontal=�6%   .+�5l        $ 	MapMarker=�66   $��57��6G   $��70��6S   �� 5m      -   5        $ CommentTextBox2��5n      $ Nhập địa chỉ��5o   !   $��25(�5p      $��Center=�6,   $��Center=�6I   $��0q�6e   ��5n   7   �� *	Address+$ PropertyChanged=� . .��5q      5r      5s      5t      � 5u      $��2��6   .+�5v      �� $ 
Horizontal=�6%   .+�5w        $ Phone=�66   $��57��6C   $��70��6O   �� 5x      -   5        $ CommentTextBox3��5y      $! Nhập số điện thoại��5z   !   $��25(�5{      $��Center=�6,   $��Center=�6I   $��0q�6d   ��5y   7   �� *Phone+$ PropertyChanged=� . .��5|      5~      5      5�      � 5�      $��3��6   .+�5�      �� $ 
Horizontal=�6%   .+�5�        $ Email=�66   $��57��6C   $��70��6O   �� 5�      -   5        $ CommentTextBox4��5�      $ Nhập Email��5�   !   $��25(�5�      $��Center=�6,   $��Center=�6I   $��0q�6d   ��5�   7   �� *Email+$ PropertyChanged=� . .��5�      5�      5�      5�      5�      5�      5�      �� 5�   
   
�������$��1��6$   $��
50 0 50 20q�61   $��10 10 10 10q�6E   ���#F6EFDC$ 5��6y   ._�5�      �  5�      �� 5�      $	��71* �6$   63   �� 5�      $
��331* �6$   64   .+�5�      �� $��0��6   ���#F6EFDC$��0 0 0 10q�6<   ._�5�      �� $��Thông tin thêm��6    $��Center=�66   $��Center=�6S   $��40(�6n   $
��Bold"�6|    �� TextAlignment$ Center=�6�   6�   5�      �� 5�      $��1��6   .��5�      �� .+�5�      �� $��0q�6#   $��35(�6Q    �� TextWrapping$
 Wrap=�6_   " �� VerticalScrollBarVisibility$
 Auto=�5�      ��5�   7   �� *
MoreInfo+5�   C   5�      5�      5�      5�      � 5�   
   $��2��6    5�      �� 5�      6%   �� 5�      6%   .+�5�      �� $��0��6   $��50��6&   $	��230��62   $��Xác nhận��6>   $��25(�6Q   
��� �����5�      �� *ConfirmCommand+��68   ��  �� ElementName$ InforCompany��6p   �� 5�      $��1��6   $��50��6'   $	��230��63   $��Thoát��6?   $��25(�6O   
��� �����5�      �� *ExitCommand+��65   �� $ InforCompany��6m   5�      5�      5�      