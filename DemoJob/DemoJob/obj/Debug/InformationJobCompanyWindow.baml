   M S B A M L   `   `   `  ����B  >DemoJob, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:DemoJobDemoJob  5   	   )    #DemoJob.InformationJobCompanyWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   !localclr-namespace:DemoJob  5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   
   -   5        $��infoJobCompany��5         InfoJobCompanyVM  � DataContext#  [  5
   	    � Icon$ Picture/LOGOMAIN.ico��5       � Title$ Chi tiết công việc��5   	   $	��900��6$   $
��1400��61    � WindowStartupLocation$ CenterScreen=�6>    J� Opacity$	 0.9Q�6c   ��6r   �� 5       �� ImageSource$ Picture/InforJob.jpg��6    j� Stretch$ UniformToFill=�64   .��5      �� .��5      ]� ��. .+�5    
   � $��Right=�6   $��65��6&   ���#F77839$	 0.7Q�6F   5"      � 5#   
   $��Right=�6   $��70��6&   ���#F77839$	 0.5Q�6F   5%      � 5&   
   $��Right=�6   $��75��6&   ���#F77839$	 0.3Q�6F   5(      #  MaterialDesignThemes.Wpf.Card  5+   
   $
��Left=�6   $	��800��65   $	��900��6A   ��5,      �� 5-       �� EndPoint$ 0.5,1&�6&    � MappingMode$ RelativeToBoundingBox=�67   	 �� 
StartPoint$	 0.5,0&�6[   
 �� Opacity$	
 0.4Q�6n   .��5.      �  � Color$ #212A37��6#    � Offset$ 0Q�63   � 5/      $ #212A37��6#   $ 1Q�63   50      .��52      �� .+�53      �� -   5         ��Name$ CheckBox��54       d� 	IsChecked$ FalseY�55      $��30(�6'   $��	10,10,0,0q�56      .��6(   )'Chọn để chỉnh sửa công việc��58      �� 59       �� 
TargetType" ��6    .�5:      ��  �� Property � �� �� Value$ 0q�6@   6L   �� 5;       � ��
 �����6K    �� Triggers 5<   "   �� 5=   "    �� Binding 6.   ��  �� ElementName$ CheckBox�� �� Path$ 	IsChecked� �� Value True6g   .a�5>   &   ��  � �� �	#FFFF46006W   5?   #   5B      5E      �� 5F      $��
25 0 150 0q�6   $��5 0 0 0q�6/   $��35(�5G      
�������$
��Bold"�6=    �� TextWrapping$
 Wrap=�6O   " �� VerticalScrollBarVisibility$
 Auto=�5H      ��5F   A   �� *Title+ �� NotifyOnSourceUpdated .  �� UpdateSourceTrigger$ PropertyChanged=�{�5I      �� $ 	IsChecked�$ CheckBox��.��6W   5K      �� 5M      .+�5N      �� $
��30 0q�6    $��Yêu cầu công việc��6.   $��25(�6G   $
��Bold"�6U   ���	#FFFF46006�   �� 5O      $
 Wrap=�6   $
 Auto=�5P      $��22(�5Q      
�������$��	40 5 40 0q�5R      ��5S      �� *	Request+ . $ PropertyChanged=�{�5T      �� $ 	IsChecked�$ CheckBox��.��6X   5V      5W      �� 5X      .+�5Y      �� $
��30 0q�6    $��Mô tả công việc��6.   $��25(�6E   $
��Bold"�6S   ���	#FFFF46006~   �� 5Z      $
 Wrap=�6   $��22(�5[      
�������$��	40 5 40 0q�5]      $
 Auto=�5^      {�5\      �� $ 	IsChecked�$ CheckBox����5_      �� *Descriptions+ . $ PropertyChanged=�.��6z   5`      5a      �� 5b      .+�5c      �� $
��30 0q�6    $��Thông tin thêm��6.   $��25(�6D   $
��Bold"�6R   ���	#FFFF46006}   �� 5d      $
 Wrap=�6   $
 Auto=�5e      $��22(�5f      
�������$��	40 5 40 0q�5h      {�5g      �� $ 	IsChecked�$ CheckBox����5i      �� *
MoreInfo+ . $ PropertyChanged=�.��6v   5j      5k      �� 5l      $��4��6   .+�5m      �� $��
40 5 40 25q�6!   .+�5n      ]� .+�5o   "   �� $��20(�6-   $��Loại hình: ��6;   $	��200��6N   ���	#FFFF46006s   �� 5p      $��20(�6&   $ WrapWithOverflow=�5q   $   
���������5p   4   �� *	TypeJob+ . $ PropertyChanged=�{�5r   *   �� $ 	IsChecked�$ CheckBox��.��6f   5s      5t      ]� 5u      .+�5v   "   �� $��20(�6,   $��Địa chỉ: ��6:   $	��200��6K   ���	#FFFF46006p   �� 5w      $��20(�6&   $ WrapWithOverflow=�5x   $   
���������5w   4   �� *Place+ . $ PropertyChanged=�{�5y   *   �� $ 	IsChecked�$ CheckBox��.��6f   5z      5{      ]� 5|      .+�5}   "   �� $��20(�6,   $��Chuyên môn: ��6:   $	��200��6N   ���	#FFFF46006s   �� 5~      $��20(�6&   $ WrapWithOverflow=�5   $   
���������5~   4   �� *Major+ . $ PropertyChanged=�{�5   W   �� $ 	IsChecked�$ CheckBox��.��6�   5�      5�      ]� 5�      .+�5�   "   �� $��20(�6,   $!��Tính chất công việc: ��6:   $	��200��6W   ���	#FFFF46006|   �� 5�      $��20(�6&   $ WrapWithOverflow=�5�   $   
���������5�   4   �� *NatureOfJob+ . $ PropertyChanged=�{�5�   W   �� $ 	IsChecked�$ CheckBox��.��6�   5�      5�      ]� 5�      .+�5�   "   �� $��20(�6,   $��	Lương: ��6:   $	��200��6I   ���	#FFFF46006n   �� 5�      $��20(�6&   $ WrapWithOverflow=�5�   $   
���������5�   4   �� *Salary+ . $ PropertyChanged=�{�5�   W   �� $ 	IsChecked�$ CheckBox��.��6�   5�      5�      ]� 5�      .+�5�   "   �� $��20(�6,   $��Ngày đăng: ��6:   $	��200��6M   ���	#FFFF46006r   �� 5�      $��20(�6&   $ WrapWithOverflow=�5�   $   
���������5�   4   �� *Timeregister+ . $ PropertyChanged=�{�5�   W   �� $ 	IsChecked�$ CheckBox��.��6�   5�      5�      ]� 5�      .+�5�   "   �� $��20(�6,   $��Email: ��6:   $	��200��6I   ���	#FFFF46006n   �� 5�      $��20(�6&   $ WrapWithOverflow=�5�   $   
���������5�   4   �� *Email+ . $ PropertyChanged=�{�5�   W   �� $ 	IsChecked�$ CheckBox��.��6�   5�      5�      5�      5�      5�      5�      � 5�   
   $��Bottom=�6   $	��100��6'    � ColumnDefinitions 5�      �� 5�      6)   �� 5�      6)   .+�5�      �� $��0��6   $��50��6)   ���#F77839$��15q�6J   $	��150��6V   ���	#FFE49049$��Thay đổi��5�      $��24(�6,   ��5�      �� *BtnRegisterCommand+��5�      �� $ infoJobCompany���� 5�      $��1��6   $��50��6)   ���#F77839$��15q�6J   $	��150��6V   ���	#FFE49049$��Xóa việc��5�      $��24(�6,   ��5�      �� *DeleteJobCommand+��5�      �� $ infoJobCompany��5�      �� 5�   
   $	��Top=�6   $��	0 120 0 0q�6*   .+�5�      �� $
��30 0q�6   $��Danh sách ứng viên��6&   $��30(�6@   $
��Bold"�6N   ���	#FFFF46006y   �� 5�      -   5         ��Name$ ListJob��5�      ��6,   �� *MemberRegisterList+��5�      �� 5�      .R�5�      ��  �� Orientation$ Vertical=�6&   6?   5�      ��5�      �� 5�      .R�5�      �� $��25(�6A    �� Padding$ 10q�6O   ��6$   �� *DisplayName+��5�      �� 5�   "   " ��6(   .�5�   &   ��  � ��
 �����6S    5�   &   P� 5�   *    P� Property �@J�IsMouseOver  P� Value  . . �5�   .   ��  � ��
 �  ��6Y   �� 5�   .    � ��$ 	Underline{�6Z   6o   �� 5�   .    �@�Cursor$
 Hand��6G   6V   �� 5�   .    �@�ToolTip$&  Nhấn vào để xem chi tiết��6H   6k   5�   +   5�   #   .  (System.Windows.Interactivity.Interaction!   Triggers! 5�   &   /  )System.Windows.Interactivity.EventTrigger  5�   *   "   	EventName$" MouseLeftButtonDown��69   .  (System.Windows.Interactivity.TriggerBase#   Actions.# 5�   .   6  0System.Windows.Interactivity.InvokeCommandAction  $   Command$ 6D   �� % �� RelativeSource% �� & �� AncestorType"& ��$  DataContext.CheckHSCommand�'   CommandParameter' 5�   8   �� $ Id�5�   /   5�   +   5�      5�      5�      5�      5�      5�      5�      