   M S B A M L   `   `   `  ����B  >DemoJob, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:DemoJobDemoJob  5   	   "    DemoJob.InformationJobWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   !localclr-namespace:DemoJob  5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   -   5        $��InfoJob��5   	      	InfoJobVM  � DataContext#  [  5
   	    � Icon$ Picture/LOGOMAIN.ico��5       � Title$ Chi tiết công việc��5   	   $	��900��6%   $
��1400��62    � WindowStartupLocation$ CenterScreen=�6?    J� Opacity$	 0.9Q�6e   ��5      �� 5   
    �� ImageSource$ Picture/InforJob.jpg��6    j� Stretch$ UniformToFill=�68    � 	Resources 5       �� 
TargetType��%+   '9�       �� 5   
   " 9�6   5      5      .��5      �� .��5      ]� ��.  .+�5   
   � $��Right=�6   $��65��6&   ���#F77839$	 0.7Q�6F   5      � 5   
   $��Right=�6   $��70��6&   ���#F77839$	 0.5Q�6F   5      � 5   
   $��Right=�6   $��75��6&   ���#F77839$	 0.3Q�6F   5!      #  MaterialDesignThemes.Wpf.Card  5"      $
��Left=�6#   $	��900��69   $	��900��6E   ��5#      �� 5$      	 �� EndPoint$	 0.5,1&�6&   
 � MappingMode$
 RelativeToBoundingBox=�67    �� 
StartPoint$ 0.5,0&�6[    �� Opacity$	 0.4Q�6n   .��5%      �  � Color$ #212A37��6#    � Offset$ 0Q�63   � 5&      $ #212A37��6#   $ 1Q�63   5'      .��5)      �� .+�5*      ��  �� Padding$ 	30 30 0 0q�6   $��50(�5+      
�������$
��Bold"�6=   $��WrapWithOverflow=�6O   ��5*   0   �� *Title+ �� NotifyOnSourceUpdated .  �� UpdateSourceTrigger$ PropertyChanged=�5-      �� 5.      .+�5/      �� $
��30 0q�6    $��Yêu cầu công việc��6.   $��25(�6G   $
��Bold"�6U   ���	#FFFF46006�   �� 50      $��WrapWithOverflow=�6    $��22(�51      
�������$��	40 5 40 0q�52      ��53      �� *	Request+ . $ PropertyChanged=�54      55      �� 56      .+�57      �� $
��30 0q�6    $��Mô tả công việc��6.   $��25(�6E   $
��Bold"�6S   ���	#FFFF46006~   �� 58      $��WrapWithOverflow=�6    $��22(�59      
�������$��	40 5 40 0q�5:      ��5;      �� *Descriptions+ . $ PropertyChanged=�5<      5=      �� 5>      .+�5?      �� $
��30 0q�6    $��Thông tin thêm��6.   $��25(�6D   $
��Bold"�6R   ���	#FFFF46006}   �� 5@      $��WrapWithOverflow=�6    $��22(�5A      
�������$��	40 5 40 0q�5B      ��5C      �� *
MoreInfo+ . $ PropertyChanged=�5D      5E      �� 5F      $��4��6   $	��200��6+   .+�5G      �� $
��30 0q�6    $��Thông tin công ty��6.   $��25(�6G   $
��Bold"�6U   ���	#FFFF46006�   �� 5H      $��	40 5 40 0q�6!   .+�5I      ]� .+�5J      �� $��20(�6(   $��Tên công ty: ��66   $	��150��6K   
�������6l   �� 5K      $��20(�6(   $��WrapWithOverflow=�5L   $   
���������5K   6   �� *DisplayName+ . $ PropertyChanged=�5M      5N      ]� 5O      .+�5P      �� $��20(�6(   $��Địa chỉ: ��66   $	��150��6G   
�������6h   �� 5Q      $��20(�6(   $��WrapWithOverflow=�5R   $   
���������5Q   6   �� *	Address+ . $ PropertyChanged=�5S      5T      ]� 5U      .+�5V      �� $��20(�6(   $��Số điện thoại: ��66   $	��150��6M   
�������6n   �� 5W      $��20(�6(   $��WrapWithOverflow=�5X   $   
���������5W   6   �� *Phone+ . $ PropertyChanged=�5Y      5Z      ]� 5[      .+�5\      �� $��20(�6(   $��Email: ��66   $	��150��6E   
�������6f   �� 5]      $��20(�6(   $��WrapWithOverflow=�5^   $   
���������5]   6   �� *Email+ . $ PropertyChanged=�5_      5`      5a      5b      5c      5d      � 5e      $��Bottom=�6   $	��100��6+   .+�5f      �� $��0��6   $��50��6)   ���#F77839$��15q�6J   $	��150��6V   ���	#FFE49049$��Thoát��5h      $��24(�6)   ��5i      �� *ExitCommand+��5j      ��  �� ElementName$ InfoJob��5l      5m      5n      5p      