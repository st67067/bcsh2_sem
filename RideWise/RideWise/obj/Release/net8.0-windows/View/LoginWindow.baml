   M S B A M L   `   `   `  ���� C  ?RideWise, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:RideWise.ViewModelRideWise.ViewModel      RideWise.View.LoginWindow   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     6	viewModel clr-namespace:RideWise.ViewModel       � Title$  Login��$	��210��$	��300�� � DataContext '   !RideWise.ViewModel.LoginViewModel  .��� $��10q� � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��	Username:���� $��1��$	��200��$��0,5,0,5q����� *
Username+ �� UpdateSourceTrigger$ PropertyChanged=��� $��2��$��	Password:��G� -   $��3��$	��200��$��0,5,0,5q��� $��4��$��10q� �� Orientation$ 
Horizontal=�$��Right=�.+��� $��Login��$��75��$��5q����� *LoginCommand+����  �� RelativeSource ��  �� AncestorType
 Window�� -   $��Cancel��$��75��$��5q�