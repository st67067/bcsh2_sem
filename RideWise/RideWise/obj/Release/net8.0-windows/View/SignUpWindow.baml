   M S B A M L   `   `   `  ���� C  ?RideWise, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:RideWise.ViewModelRideWise.ViewModel  -clr-namespace:RideWise.ViewRideWise.View       RideWise.View.SignUpWindow   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6	viewModel clr-namespace:RideWise.ViewModel     -localclr-namespace:RideWise.View       � Title$  SignUpWindow��$	��320��$	��300�� � DataContext (   "RideWise.ViewModel.SignUpViewModel  .��� $��10q� � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��First name:���� $��1��$	��200��$��0,5,0,5q����� *	FirstName+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=��� $��2��$��
Last name:���� $��3��$	��200��$��0,5,0,5q����� *
LastName+$ PropertyChanged=�$ TwoWay=��� $��4��$��	Username:���� $��5��$	��200��$��0,5,0,5q����� *
UserName+$ PropertyChanged=�$ TwoWay=��� $��6��$��	Password:��G� -   $��7��$	��200��$��0,5,0,5q��� $��9��$��10q� �� Orientation$ 
Horizontal=�$��Right=�.+��� $��Create��$��75��$��5q����� *CreateCommand+����  �� RelativeSource ��  �� AncestorType
 Window�� -   $��Cancel��$��75��$��5q�