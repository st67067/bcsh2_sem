   M S B A M L   `   `   `  ����C  ?RideWise, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:RideWise.ViewModelRideWise.ViewModel  5   	       RideWise.View.LoginWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   6	viewModel clr-namespace:RideWise.ViewModel     5   	     � Title$  Login��5   	   $	��210��6   $	��300��6$    � DataContext 5      '   !RideWise.ViewModel.LoginViewModel  5   
   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��0��6   $��	Username:��6   �� 5   
   $��1��6   $	��200��6^   $��0,5,0,5q�6j   ��6   �� *
Username+ �� UpdateSourceTrigger$ PropertyChanged=�6j   �� 5   
   $��2��6   $��	Password:��6   G� 5   
   -   5        $��3��5      $	��200��6#   $��0,5,0,5q�6/   6@   �� 5   
   $��4��6   $��10q�6"    �� Orientation$ 
Horizontal=�6/   $��Right=�6H   .+�5      �� $��Login��6   $��75��6%   $��5q�60   ��6;   �� *LoginCommand+��6\   ��  �� RelativeSource ��  �� AncestorType
 Window�� 5      -   5        $��Cancel��5      $��75��6&   $��5q�61   6<   5      5      5      