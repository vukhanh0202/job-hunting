   M S B A M L   `   `   `  ���� B  >DemoJob, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:DemoJobDemoJob      DemoJob.LoginWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     'localclr-namespace:DemoJob     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -   $��loginWindow��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  LoginVM � DataContext# [   MaterialDesignFont#���   � Icon$ Picture/LOGOMAIN.ico�� � Title$ Đăng nhập��$	��900��$
��1400�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�����  �� ImageSource$ Picture/LoginWindow.jpg��.��� .+�� -    �Name$ Login��$��
933,0,4,-1q�.+�� -   $ ShowContent��$��-934,3,459,-5q�	 � RowDefinitions	 �� $
��109* ��� $
��765* �.+�� $��0��$��	5,0,820,0q����� $ Picture/LOGOMAIN.png��� $��1��.+��� $��JOB HUNTING�� # MaterialDesignDisplay4TextBlock#��[ $��15,120,15,250q�$)��#/DemoJob;component/Font/#BentonSans)�$
��Bold"�$��WrapWithOverflow=�
�������+  %MaterialDesignThemes.Wpf.ShadowAssist
   ShadowDepth$
 Depth4=�$	��140(� �� TextAlignment$ Center=�#  MaterialDesignThemes.Wpf.Card  -     Name$ 	LoginCard��$��Stretch=�$��Stretch=�$��50,123,47,119q����� ����  �� EndPoint$ 0.5,1&� � MappingMode$ RelativeToBoundingBox=� �� 
StartPoint$ 0.5,0&� �� Opacity$	 0.2Q�.���  � Color$ White�� � Offset$ 0Q�� $ White��$ 1Q�.���  � 	Resources  �� 
TargetType �� Property �� Value��%6   '�       �� " �.���  � ��$ 10 10 10 10q�	 �� �� �� �� �� .+�� $��0��$��-20,10,-12,5q�.+�(  "MaterialDesignThemes.Wpf.ColorZone     Mode$ PrimaryDark=�$��16q�   CornerRadius$ 3��$
 Depth3=�$��10,2,0,0q�$��61��$��Arial)�$��14(�$
��Bold"�����  �� Color$ 	#FF110000��$
 0.25Q�.����  �� Orientation$ 
Horizontal=�.+�d�  ' #MaterialDesignHamburgerToggleButton#���  $��20��$��47��$��
0,-11,0,-7q�$��Bottom=��� $��Center=�$��Center=�$��
25,-9,0,-9q�$��Arial)�$ Center=�$��31��$	��245��$��24(��� $�LOGIN��� $��1��.+��� -    ��Name$ UserName��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên đăng nhập�� % !MaterialDesignFloatingHintTextBox#��[ $��Arial)�$��22(�$��0,0,0,39q�$
��Bold"�
����������� *
UserName+� $��2��.+�G� -    G�Name$ Password��$ Mật khẩu�� ) %MaterialDesignFloatingHintPasswordBox#��[ $��22(�$��Arial)�$��0,-51,0,105q�
�������$
��Bold"�.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ PasswordChanged��.  (System.Windows.Interactivity.TriggerBase    Actions.  6	  0System.Windows.Interactivity.InvokeCommandAction	  ! 	  Command! �� *PasswordChangedCommand+" 	  CommandParameter" �� # �� ElementName$# Password��� $��3��.+��� ���#888888$ �� 	IsDefault$ . 
�������% � ToolTip$% Đăng nhập��$��31,-69,35,0q�$��46��$	��Top=�$��24(�$
��Bold"�$��Arial)����� *LoginCommand+���� $# loginWindow��.��Đăng Nhập� $��4��.+��� ���#888888
�������$% 
Đăng ký��$��36,-110,42,165q�$��40��$��20(�$��Arial)�$
��Bold"����� *RegisterCommand+���� $# loginWindow��.��
Đăng Ký