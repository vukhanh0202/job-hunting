   M S B A M L   `   `   `  ���� B  >DemoJob, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:DemoJobDemoJob  )    #DemoJob.InformationJobCompanyWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  !localclr-namespace:DemoJob  c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  -   $��infoJobCompany��   InfoJobCompanyVM  � DataContext#  [   � Icon$ Picture/LOGOMAIN.ico�� � Title$ Chi tiết công việc��$	��900��$
��1400�� � WindowStartupLocation$ CenterScreen=� J� Opacity$	 0.9Q�����  �� ImageSource$ Picture/InforJob.jpg�� j� Stretch$ UniformToFill=�.���� .��]� ��. .+�� $��Right=�$��65�����#F77839$	 0.7Q�� $��Right=�$��70�����#F77839$	 0.5Q�� $��Right=�$��75�����#F77839$	 0.3Q�#  MaterialDesignThemes.Wpf.Card  $
��Left=�$	��800��$	��900������  �� EndPoint$ 0.5,1&� � MappingMode$ RelativeToBoundingBox=�	 �� 
StartPoint$	 0.5,0&�
 �� Opacity$	
 0.4Q�.���  � Color$ #212A37�� � Offset$ 0Q�� $ #212A37��$ 1Q�.���� .+��� -    ��Name$ CheckBox�� d� 	IsChecked$ FalseY�$��30(�$��	10,10,0,0q�.��)'Chọn để chỉnh sửa công việc����  �� 
TargetType" ��.���  �� Property � �� �� Value$ 0q���  � ��
 ����� �� Triggers ��  �� Binding ��  �� ElementName$ CheckBox�� �� Path$ 	IsChecked� �� Value True.a���  � �� �	#FFFF4600�� $��
25 0 150 0q�$��5 0 0 0q�$��35(�
�������$
��Bold"� �� TextWrapping$
 Wrap=�" �� VerticalScrollBarVisibility$
 Auto=����� *Title+ �� NotifyOnSourceUpdated .  �� UpdateSourceTrigger$ PropertyChanged=�{��� $ 	IsChecked�$ CheckBox��.���� .+��� $
��30 0q�$��Yêu cầu công việc��$��25(�$
��Bold"����	#FFFF4600�� $
 Wrap=�$
 Auto=�$��22(�
�������$��	40 5 40 0q����� *	Request+ . $ PropertyChanged=�{��� $ 	IsChecked�$ CheckBox��.���� .+��� $
��30 0q�$��Mô tả công việc��$��25(�$
��Bold"����	#FFFF4600�� $
 Wrap=�$��22(�
�������$��	40 5 40 0q�$
 Auto=�{��� $ 	IsChecked�$ CheckBox������ *Descriptions+ . $ PropertyChanged=�.���� .+��� $
��30 0q�$��Thông tin thêm��$��25(�$
��Bold"����	#FFFF4600�� $
 Wrap=�$
 Auto=�$��22(�
�������$��	40 5 40 0q�{��� $ 	IsChecked�$ CheckBox������ *
MoreInfo+ . $ PropertyChanged=�.���� $��4��.+��� $��
40 5 40 25q�.+�]� .+��� $��20(�$��Loại hình: ��$	��200�����	#FFFF4600�� $��20(�$ WrapWithOverflow=�
����������� *	TypeJob+ . $ PropertyChanged=�{��� $ 	IsChecked�$ CheckBox��.��]� .+��� $��20(�$��Địa chỉ: ��$	��200�����	#FFFF4600�� $��20(�$ WrapWithOverflow=�
����������� *Place+ . $ PropertyChanged=�{��� $ 	IsChecked�$ CheckBox��.��]� .+��� $��20(�$��Chuyên môn: ��$	��200�����	#FFFF4600�� $��20(�$ WrapWithOverflow=�
����������� *Major+ . $ PropertyChanged=�{��� $ 	IsChecked�$ CheckBox��.��]� .+��� $��20(�$!��Tính chất công việc: ��$	��200�����	#FFFF4600�� $��20(�$ WrapWithOverflow=�
����������� *NatureOfJob+ . $ PropertyChanged=�{��� $ 	IsChecked�$ CheckBox��.��]� .+��� $��20(�$��	Lương: ��$	��200�����	#FFFF4600�� $��20(�$ WrapWithOverflow=�
����������� *Salary+ . $ PropertyChanged=�{��� $ 	IsChecked�$ CheckBox��.��]� .+��� $��20(�$��Ngày đăng: ��$	��200�����	#FFFF4600�� $��20(�$ WrapWithOverflow=�
����������� *Timeregister+ . $ PropertyChanged=�{��� $ 	IsChecked�$ CheckBox��.��]� .+��� $��20(�$��Email: ��$	��200�����	#FFFF4600�� $��20(�$ WrapWithOverflow=�
����������� *Email+ . $ PropertyChanged=�{��� $ 	IsChecked�$ CheckBox��.��� $��Bottom=�$	��100�� � ColumnDefinitions �� �� .+��� $��0��$��50�����#F77839$��15q�$	��150�����	#FFE49049$��Thay đổi��$��24(����� *BtnRegisterCommand+���� $ infoJobCompany���� $��1��$��50�����#F77839$��15q�$	��150�����	#FFE49049$��Xóa việc��$��24(����� *DeleteJobCommand+���� $ infoJobCompany���� $	��Top=�$��	0 120 0 0q�.+��� $
��30 0q�$��Danh sách ứng viên��$��30(�$
��Bold"����	#FFFF4600�� -    ��Name$ ListJob������ *MemberRegisterList+���� .R���  �� Orientation$ Vertical=����� .R��� $��25(� �� Padding$ 10q����� *DisplayName+���� " ��.���  � ��
 ����� P�  P� Property �@J�IsMouseOver  P� Value  . . ���  � ��
 �  ����  � ��$ 	Underline{���  �@�Cursor$
 Hand����  �@�ToolTip$&  Nhấn vào để xem chi tiết��.  (System.Windows.Interactivity.Interaction!   Triggers! /  )System.Windows.Interactivity.EventTrigger  "   	EventName$" MouseLeftButtonDown��.  (System.Windows.Interactivity.TriggerBase#   Actions.# 6  0System.Windows.Interactivity.InvokeCommandAction  $   Command$ �� % �� RelativeSource% �� & �� AncestorType"& ��$  DataContext.CheckHSCommand�'   CommandParameter' �� $ Id�