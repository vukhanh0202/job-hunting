   M S B A M L   `   `   `  ���� B  >DemoJob, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:DemoJobDemoJob      DemoJob.RegisterJob   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  !localclr-namespace:DemoJob  -   $��registerJob��   RegisterJobVM  � DataContext#  [   � Icon$ Picture/LOGOMAIN.ico�� � Title$! Đăng tuyển dụng mới��$	��900��$
��1400�� � WindowStartupLocation$ CenterScreen=� � 	Resources  �� 
TargetType  tb �� Property �� Value  tbTilte  tbTilteExtra  txb��%>  &	       &	 %     &	 �     &	 �     �� " ��.���  � ��
 ������� " ��.���  � �� �#212A37��  � ��$ 32(���  � ��$ DemiBold"��� " ��.���  � �� �#212A37��  � ��$ 18(���  � ��$
 Thin"���  � ��$ Italic$��� " ��.���  � ��
 �����.���� .���  � ColumnDefinitions �� $	��85* ��� $
��263* �.+�� $��0�����#212A37	 � RowDefinitions	 �� $
��302* ��� $	��97* ��� $
��470* ��� $	��75* �.+�A� $��0��$	��200��$	��200��$��0 90 0 0q����� 
 j� Stretch$
 Uniform=� �� ImageSource �� *Avatar+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� NotifyOnSourceUpdated . � $��1��	 �� �� .+��� $��0��#��[ $��25(�$
��Bold"� �� TextAlignment$ Center=�$��Center=����� *DisplayName+�� $��1��$ Center=�#��[ $��22(����� *
IDCustom+�� $��2�� �� Orientation$ Vertical=�$��0 5 0 0q�.+��� 
���   �$��0 0 0 0q�$��50 5 0 0q�._��� $��2��$ 
Horizontal=�.+��� $"��Picture/location-outline.png��$��30��$��25���� -    ��Name$ CommentTextBox4��#��[ $��22(� �� Padding$ 20 0 0 0q�$
��Wrap=����� *	Address+�� 
���   �$��0 0 0 0q�$��	50 10 0 0q�._��� $ 
Horizontal=�.+��� $��Picture/Phone.png��$��30��$��25���� -   $ CommentTextBox2��#��[ $ 20 0 0 0q�$��22(����� *Phone+�� 
���   �$��0 0 0 0q�$��	50 10 0 0q�._��� $��1��$ 
Horizontal=�.+��� $��Picture/envelope.png��$��30��$��25���� -   $ CommentTextBox3��#��[ $��22(�$ 20 0 0 0q����� *Email+�� 
���   �$��0 0 0 0q�$��	50 10 0 0q�._��� $��1��$ 
Horizontal=�.+��� $��Picture/timetable.png��$��30��$��25���� #��[ $��22(�$ 20 0 0 0q����� *	TimeTable+�� $��3��$��50�����#F77839$��15q�$	��200�����	#FFE49049$��Đăng tuyển��$��24(����� *AddJobCommand+����  �� ElementName$ registerJob��� $��1��$��0 0 0 0q�	 �� $	��90* ��� $
��780* �.+�#  MaterialDesignThemes.Wpf.Card  $��0��+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth4=�$��80��$��	30 25 0 0q�$
��Bold"�$��35(����#212A37.��Tạo tuyển dụng mới� $��1��	 �� $
��122* ��� $
��122* ��� $
��122* ��� $
��159* ��� $
��111* ��� $
��124* ��� $
��149* �.+��� $��0��$ Vertical=�$��	35 10 0 0q�.+��� $��Tiêu đề*��#��[ �� $��5 0 0 0q�$P��JViết ngắn gọn, chính xác vị trí và công việc cần tuyển.��#��[ �� $��35��$��20(�$��
5 10 100 0q�$��1q�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$U OVD: Nhân viên kinh doanh, Chăm sóc khách hàng, Lập trình viên PHP,...��$��5 0 0 0q����� *Title+�� $��1��$ Vertical=�$��	35 10 0 0q�.+��� $"��Ngành nghề(Chuyên môn)*��#��[ �� $��5 0 0 0q�$D��>Ngành nghề liên quan đến vị trí tuyển dụng này.��#��[ �� $��35��$��20(�$��
5 10 100 0q�$��1q�$2 ,VD: Lập trình, Thiết kế, Marketing...��$��5 0 0 0q����� *Major+�� $��2��$ Vertical=�$��	35 10 0 0q�.+��� $��Địa chỉ làm việc*��#��[ �� $��5 0 0 0q�$I��CỨng viên khi đi làm, sẽ làm việc tại địa chỉ này.��#��[ �� $��35��$��20(�$��
5 10 100 0q�$��1q�$u oVD: Tầng 46, Tòa Nhà Bitexco Financial Tower, Số 2 Hải Triều, Phường Bến Nghé, Quận 1, TP.HCM��$��5 0 0 0q����� *Place+�� $��3��$	��0 1q����	#FFBDBDBD$��
40 10 70 0q�._�� 	 �� �� .+�� $��0�� �� �� .+��� $��0��$ Vertical=�.+��� $��20(�$ 	10 10 0 0q�$��Loại hình*: ���� $��35��$��20(�$��	5 0 100 0q�$��1q�$6 0VD: Công ty nước ngoài, Khởi nghiệp,...��$��5 0 0 0q����� *	TypeJob+�� $��1��.+��� $��0��$ Vertical=�.+��� $��20(�$ 	10 10 0 0q�$��
Lương*: ���� $��35��$��20(�$��	5 0 100 0q�$��1q�$+ %VD: $500-$1000, Thương lượng,...��$��5 0 0 0q����� *Salary+� $��1��$��0 0 0 15q� �� �� .+��� $��0��.+��� $��0��$ Vertical=�.+��� $��20(�$ 	10 10 0 0q�$!��Tính chất công việc: ���� $��35��$��20(�$��	5 0 100 0q�$��1q�$0 *VD: Toàn thời gian, bán thời gian...��$��5 0 0 0q����� *NatureOfJob+�� $��1��.+��� $��0��$ Vertical=�.+��� $��20(�$ 	10 10 0 0q�$)��#Ngày đăng tuyển (MM/dd/yyyy): ���� $��35��$��20(�$��	5 0 100 0q�$��1q�$" VD: 2/23/2019 (MM/dd/yyy)...��$��5 0 0 0q����� *Timeregister+�� $��4��$ Vertical=�$��	35 10 0 0q�.+��� $��Mô tả công việc*��#��[ �� $��5 0 0 0q�$K��EMô tả công việc phải làm dựa theo vị trí ứng tuyển.��#��[ �� $��20(�$��
5 10 100 0q�$��1q� �� TextWrapping$
 Wrap=�$��5 0 0 0q�" �� VerticalScrollBarVisibility$
 Auto=����� *Descriptions+�� $��5��$ Vertical=�$��	35 10 0 0q�.+��� $��Yêu cầu ứng viên*��#��[ �� $��5 0 0 0q�$����Các kỹ năng chuyên môn của ứng viên để đáp ứng nhu cầu công việc, các kỹ năng được ưu tiên của ứng viên... vv.��#��[ �� $��20(�$��
5 10 100 0q�$��1q�$
 Wrap=�$��5 0 0 0q�$
 Auto=����� *	Request+�� $��6��$ Vertical=�$��
35 10 0 25q�.+��� $!��Quyền lợi ứng viên *��#��[ �� $��5 0 0 0q�$����Các quyền lợi ứng viên được hưởng khi được nhận vào công ty như chế độ đào tạo, bảo hiểm, nghỉ mát, hoa hồng.. vv��#��[ �� $��20(�$��
5 10 100 0q�$��1q�$
 Wrap=�$��5 0 0 0q�$
 Auto=����� *
MoreInfo+