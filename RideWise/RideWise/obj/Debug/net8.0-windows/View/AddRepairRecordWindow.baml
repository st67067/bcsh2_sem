   M S B A M L   `   `   `  ����C  ?RideWise, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:RideWise.ViewRideWise.View  5   	   7 clr-namespace:RideWise.ViewModelRideWise.ViewModel  5   	   )    #RideWise.View.AddRepairRecordWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:RideWise.View     5   	   6	viewModel clr-namespace:RideWise.ViewModel     5   	     � Title$  AddRepairRecordWindow��5	   	   $	��210��6'   $	��350��64    � DataContext 5
      1   +RideWise.ViewModel.AddRepairRecordViewModel  5   
   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��0��6   $��
Car Plate:��6   �� 5   
    �� 
IsEditable$
 True��6   $	��200��5      ��5      �� *Suggestions+ �� Text 5      �� *Plate+ �� UpdateSourceTrigger$ PropertyChanged=�5      �� 5    
   $��2��6   $��Additional information:��6   �� 5!   
   $��3��6   $	��200��6Z   $��0,5,0,5q�6f   ��6   �� *Info+$ PropertyChanged=�6f   �� 5#   
   $��4��6   $��10q�6"    �� Orientation$ 
Horizontal=�6/   $��Right=�6H   .+�5$      �� $	��Add��6   $��75��6#   $��5q�6.   ��69   �� *
AddCommand+��6X   ��  �� RelativeSource ��  �� AncestorType
 Window�� 5%      $��75��6   $��5q�6    $��Cancel��6+   	 �� IsCancel$
	 True��6<   5&      5'      5(      