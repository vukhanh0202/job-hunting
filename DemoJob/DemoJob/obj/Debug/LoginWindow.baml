   M S B A M L   `   `   `  ����B  >DemoJob, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:DemoJobDemoJob  5   	       DemoJob.LoginWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:DemoJob     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   
   U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   -   5        $��loginWindow��5   	      MaterialDesignBody#���   5
   
   $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        LoginVM � DataContext# [ 5        MaterialDesignFont#���  5       � Icon$ Picture/LOGOMAIN.ico��5   	    � Title$ Đăng nhập��5      $	��900��6   $
��1400��6$    � 
ResizeMode$ NoResize=�61    � WindowStartupLocation$ CenterScreen=�6G   ��5      �� 5   
    �� ImageSource$ Picture/LoginWindow.jpg��6   .��5      � .+�5    
   � -   5         �Name$ Login��5       $��
933,0,4,-1q�6   .+�5!      � -   5        $ ShowContent��5!      $��-934,3,459,-5q�6(   	 � RowDefinitions	 5"      �� 5#      $
��109* �6$   64   �� 5$      $
��765* �6$   64   .+�5&      � $��0��6   $��	5,0,820,0q�6$   ��5'      �� 5(      $ Picture/LOGOMAIN.png��6%   5+      � 5,      $��1��6   .+�5-      �� $��JOB HUNTING��6!    # MaterialDesignDisplay4TextBlock#��[ 5.      $��15,120,15,250q�5/   !   $)��#/DemoJob;component/Font/#BentonSans)�68   $
��Bold"�6i   $��WrapWithOverflow=�6{   
�������+  %MaterialDesignThemes.Wpf.ShadowAssist
   ShadowDepth$
 Depth4=�50   5   $	��140(�51   !    �� TextAlignment$ Center=�60   56      57      #  MaterialDesignThemes.Wpf.Card  58      -   5          Name$ 	LoginCard��58   "   $��Stretch=�65   $��Stretch=�6Q   $��50,123,47,119q�6o   ��59      �� 5:      ��5<      �� 5=       �� EndPoint$ 0.5,1&�6*    � MappingMode$ RelativeToBoundingBox=�6;    �� 
StartPoint$ 0.5,0&�6_    �� Opacity$	 0.2Q�6r   .��5>      �  � Color$ White��6'    � Offset$ 0Q�65   � 5?      $ White��6'   $ 1Q�65   5@      .��5B      �  � 	Resources 5C       �� 
TargetType �� Property �� Value��%d   '�       �� 5D      " �6    .�5E      ��  � ��$ 10 10 10 10q�67   5F      5G      5H      	 5I      �� 5J      6*   �� 5K      6*   �� 5L      6*   �� 5M      6*   �� 5N      6*   .+�5P      � $��0��6   $��-20,10,-12,5q�6(   .+�5Q      (  "MaterialDesignThemes.Wpf.ColorZone     Mode$ PrimaryDark=�5R      $��16q�5S         CornerRadius$ 3��5T      $
 Depth3=�5U      $��10,2,0,0q�5V      $��61��6/   $��Arial)�6;   $��14(�6N   $
��Bold"�6\   ��5W      �� 5X   "    �� Color$ 	#FF110000��62   $
 0.25Q�6D   .��5Z      ��  �� Orientation$ 
Horizontal=�5[   !   .+�5\   "   d�  ' #MaterialDesignHamburgerToggleButton#���  5]   &   $��20��5^   %   $��47��60   $��
0,-11,0,-7q�6<   $��Bottom=�6P   �� 5_   "   $��Center=�5`   %   $��Center=�5a   %   $��
25,-9,0,-9q�5c   %   $��Arial)�69   $ Center=�6L   $��31��6c   $	��245��6o   $��24(�6{   �� 6�   $�LOGIN��6�   6�   5d      5e      5f      � 5g      $��1��6   .+�5h      �� -   5         ��Name$ UserName��5h   "   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên đăng nhập��5j       % !MaterialDesignFloatingHintTextBox#��[ 5k      $��Arial)�5l   "   $��22(�65   $��0,0,0,39q�6D   $
��Bold"�6V   
���������5i   "   �� *
UserName+5l   h   5m      � 5n      $��2��6   .+�5o      G� -   5         G�Name$ Password��5p      $ Mật khẩu��5q       ) %MaterialDesignFloatingHintPasswordBox#��[ 5r      $��22(�6\   $��Arial)�6j   $��0,-51,0,105q�6}   
�������$
��Bold"�5s      .  (System.Windows.Interactivity.Interaction   Triggers 5t      /  )System.Windows.Interactivity.EventTrigger  5u   "      	EventName$ PasswordChanged��61   .  (System.Windows.Interactivity.TriggerBase    Actions.  5v   &   6	  0System.Windows.Interactivity.InvokeCommandAction	  ! 	  Command! 6<   �� *PasswordChangedCommand+" 	  CommandParameter" 5w   <   �� # �� ElementName$# Password��5x   #   5z      5{      � 5|      $��3��6   .+�5}      �� ���#888888$ �� 	IsDefault$ . 
�������% � ToolTip$% Đăng nhập��5�   !   $��31,-69,35,0q�65   $��46��6J   $	��Top=�6V   $��24(�6n   $
��Bold"�6|   $��Arial)�6�   ��5}   !   �� *LoginCommand+��5~   !   �� $# loginWindow��.��5�   �   Đăng Nhập5�      5�      � 5�      $��4��6   .+�5�      �� ���#888888
�������$% 
Đăng ký��5�   !   $��36,-110,42,165q�63   $��40��6K   $��20(�6W   $��Arial)�6e   $
��Bold"�6x   ��5�   "   �� *RegisterCommand+��5�   "   �� $# loginWindow��.��5�   �   
Đăng Ký5�      5�      5�      5�      5�      5�      5�      