   M S B A M L   `   `   `  ����C  ?RideWise, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:RideWiseRideWise  5   	   7 clr-namespace:RideWise.ViewModelRideWise.ViewModel  5   	       RideWise.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:RideWise     5   	   6	viewModel clr-namespace:RideWise.ViewModel     5   	     � Title$  
Car Rental��5	   	   $	��450��6   $	��800��6)    � DataContext 5      &    RideWise.ViewModel.MainViewModel  5   
   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� .��6   Choose a car6   �� 5   
   $��0��6   $��1��6"    �� Orientation$ 
Horizontal=�62   $��Right=�6K   .+�5      �� $��Login��6   $��0��6F   $��1��6S   $��Right=�6c   ��6%   �� *LoginCommand+��5      �� 5        �� 
TargetType" ��6   .�5!      ��  �� Property � y� �� Value$ Visible=�67    �� Triggers 5"      �� 5#      	 �� Binding	 6*   �� *
IsLoggedIn+
 �� Value
 True6I   .a�5$   "   ��  � y�$ 	Collapsed=�6?   5%      5'      5)      �� 5,      $��Segoe MDL2 Assets)�6   $	����67   $��16(�6G   $��5q�6U   ��5-      �� 5.      " ��6   .�5/      ��  � y�$ 	Collapsed=�67    50      �� 51      	 6*   �� *
IsLoggedIn+
 True6I   .a�52   "   ��  � y�$ Visible=�6?   53      55      57      �� 5:      $��Account��6   $��0��6'   $��1��64   $
��Left=�6D   $��5,0,0,0q�6_   ��5;      �� *ShowUserInfoCommand+��5<      �� 5=      " ��6   .�5>      ��  � y�$ 	Collapsed=�67    5?      �� 5@      	 6*   �� *
IsLoggedIn+
 True6I   .a�5A   "   ��  � y�$ Visible=�6?   5B      5D      5F      5G      �� 5J   
   $��1��6   $��Stretch=�5K   
   ��5J      �� *Cars+ �� SelectedItem 6<   �� *SelectedCar+��5L      �� 5M      .R�5N      �� 
������ $��0q�5P   .   $��Stretch=�5Q      ��5N      �� *#!DataContext.ShowCarDetailsCommand+ �� RelativeSource ��  �� AncestorType ListBox��5O      �� .��5R      �� $ Vertical=�6%   .+�5S      ��  �� TextAlignment$
 Left=�6Z   ��6(   �� *Brand+ �� StringFormat$ 
Brand: {0}��6Z   �� 5T      $
 Left=�6Y   ��6(   �� *Type+$ 
Model: {0}��6Y   �� 5U      $
 Left=�6\   ��6(   �� *Price+$ Price: {0:C}��6\   �� 5V      $��0��6(   $	��345��63   5W      5X      5Y      5[      5d      5e      