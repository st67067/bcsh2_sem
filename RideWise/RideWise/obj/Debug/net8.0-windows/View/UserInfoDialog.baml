   M S B A M L   `   `   `  ����C  ?RideWise, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:RideWise.ViewModelRideWise.ViewModel  5   	   "    RideWise.View.UserInfoDialog   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   6	viewModel clr-namespace:RideWise.ViewModel     5   	     � Title$  User Information��5   	   $	��320��6"   $	��450��6/    � DataContext 5      *   $RideWise.ViewModel.UserInfoViewModel  5   
   .��5      � $��10q�6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� .+�5      �� .��6   	Username:6   �� 5      $��14(�60   $
��Bold"�6>   $	��0,5q�6P   ��6   �� *
Username+6P   �� 5      .��6   
FirstName:6    �� 5      $	��0,5q�61   ��6   �� *	FirstName+61   �� 5      .��6   	LastName:6   �� 5      $	��0,5q�60   ��6   �� *
LastName+60   �� 5      .��6   Permission:6!   �� 5      $	��0,5q�64   ��6   �� *
Permission+64   �� 5       �� Orientation$ 
Horizontal=�6   $��10q�62   .+�5      �� -   5        $��Close��5      $��75��6)   $��Center=�5      $��
10,10,10,0q�66   5      5       5"      �� 5#   
   $��1��6   $ 
Horizontal=�6%   .+�5$      �� $	��200��6:   ��6   �� *RentRecords+��5%      �� 5&      .R�5'      �� .+�5(      ��  �� TextAlignment$
 Left=�6`   ��6(   �� *
CarPlate+ �� StringFormat$ CarPlate: {0}��6`   �� 5)      $
 Left=�6`   ��6(   �� *
Username+$ Username: {0}��6`   �� 5*      $
 Left=�6m   ��6(   �� *	StartTime+$ StartTime: {0:MM/dd/yyyy}��6m   �� 5+      $
 Left=�6i   ��6(   �� *	EndTime+$ EndTime: {0:MM/dd/yyyy}��6i   �� 5,      $
 Left=�6c   ��6(   �� *Info+$ Additional Info: {0}��6c   �� 5-      $��1��6(   $	��345��63   5.      5/      51      52      53      54      