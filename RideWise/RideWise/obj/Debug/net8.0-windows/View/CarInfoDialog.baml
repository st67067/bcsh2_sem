   M S B A M L   `   `   `  ����C  ?RideWise, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:RideWise.ViewRideWise.View  5   	   !    RideWise.View.CarInfoDialog   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:RideWise.View     5   	     � Title$  CarInfo��5   	   $	��450��6   $	��737��6&   .��5
      �� $��10q�6    �� Orientation$ 
Horizontal=�6   .+�5   
   � $��10q�6   $	��300��6    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    .+�5      �� $��0��6   $
��Bold"�6W   $��14(�6i   ��6%   �� *Brand+ �� StringFormat$ 
Brand: {0}��6i   �� 5      $��1��6   $��12(�6V   ��6%   �� *Type+$ 
Model: {0}��6V   �� 5      $��2��6   $��12(�6Y   ��6%   �� *Price+$ Price: {0:C}��6Y   �� 5      $��3��6   $	��200��6>   $	��200��6J   $��Center=�6W   ��6!   �� *	ImagePath+6W   5      � 5   
   $��10q�6   $	��300��6    5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5       $
��Auto �6    �� 5!      $
��Auto �6    �� 5"      $
��Auto �6    �� 5#      $
��Auto �6    �� 5$      $
��Auto �6    .+�5'      �� $��0��6   .��6!   Rent:6(   �� 5(      $��1��6   .��6!   Starting Date:61   (  "System.Windows.Controls.DatePicker  5)      $��2��6      SelectedDate 6&   �� *	StartDate+ �� Mode$ TwoWay=��� 5*      $��3��6   .��6!   Ending Date:6/     5+      $��4��6    6&   �� *	EndDate+$ TwoWay=��� 5,      $��5��6   .��6!   Additional Information:6:   �� 5-      $��6��6   ��6#   �� *AdditionalInfo+$ TwoWay=��� 5/      $��8��6   $��Center=�6&   $��Center=�50      $ 
Horizontal=�64   $��0 50 0 0q�51      .+�52      �� $��10q�6   $	��125��6%   ��61   �� *	OkCommand+��6O   ��  �� RelativeSource ��  �� AncestorType
 Window.��6�   Ok6�   �� 53      $��10q�6   $	��125��6%   $��Cancel��61    �� IsCancel$
 True��6B   54      55      56      5:      