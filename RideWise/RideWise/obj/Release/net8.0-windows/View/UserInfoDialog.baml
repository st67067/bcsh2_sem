   M S B A M L   `   `   `  ���� C  ?RideWise, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:RideWise.ViewModelRideWise.ViewModel  "    RideWise.View.UserInfoDialog   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     6	viewModel clr-namespace:RideWise.ViewModel       � Title$  User Information��$	��320��$	��450�� � DataContext *   $RideWise.ViewModel.UserInfoViewModel  .��� $��10q� � ColumnDefinitions �� $��* ��� $��* �.+��� .+��� .��	Username:�� $��14(�$
��Bold"�$	��0,5q����� *
Username+�� .��
FirstName:�� $	��0,5q����� *	FirstName+�� .��	LastName:�� $	��0,5q����� *
LastName+�� .��Permission:�� $	��0,5q����� *
Permission+��  �� Orientation$ 
Horizontal=�$��10q�.+��� -   $��Close��$��75��$��Center=�$��
10,10,10,0q��� $��1��$ 
Horizontal=�.+��� $	��200������ *RentRecords+���� .R��� .+���  �� TextAlignment$
 Left=����� *
CarPlate+ �� StringFormat$ CarPlate: {0}���� $
 Left=����� *
Username+$ Username: {0}���� $
 Left=����� *	StartTime+$ StartTime: {0:MM/dd/yyyy}���� $
 Left=����� *	EndTime+$ EndTime: {0:MM/dd/yyyy}���� $
 Left=����� *Info+$ Additional Info: {0}���� $��1��$	��345��