   M S B A M L   `   `   `  ���� B  >DemoJob, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:DemoJobDemoJob      DemoJob.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  !localclr-namespace:DemoJob  U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -   $��
mainWindow��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=� 
 MainVM � DataContext# [   MaterialDesignFont#���   � Icon$ Picture/LOGOMAIN.ico�� � Title$ Màn hình chính��$	��900��$
��1400�� � WindowStartupLocation$ CenterScreen=����#f8f4e9���#212A37.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction  	   Command	 �� *LoadedWindowCommand+
   CommandParameter
 ��  �� ElementName$ 
mainWindow�� � 	Resources  �� 
TargetType  InfoJob �� Property �� Value  textblockdock  tbl  btnSave �� Triggers P� Property P� Value �� 
TargetType  	btnXoaLoc  cbStackPanel d� 	IsChecked �� Path �� Mode �� RelativeSource � ColumnDefinitions ��Name F�Name �� Triggers �� 
TargetName J� IsHitTestVisible �� SelectionBoxItem �� SelectionBoxItemTemplate  ��Name! �� 
IsReadOnly" �� 
IsReadOnly# �� IsDropDownOpen$ � AllowsTransparency% J� SnapsToDevicePixels& � ActualWidth' �� MaxDropDownHeight( K� IsItemsHost'  !MaterialDesignThemes.Wpf.PackIcon 	 icon 
 Loc  SnackBar  ex��%�  &	       &	 �     &	 _    &	     &	 =    &	 �    &		 �    &	
 )	    &	 �    &	 8    �� " ��.���  �@��TextAlignment$
 Left=���  � ��$ Center=���  � ��$
 Left=���  � ��$ 5 0 0 0q���  � ��$ 20(���  � ��$
 auto����  � �� �#212A37�� " ��.���  � ��$ Center=���  � ��$ 25(���  � ��$ WrapWithOverflow=���  � ��$
 Bold"���  � �� �#212A37�� " ��.���  � ��$ Center=���  � ��$ 18(���  � ��$ WrapWithOverflow=���  � ��$
 Bold"���  �@J�Opacity$	 0.7Q���  � �� �#212A37�� " �� P�  �@J�IsMouseOver . . ���  � ��
 �������  �@J�Opacity$	 0.9Q���  � ��
 �  ��.���  � �� �� " ��.R��� #��z��$��0q�._��� $��Center=�$��Center=���  � ��
 �������  �@J�Opacity$	 0.9Q���  � �� �#212A37�� " �� P�  �@J�IsMouseOver . . ���  � �� �#FE642E��  � �� �� .R��� $��	Underline{�#��z����  � ��
 ��  �.���  � �� �� " ��.R��� #��z��$��0q�._��� $��Center=�$��Center=���  � ��
 �������  � ��$ Center=���  � ��$ 18(���  � ��$
 Bold"���  �@J�Opacity$	 0.7Q���  � �� �#212A37�� " ��.���  � ��$ 40����  � ��$	 340����  � ��
 �������  � ��$ 0q���  � ��$ 25(���  � ��$ -1 0 0 0q���  � �� �#212A37��  � �� �� " ��.R�� .+�d� $��2��|�.   �� $ IsDropDownOpen�$ TwoWay=� �� *TemplatedParent+���� .R��  �� $��7* ��� $��* �.+��� $ Border��$��2��
�������
���   �$��0q��� $��0��
�������
���   �$��0q�F� $ Arrow��$��1��
���   �$��Center=�$��Center=�"����        � 	=  	= � z     	 P�  �@J�IsMouseOver . . ��� $ Border�� � �� �#CEF6D8P�  �@d�	IsChecked$
 trueY�. ��� $ Border�� � �� �#CEF6D8�� $��ContentSite�� .  #��z #��z #��z��$��3 4 0 0q��� $  PART_EditableTextBox��$y�Hidden=�#" z! � $��Popup��$��Bottom=�#��z# $ . |�.  $��Slide=�.��� $��DropDown��% . #��z& #��z' .+��� $ DropDownBorder��
��������� % . .���� ( .  �� "  .���  � ��
 �������  � ��$ 36����  � ��$ 40����  � �� �#212A37�� " ��.���  � ��$	 150����  � ��$ Center=���  � ��$ 18(���  � �� �#212A37��  � �� �� " ��.R�� .+�d� $��2��|�.   �� $ IsDropDownOpen�$ TwoWay=� �� *TemplatedParent+���� .R��  �� $��7* ��� $��* �.+��� $ Border��$��2��
�������
���   �$��0q��� $��0��
�������
�������$��0q�F� $ Arrow��$��1��
���   �$��Center=�$��Center=�"����        � 	=  	= � z     	 P�  �@J�IsMouseOver . . ��� $ Border�� � �� �#CEF6D8P�  �@d�	IsChecked$
 trueY�. ��� $ Border�� � �� �	#FFE6E6E6�� $��ContentSite�� .  #��z #��z #��z��$��3 4 0 0q��� $  PART_EditableTextBox��$y�Hidden=�#" z! � $��Popup��$��Bottom=�#��z# $ . |�.  $
��Fade=�.��� $��DropDown��% . #��z& #��z' .+��� $ DropDownBorder��
�������$	��150���� % . .���� ( .  �� " ��.���  � ��$ 0q���  � ��
 �������  � �� �#212A37�� " 9�.��� ) � RowDefinitions) �� $��81 ��� $	��74* ��� $	��38* ��� $	��73* ��� $
��603* �.+�� .+�]� $��0����.  ���#212A37.+��� $��10 0 0 0q�$��Picture/LOGOMAIN.png��$
��Left=��� $	��100��#��[ $��Right=�$��0 0 10 0q�* �� IsCancel* . ���� *LogOutCommand++ �� NotifyOnSourceUpdated+ . , �� UpdateSourceTrigger$, PropertyChanged=����� $ 
mainWindow��.���� .+�  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]-   Kind$- Export=�$��30��$��30��$��15 0 0 0q��� $��Đăng xuất���� $	��100��#��[ $��Right=�$��0 0 10 0q����� *InformationMemberCommand+.���� .+��� $��Picture/account.png��$��30��$��30��$��0 0 0 0q��� $��Hồ sơ cá nhân���� � $��1�����#3a4c71$��0,0,0,5q� �� $��2* ��� $��2* ��� $��2* ��� $��1* �.+��� $��40��$��0��$��
10 14 6 14q�$��3q�. �� CornerRadius$. 5��
�������$	��380��._��� $��0��/ �� Orientation$/ 
Horizontal=�.+�  $- Magnify=�#��[	 $��-1 0 0 0q�0 � ToolTip$,0 &Ghi có dấu nếu là tiếng việt��� $��40��$	��340��
�������$��-1 0 0 0q�.+��� $��30��$	��330��
�������$��5 0 15 0q�)  #MaterialDesignThemes.Wpf.HintAssist1   Hint$21 ,Nhập chức danh, vị trí, kĩ năng,...��$��16(����� *SearchTextBox+$ TwoWay=�$, PropertyChanged=�.��2 J� InputBindings2 �� 
3 �� Key$3 Enter��4 �� Command4 �� *SearchCommand+�� $3 Return��4 �� *SearchCommand+.���� $��40��$��1��$��
10 14 6 14q�$��3q�$. 5��
�������$	��380��._��� $��1��$/ 
Horizontal=�.+�  $- FormatListBulleted=�#��[	 $��-1 0 0 0q��� #��[ 
�������5 �� SelectedValue5 �� *SelectedItemMajor+���� $ 	MajorList��� $��40��$��2��$��
10 14 6 14q�$��3q�$. 5��
�������$	��380��._��� $��2��$/ 
Horizontal=�.+�  $- 	MapMarker=�#��[	 $��-1 0 0 0q��� #��[ 
�������5 �� *SelectedItemPlace+���� $ 	PlaceList��� $��3��$
��Auto�����#F77839$��15,17,15,17q����	#FFE49049$��Tìm kiếm��$��24(�6 �� 	IsDefault6 . ���� *SearchCommand+]� $��2����.  
�������$��0,0,0,2q�.+��� $��15 0 0 0q�#��[ $��Lọc theo: ���� $��25 0 0 0q�#��[ $!��Tính chất công việc: ���� 7 �� Text$7 123123��$��20(�#��[
 5 �� *ValueFilterByNature+$, PropertyChanged=�+ . .@��� $��Toàn thời gian���� $��Bán thời gian���� $��Thực tập���� $��Online��   $ SelectionChanged��.   	 �� *Filter+�� $��50 0 0 0q�#��[ $��Mức lương: ���� $��20(�#��[
 5 �� *ValueFilterBySalary+$, PropertyChanged=�+ . .@��� $��≤ $500���� $��$500 - $1000���� $��$1000 - $1500���� $��$1500 - $2000���� $��$2000 - $3000���� $��	≥ $3000��   $ SelectionChanged��.   	 �� *Filter+�� $��Right=�$��20(�$��0,0,15,0q�$	��168��#��[
 5 �� *	ValueSort+.@��� $��Ngày tăng dần���� $��Ngày giảm dần���� $��Lương tăng dần���� $��Lương giảm dần��   $ SelectionChanged��.   	 �� *SortCommand+�� #��[ $��Right=�$��Xếp theo: ���� #��[ $
��Left=�$��
Xoá lọc��$��40 3 0 0q����� *DeleteFilterCommand+]� $��	0,13,0,10q�
�������$��3��$��Center=���.  $��50��.+��� #��[ $��20 0 0 0q�$
��Left=����� *
QuatityJob++ . $, PropertyChanged=��� #��[ $��5 0 0 0q�$
��Left=�$#��CÔNG VIỆC ĐÃ TÌM THẤY��d� -   8 d�Name$8 
SaveToggle��$��5 0 15 0q�$��Right=�$��50�� $  MaterialDesignSwitchToggleButton#��[ ���� *ShowCommand+���� $ 
SaveToggle�   $ Checked��.   	 �� *ShowSaveJobCommand+
 �� $ 
SaveToggle��  $ 	Unchecked��.   	 �� *HideSaveJobCommand+
 �� $ 
SaveToggle���� #��[ $��5 0 0 0q�$��Right=�$��Công việc đã lưu���� #��[ $��5 0 25 0q�$��Right=�$��công việc đã lưu���� #��[ $��5 0 0 0q�$��Right=����� *SaveQuatityJob++ . $, PropertyChanged=�  $- Heart=�$��Right=�$��Center=�$��45��$��45��� $��4��$��50,20,50,20q�.+��� $
��Auto=�$��Disabled=�.���� -   9 ��Name$9 ListJob������ *	JobList+���� .R��� $/ Vertical=����� .R��� $��1q�._��  �� $	��75* ��� $
��543* ��� $	��70* ��� $	��70* �.+��� $��0��
�������$��	0 0 0.5 0q�
���   �._��� $��10q�$��0��$��Uniform=����� *Link+� $��1������ : �� Color$: White��; �� Opacity$	; 0.9Q�) �� $	��20* ��� $��8* ��� $	��19* �.+��� < �� Padding$< 10q�$��0��= �� TextAlignment$
= Left=�$��Center=�$��30(�$��WrapWithOverflow=�$
��auto�����#212A37���� *Title+� $��2��) �� �� .+�� $��0��.+��� $< 10 0 0 0q�> J� Opacity$	> 0.7Q�#��[ $��Loại hình:��$
��Left=��� ? �� Padding$? 0 0 10 0q�$��0,0,2,0q����	#FFBDBDBD._��� #��[ ���� *	TypeJob+�� $< 10 0 0 0q�$	> 0.7Q�$��
Khu vực:��#��[ �� $? 0 0 10 0q�$��0,0,2,0q����	#FFBDBDBD._��� #��[ ���� *Place+�� $< 10 0 0 0q�$	> 0.7Q�$��	Lương: ��#��[ �� #��[ ���#F77839���� *Salary+� $��1��.+��� $< 10 0 0 0q�$	> 0.7Q�#��[ $��Chuyên môn:��$
��Left=��� $? 0 0 10 0q�$��0,0,2,0q����	#FFBDBDBD._��� #��[ ���� *Major+�� $< 10 0 0 0q�$	> 0.7Q�$ ��Tính chất công việc:��#��[ �� $
? 10 0q�$��0,0,2,0q����	#FFBDBDBD._��� #��[ ���� *NatureOfJob+�� $< 10 0 0 0q�$	> 0.7Q�$��Ngày đăng : ��#��[ �� #��[ ���� *Timeregister+� $��2������ $: White��$	; 0.9Q�.+��� $/ 
Horizontal=�.+�d� $8 toggle������  �� @ �� AncestorType"@ ��$  DataContext.SaveJobCommand����� $ Id�.��  $- HeartOutline=�$��30��$��30��   $ Checked��.   	 ��  �� "@ ��$  DataContext.CheckedCommand�
 �� $ toggle��  $ 	Unchecked��.   	 ��  �� "@ ��$" DataContext.UnCheckedCommand�
 �� $ toggle������ " d� �� A �� BindingA �� $ 
SaveToggle��$ 	IsChecked�B �� ValueB True.a���  �@d�	IsChecked$
 TrueY���  � ��
 � �����  � ��
 �  ��.���  � ��
 � �����  � ��
 �  ����  � ��$ 40����  � ��$ 40����  � ��$ 18(���  � ��$ Center=���  � ��$ Center=���  � ��$ 0q���  � �� �� " d�.R�� }�. #��z��#��z��'	  !System.Windows.VisualStateManagerC 	  VisualStateGroupsC %
  System.Windows.VisualStateGroup
  CommonStates��D 
  States.D    System.Windows.VisualState  
Normal��  Disabled��E   
Storyboard.E �� .��W� F g� Duration$F 0D�	G W� To$
G 0.23X�H �� TargetProperty$H (UIElement.Opacity)�
  CheckStates��I 
  TransitionsI %  System.Windows.VisualTransition  J   From$J *��	K   To$K Checked��L   
Storyboard.L �� .��U� $F 0:0:0.2D�$H ScaleX�M �� 
TargetName$M CheckedEllipseScale��.\��� N O� Value$N 0Q�O O� KeyTime$O 0:0:0.0���� $	N 1.0Q�$O 0:0:0.1��U� $F 0:0:0.2D�$H ScaleY�$M CheckedEllipseScale��.\��� $N 0Q�$O 0:0:0.0���� $	N 1.0Q�$O 0:0:0.1��  $J Checked��$K 	Unchecked��.L �� .��U� $F 0:0:0.2D�$H ScaleX�$M CheckedEllipseScale��.\��� $	N 1.0Q�$O 0:0:0.0���� $N 0Q�$O 0:0:0.1��U� $F 0:0:0.2D�$H ScaleY�$M CheckedEllipseScale��.\��� $	N 1.0Q�$O 0:0:0.0���� $N 0Q�$O 0:0:0.1��.D   Checked��.E �� .��W� $F 0D�$H ScaleX�$M CheckedEllipseScale��$	G 1.0X�W� $F 0D�$H ScaleY�$M CheckedEllipseScale��$	G 1.0X�  	Unchecked��.E �� .��W� $F 0D�$H ScaleX�$M CheckedEllipseScale��$G 0X�W� $F 0D�$H ScaleY�$M CheckedEllipseScale��$G 0X�.+�A� P A�Name$P HoverEllipse��
������ 
������ $��1��A� $P CheckedEllipse��#��z��Q J� RenderTransformOrigin$Q 0.5, 0.5&�z��� R �� CenterX$	R 0.5Q�S �� CenterY$	S 0.5Q�T �� ScaleX$	T 1.0Q�U �� ScaleY$	U 1.0Q�CheckedEllipseScale���� V ��Name$V contentPresenter��#��z��#��z��#��z��#��z��#��z�� P�  �@J�IsMouseOver . . ��� $ HoverEllipse�� ��  �� *TemplatedParent+$ 
Background� � ���� $
��Lưu��$��23(�$��30��$��40��$= Center=�$��Center=�$��Center=����� " �� �� A �� $ toggle��$ 	IsChecked�B True.a���  � ��
 �  ��� $��3������ $: White��$	; 0.9Q�.+��� $!0 Xem chi tiết công việc��$��20(�$��40��$	��110��$��0q�#��[ ����  �� "@ ��$' !DataContext.InformationJobCommand����� $ Id�.���� $/ 
Horizontal=�.+�  $- Notebook=�$��30��$��30���� $< 0 2 0 0q�$��
Chi tiết��$��23(�$��30��$��75��$= Center=�$��Center=�$��Center=�