   M S B A M L   `   `   `  ���� B  >DemoJob, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:DemoJobDemoJob  "    DemoJob.InformationJobWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  !localclr-namespace:DemoJob  c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  -   $��InfoJob��   	InfoJobVM  � DataContext#  [   � Icon$ Picture/LOGOMAIN.ico�� � Title$ Chi tiết công việc��$	��900��$
��1400�� � WindowStartupLocation$ CenterScreen=� J� Opacity$	 0.9Q�����  �� ImageSource$ Picture/InforJob.jpg�� j� Stretch$ UniformToFill=� � 	Resources  �� 
TargetType��%   '9�       �� " 9�.���� .��]� ��.  .+�� $��Right=�$��65�����#F77839$	 0.7Q�� $��Right=�$��70�����#F77839$	 0.5Q�� $��Right=�$��75�����#F77839$	 0.3Q�#  MaterialDesignThemes.Wpf.Card  $
��Left=�$	��900��$	��900������ 	 �� EndPoint$	 0.5,1&�
 � MappingMode$
 RelativeToBoundingBox=� �� 
StartPoint$ 0.5,0&� �� Opacity$	 0.4Q�.���  � Color$ #212A37�� � Offset$ 0Q�� $ #212A37��$ 1Q�.���� .+���  �� Padding$ 	30 30 0 0q�$��50(�
�������$
��Bold"�$��WrapWithOverflow=����� *Title+ �� NotifyOnSourceUpdated .  �� UpdateSourceTrigger$ PropertyChanged=��� .+��� $
��30 0q�$��Yêu cầu công việc��$��25(�$
��Bold"����	#FFFF4600�� $��WrapWithOverflow=�$��22(�
�������$��	40 5 40 0q����� *	Request+ . $ PropertyChanged=��� .+��� $
��30 0q�$��Mô tả công việc��$��25(�$
��Bold"����	#FFFF4600�� $��WrapWithOverflow=�$��22(�
�������$��	40 5 40 0q����� *Descriptions+ . $ PropertyChanged=��� .+��� $
��30 0q�$��Thông tin thêm��$��25(�$
��Bold"����	#FFFF4600�� $��WrapWithOverflow=�$��22(�
�������$��	40 5 40 0q����� *
MoreInfo+ . $ PropertyChanged=��� $��4��$	��200��.+��� $
��30 0q�$��Thông tin công ty��$��25(�$
��Bold"����	#FFFF4600�� $��	40 5 40 0q�.+�]� .+��� $��20(�$��Tên công ty: ��$	��150��
��������� $��20(�$��WrapWithOverflow=�
����������� *DisplayName+ . $ PropertyChanged=�]� .+��� $��20(�$��Địa chỉ: ��$	��150��
��������� $��20(�$��WrapWithOverflow=�
����������� *	Address+ . $ PropertyChanged=�]� .+��� $��20(�$��Số điện thoại: ��$	��150��
��������� $��20(�$��WrapWithOverflow=�
����������� *Phone+ . $ PropertyChanged=�]� .+��� $��20(�$��Email: ��$	��150��
��������� $��20(�$��WrapWithOverflow=�
����������� *Email+ . $ PropertyChanged=�� $��Bottom=�$	��100��.+��� $��0��$��50�����#F77839$��15q�$	��150�����	#FFE49049$��Thoát��$��24(����� *ExitCommand+����  �� ElementName$ InfoJob��