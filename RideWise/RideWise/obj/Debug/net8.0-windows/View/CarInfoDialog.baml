   M S B A M L   `   `   `  ����C  ?RideWise, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:RideWise.ViewRideWise.View  5   	   !    RideWise.View.CarInfoDialog   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:RideWise.View     5   	     � Title$  CarInfo��5   	   $	��450��6   $	��800��6&   .��5
      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��0��6!   $
��Bold"�6c   $��14(�6u   ��61   �� *Brand+ �� StringFormat$ 
Brand: {0}��6u   �� 5   
   $��1��6   $��0��6!   $��12(�6b   ��61   �� *Type+$ 
Model: {0}��6b   �� 5   
   $��2��6   $��0��6!   $��12(�6e   ��61   �� *Price+$ Price: {0:C}��6e   �� 5    
   $��0��6   $��1��6   .��6-   Rent:64   �� 5!   
   $��1��6   $��1��6   .��6-   Starting Date:6=   (  "System.Windows.Controls.DatePicker  5"   
   $��2��6   $��1��6"   64   �� 5#   
   $��3��6   $��1��6   .��6-   Ending Date:6;     5$   
   $��4��6   $��1��6"   64   �� 5%   
   $��5��6   $��1��6   .��6-   Additional Information:6F   �� 5&   
   $��6��6   $��1��6   61   �� 5(   
   $��8��6   $��1��6"   $��Center=�62    �� Orientation$ 
Horizontal=�5)      .+�5*      �� $��10q�6   $	��150��6!   .��6-   Ok61   �� 5+      $��10q�6   $	��150��6!   .��6-   Cancel65   5,      5-      50      