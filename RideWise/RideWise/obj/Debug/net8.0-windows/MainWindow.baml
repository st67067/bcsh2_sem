   M S B A M L   `   `   `  ����C  ?RideWise, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:RideWiseRideWise  5   	   7 clr-namespace:RideWise.ViewModelRideWise.ViewModel  5   	       RideWise.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:RideWise     5   	   6	viewModel clr-namespace:RideWise.ViewModel     5   	     � Title$  
Car Rental��5	   	   $	��450��6   $	��800��6)    � DataContext 5      &    RideWise.ViewModel.MainViewModel  5   
   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� .��6   Choose a car6   �� 5   
   $��0��6   $��1��6"    �� Orientation$ 
Horizontal=�62   $��Right=�5      $��5,0,0,0q�61   .+�5       �� $��Login��6   $��0��6F   $��1��6S   $��Right=�6c   ��6%   �� *LoginCommand+��5!      �� 5"       �� 
TargetType" ��6   .�5#      ��  �� Property � y� �� Value$ Visible=�67    �� Triggers 5$      �� 5%      	 �� Binding	 6*   �� *
IsLoggedIn+
 �� Value
 True6I   .a�5&   "   ��  � y�$ 	Collapsed=�6?   5'      5)      5+      �� 5.      $��SignUp��6   $��0��6H   $��1��6U   $��Right=�5/      $��5,0,0,0q�61   ��5.   &   �� *SignUpCommand+��50      �� 51      " ��6   .�52      ��  � y�$ Visible=�67    53      �� 54      	 6*   �� *
IsLoggedIn+
 True6I   .a�55   "   ��  � y�$ 	Collapsed=�6?   56      58      5:      �� 5=      $��
Add Record��6   $��0��6*   $��1��67   $
��Left=�6G   $��	10,0,10,0q�6b   ��5>      �� *RepairCommand+��5?      �� 5@      " ��6   .�5A      ��  � y�$ 	Collapsed=�67    5B      �� 5C      	 6*   �� *HigherPermissions+
 True6P   .a�5D   "   ��  � y�$ Visible=�6?   5E      5G      5I      �� 5L      $��Segoe MDL2 Assets)�6   $	����67   $��16(�6G   $��5q�6U   ��5M      �� 5N      " ��6   .�5O      ��  � y�$ 	Collapsed=�67    5P      �� 5Q      	 6*   �� *
IsLoggedIn+
 True6I   .a�5R   "   ��  � y�$ Visible=�6?   5S      5U      5W      �� 5Z      $��Account��6   $��0��6'   $��1��64   $
��Left=�6D   $��5,0,0,0q�6_   ��5[      �� *ShowUserInfoCommand+��5\      �� 5]      " ��6   .�5^      ��  � y�$ 	Collapsed=�67    5_      �� 5`      	 6*   �� *
IsLoggedIn+
 True6I   .a�5a   "   ��  � y�$ Visible=�6?   5b      5d      5f      �� 5i      $��Log Out��6   $��0��6'   $��1��64   $
��Left=�6D   $��5,0,0,0q�6_   ��5j      �� *LogOutCommand+��5k      �� 5l      " ��6   .�5m      ��  � y�$ 	Collapsed=�67    5n      �� 5o      	 6*   �� *
IsLoggedIn+
 True6I   .a�5p   "   ��  � y�$ Visible=�6?   5q      5s      5u      5v      �� 5z   
   $��1��6   $��Stretch=�5{   
   ��5z      �� *Cars+ �� SelectedItem 6<   �� *SelectedCar+��5|      �� 5}      .R�5~      �� 
������ $��0q�5�   .   $��Stretch=�5�      ��5~      �� *#!DataContext.ShowCarDetailsCommand+ �� RelativeSource ��  �� AncestorType ListBox��5      �� .��5�      �� $ Vertical=�6%   .+�5�      ��  �� TextAlignment$
 Left=�6Z   ��6(   �� *Brand+ �� StringFormat$ 
Brand: {0}��6Z   �� 5�      $
 Left=�6Y   ��6(   �� *Type+$ 
Model: {0}��6Y   �� 5�      $
 Left=�6\   ��6(   �� *Price+$ Price: {0:C}��6\   �� 5�      $��0��6(   $	��345��63   5�      5�      5�      5�      �� 5�   
   $��1��6   $��1��6   $��Stretch=�5�   
   ��5�   /   �� *	Repairs+��5�      �� 5�      " ��6   .�5�      ��  � y�$ 	Collapsed=�63    5�      �� 5�      	 6&   �� *DataContext.HigherPermissions+ ��  ListBox
 True6�   .a�5�      ��  � y�$ Visible=�6;   5�      5�      ��5�      �� 5�      .R�5�      �� 
������ $��0q�5�   .   $��Stretch=�5�      .��5�      �� $ Vertical=�6%   .+�5�      �� $
 Left=�6`   ��6(   �� *
CarPlate+$ CarPlate: {0}��6`   �� 5�      $
 Left=�6`   ��6(   �� *
Username+$ Username: {0}��6`   �� 5�      $
 Left=�6Z   ��6(   �� *Info+$ Info: {0:C}��6Z   �� 5�      $��0��6(   $	��345��63   5�      5�      5�      5�      5�      5�      