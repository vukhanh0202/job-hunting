   M S B A M L   `   `   `  ����B  >DemoJob, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:DemoJobDemoJob  5   	       DemoJob.RegisterJob   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   
   !localclr-namespace:DemoJob  5   	   -   5        $��registerJob��5   	      RegisterJobVM  � DataContext#  [  5
   	    � Icon$ Picture/LOGOMAIN.ico��5       � Title$! Đăng tuyển dụng mới��5   	   $	��900��6%   $
��1400��62    � WindowStartupLocation$ CenterScreen=�6?    � 	Resources 5       �� 
TargetType  tb �� Property �� Value  tbTilte  tbTilteExtra  txb��%1  &	       &	 J     &	 �     &	 �    �� 5   
   " ��6   .�5      ��  � ��
 �����6;   5      �� 5   
   " ��6   .�5      ��  � �� �#212A376=   �� 5       � ��$ 32(�6)   66   �� 5       � ��$ DemiBold"�6+   6>   5      �� 5   
   " ��6   .�5      ��  � �� �#212A376=   �� 5       � ��$ 18(�6)   66   �� 5       � ��$
 Thin"�6+   6:   �� 5       � ��$ Italic$�6*   6;   5      �� 5   
   " ��6   .�5      ��  � ��
 �����6;   5      5       .��5!      �� .��5"   
   �  � ColumnDefinitions 5#      �� 5$      $	��85* �6#   61   �� 5%      $
��263* �6#   62   .+�5)      � $��0��6   ���#212A37	 � RowDefinitions	 5*      �� 5+      $
��302* �6$   64   �� 5,      $	��97* �6$   63   �� 5-      $
��470* �6$   64   �� 5.      $	��75* �6$   63   .+�50      A� $��0��6   $	��200��6'   $	��200��64   $��0 90 0 0q�6@   ��51      �� 52      
 j� Stretch$
 Uniform=�6&    �� ImageSource 68   �� *Avatar+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� NotifyOnSourceUpdated . 6�   54      � 55      $��1��6   	 56      �� 57      6*   �� 58      6*   .+�5;      �� $��0��6    #��[ 6-   $��25(�6I   $
��Bold"�6W    �� TextAlignment$ Center=�5<      $��Center=�63   ��6N   �� *DisplayName+6n   �� 5>      $��1��6!   $ Center=�6.   #��[ 6E   $��22(�6a   ��6o   �� *
IDCustom+6�   5@      �� 5A      $��2��6    �� Orientation$ Vertical=�6*   $��0 5 0 0q�6A   .+�5B      �� 
���   �$��0 0 0 0q�61   $��50 5 0 0q�6K   ._�5C      �� $��2��6%   $ 
Horizontal=�62   .+�5D      �� $"��Picture/location-outline.png��6$   $��30��6J   $��25��6V   6c   �� 5E      -   5         ��Name$ CommentTextBox4��5F   )   #��[ 5E   (   $��22(�5H   )    �� Padding$ 20 0 0 0q�67   $
��Wrap=�6J   ��5G   )   �� *	Address+5J      5K      5L      �� 5M      
���   �$��0 0 0 0q�61   $��	50 10 0 0q�6K   ._�5N      �� $ 
Horizontal=�6%   .+�5O      �� $��Picture/Phone.png��6$   $��30��6?   $��25��6K   6X   �� 5P      -   5        $ CommentTextBox2��5Q   %   #��[ 5P   (   $ 20 0 0 0q�5S   &   $��22(�5T   %   ��5R   $   �� *Phone+5V      5X      5Y      �� 5Z      
���   �$��0 0 0 0q�61   $��	50 10 0 0q�6K   ._�5[      �� $��1��6%   $ 
Horizontal=�62   .+�5\      �� $��Picture/envelope.png��6$   $��30��6B   $��25��6N   6[   �� 5]      -   5        $ CommentTextBox3��5^   %   #��[ 5]   (   $��22(�5_   %   $ 20 0 0 0q�63   ��5`   %   �� *Email+5c      5d      5e      �� 5f      
���   �$��0 0 0 0q�61   $��	50 10 0 0q�6K   ._�5g      �� $��1��6%   $ 
Horizontal=�62   .+�5h      �� $��Picture/timetable.png��6$   $��30��6C   $��25��6O   6\   �� 5i      #��[ 6(   $��22(�5j   %   $ 20 0 0 0q�63   ��5k   %   �� *	TimeTable+5m      5n      5o      5q      �� 5r      $��3��6   $��50��6&   ���#F77839$��15q�6G   $	��200��6S   ���	#FFE49049$��Đăng tuyển��5t      $��24(�6.   ��5u      �� *AddJobCommand+��5v      ��  �� ElementName$ registerJob��5w      � 5z      $��1��6   $��0 0 0 0q�6#   	 5{      �� 5|      $	��90* �6$   63   �� 5}      $
��780* �6$   64   .+�5      #  MaterialDesignThemes.Wpf.Card  $��0��6&   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth4=�5�      $��80��6B   $��	30 25 0 0q�6N   $
��Bold"�6b   $��35(�5�      ���#212A37.��6=   Tạo tuyển dụng mới5�      � 5�      $��1��6   	 5�      �� 5�      $
��122* �6(   68   �� 5�      $
��122* �6(   68   �� 5�      $
��122* �6(   68   �� 5�      $
��159* �6(   68   �� 5�      $
��111* �6(   68   �� 5�      $
��124* �6(   68   �� 5�      $
��149* �6(   68   .+�5�      �� $��0��6!   $ Vertical=�6.   $��	35 10 0 0q�6E   .+�5�      �� $��Tiêu đề*��6$   #��[ 64   6X   �� 5�      $��5 0 0 0q�6$   $P��JViết ngắn gọn, chính xác vị trí và công việc cần tuyển.��65   #��[ 6t   6�   �� 5�      $��35��69   $��20(�6E   $��
5 10 100 0q�6S   $��1q�6g   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$U OVD: Nhân viên kinh doanh, Chăm sóc khách hàng, Lập trình viên PHP,...��6{   $��5 0 0 0q�5�      ��5�   "   �� *Title+5�   2   5�      �� 5�      $��1��6!   $ Vertical=�6.   $��	35 10 0 0q�6E   .+�5�      �� $"��Ngành nghề(Chuyên môn)*��6$   #��[ 6C   6g   �� 5�      $��5 0 0 0q�6$   $D��>Ngành nghề liên quan đến vị trí tuyển dụng này.��65   #��[ 6l   6�   �� 5�      $��35��6:   $��20(�6F   $��
5 10 100 0q�6T   $��1q�6h   $2 ,VD: Lập trình, Thiết kế, Marketing...��6|   $��5 0 0 0q�5�      ��5�   "   �� *Major+5�   2   5�      �� 5�      $��2��6!   $ Vertical=�6.   $��	35 10 0 0q�6E   .+�5�      �� $��Địa chỉ làm việc*��6$   #��[ 6=   6a   �� 5�      $��5 0 0 0q�6$   $I��CỨng viên khi đi làm, sẽ làm việc tại địa chỉ này.��65   #��[ 6n   6�   �� 5�      $��35��69   $��20(�6E   $��
5 10 100 0q�6S   $��1q�6g   $u oVD: Tầng 46, Tòa Nhà Bitexco Financial Tower, Số 2 Hải Triều, Phường Bến Nghé, Quận 1, TP.HCM��6{   $��5 0 0 0q�5�      ��5�   "   �� *Place+5�   2   5�      �� 5�      $��3��6   $	��0 1q�6*   ���	#FFBDBDBD$��
40 10 70 0q�6X   ._�5�      � 	 5�      �� 5�   "   62   �� 5�   "   62   .+�5�      � $��0��6#    5�   "   �� 5�   &   69   �� 5�   &   69   .+�5�   "   �� $��0��6-   $ Vertical=�6=   .+�5�   &   �� $��20(�60   $ 	10 10 0 0q�6>   $��Loại hình*: ��6S   6j   �� 5�   &   $��35��6G   $��20(�6S   $��	5 0 100 0q�6a   $��1q�6t   $6 0VD: Công ty nước ngoài, Khởi nghiệp,...��6�   $��5 0 0 0q�5�   :   ��5�   .   �� *	TypeJob+5�   N   5�   #   �� 5�   "   $��1��6-   .+�5�   &   �� $��0��61   $ Vertical=�6A   .+�5�   *   �� $��20(�64   $ 	10 10 0 0q�6B   $��
Lương*: ��6X   6k   �� 5�   *   $��35��6J   $��20(�6V   $��	5 0 100 0q�6d   $��1q�6w   $+ %VD: $500-$1000, Thương lượng,...��6�   $��5 0 0 0q�5�   :   ��5�   2   �� *Salary+5�   N   5�   '   5�   #   5�      � 5�      $��1��6#   $��0 0 0 15q�60    5�   "   �� 5�   &   69   �� 5�   &   69   .+�5�   "   �� $��0��6-   .+�5�   &   �� $��0��61   $ Vertical=�6A   .+�5�   *   �� $��20(�65   $ 	10 10 0 0q�6C   $!��Tính chất công việc: ��6X   6x   �� 5�   *   $��35��6O   $��20(�6[   $��	5 0 100 0q�6i   $��1q�6|   $0 *VD: Toàn thời gian, bán thời gian...��6�   $��5 0 0 0q�5�   :   ��5�   2   �� *NatureOfJob+5�   N   5�   '   5�   #   �� 5�   "   $��1��6-   .+�5�   &   �� $��0��61   $ Vertical=�6A   .+�5�   *   �� $��20(�64   $ 	10 10 0 0q�6B   $)��#Ngày đăng tuyển (MM/dd/yyyy): ��6W   6�   �� 5�   *   $��35��6P   $��20(�6\   $��	5 0 100 0q�6j   $��1q�6}   $" VD: 2/23/2019 (MM/dd/yyy)...��6�   $��5 0 0 0q�5�   :   ��5�   2   �� *Timeregister+5�   N   5�   '   5�   #   5�      5�      5�      �� 5�      $��4��6!   $ Vertical=�6.   $��	35 10 0 0q�6E   .+�5�      �� $��Mô tả công việc*��6$   #��[ 6<   6`   �� 5�      $��5 0 0 0q�6$   $K��EMô tả công việc phải làm dựa theo vị trí ứng tuyển.��65   #��[ 6p   6�   �� 5�      $��20(�6@   $��
5 10 100 0q�6N   $��1q�6b    �� TextWrapping$
 Wrap=�6v   $��5 0 0 0q�5�      " �� VerticalScrollBarVisibility$
 Auto=�60   ��5�   "   �� *Descriptions+5�   U   5�      �� 5�      $��5��6!   $ Vertical=�6.   $��	35 10 0 0q�6E   .+�5�      �� $��Yêu cầu ứng viên*��6$   #��[ 6=   6a   �� 5�      $��5 0 0 0q�6$   $����Các kỹ năng chuyên môn của ứng viên để đáp ứng nhu cầu công việc, các kỹ năng được ưu tiên của ứng viên... vv.��65   #��[ 6�   6�   �� 5�      $��20(�6;   $��
5 10 100 0q�6I   $��1q�6]   $
 Wrap=�6q   $��5 0 0 0q�5�      $
 Auto=�60   ��5�   "   �� *	Request+5�   U   5�      �� 5�      $��6��6!   $ Vertical=�6.   $��
35 10 0 25q�6E   .+�5�      �� $!��Quyền lợi ứng viên *��6$   #��[ 6@   6d   �� 5�      $��5 0 0 0q�6$   $����Các quyền lợi ứng viên được hưởng khi được nhận vào công ty như chế độ đào tạo, bảo hiểm, nghỉ mát, hoa hồng.. vv��65   #��[ 6�   6�   �� 5�      $��20(�6<   $��
5 10 100 0q�6J   $��1q�6^   $
 Wrap=�6r   $��5 0 0 0q�5�      $
 Auto=�60   ��5�   "   �� *
MoreInfo+5�   U   5�      5�      5�      5�      5�      5�      