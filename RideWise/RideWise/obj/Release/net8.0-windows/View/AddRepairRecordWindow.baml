   M S B A M L   `   `   `  ���� C  ?RideWise, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:RideWise.ViewRideWise.View  7 clr-namespace:RideWise.ViewModelRideWise.ViewModel  )    #RideWise.View.AddRepairRecordWindow   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     -localclr-namespace:RideWise.View     6	viewModel clr-namespace:RideWise.ViewModel       � Title$  AddRepairRecordWindow��$	��210��$	��350�� � DataContext 1   +RideWise.ViewModel.AddRepairRecordViewModel  .��� $��10q� � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��
Car Plate:���� $��1��$	��200��$��0,5,0,5q����� *Plate+ �� UpdateSourceTrigger$ PropertyChanged=��� $��2��$��Additional information:���� $��3��$	��200��$��0,5,0,5q����� *Info+$ PropertyChanged=��� $��4��$��10q� �� Orientation$ 
Horizontal=�$��Right=�.+��� $��Login��$��75��$��5q����� *
AddCommand+����  �� RelativeSource ��  �� AncestorType
 Window�� $��75��$��5q�$��Cancel�� �� IsCancel$
 True��