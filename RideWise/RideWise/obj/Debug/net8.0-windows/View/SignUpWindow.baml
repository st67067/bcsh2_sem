   M S B A M L   `   `   `  ����C  ?RideWise, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:RideWise.ViewModelRideWise.ViewModel  5   	   -clr-namespace:RideWise.ViewRideWise.View  5   	        RideWise.View.SignUpWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6	viewModel clr-namespace:RideWise.ViewModel     5   	   -localclr-namespace:RideWise.View     5   	     � Title$  SignUpWindow��5	   	   $	��320��6   $	��300��6+    � DataContext 5      (   "RideWise.ViewModel.SignUpViewModel  5   
   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��0��6   $��First name:��6   �� 5   
   $��1��6   $	��200��6l   $��0,5,0,5q�6x   ��6   �� *	FirstName+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�6x   �� 5   
   $��2��6   $��
Last name:��6   �� 5    
   $��3��6   $	��200��6k   $��0,5,0,5q�6w   ��6   �� *
LastName+$ PropertyChanged=�$ TwoWay=�6w   �� 5"   
   $��4��6   $��	Username:��6   �� 5#   
   $��5��6   $	��200��6k   $��0,5,0,5q�6w   ��6   �� *
UserName+$ PropertyChanged=�$ TwoWay=�6w   �� 5%   
   $��6��6   $��	Password:��6   G� 5&   
   -   5        $��7��5&      $	��200��6#   $��0,5,0,5q�6/   6@   �� 5(   
   $��9��6   $��10q�6"    �� Orientation$ 
Horizontal=�6/   $��Right=�6H   .+�5)      �� $��Create��6   $��75��6&   $��5q�61   ��6<   �� *CreateCommand+��6^   ��  �� RelativeSource ��  �� AncestorType
 Window�� 5*      -   5        $��Cancel��5*      $��75��6&   $��5q�61   6<   5+      5,      5-      