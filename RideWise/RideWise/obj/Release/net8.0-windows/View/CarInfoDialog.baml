   M S B A M L   `   `   `  ���� C  ?RideWise, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:RideWise.ViewRideWise.View  !    RideWise.View.CarInfoDialog   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     -localclr-namespace:RideWise.View       � Title$  CarInfo��$	��450��$	��737��.���� $��10q� �� Orientation$ 
Horizontal=�.+�� $��10q�$	��300�� � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$
��Bold"�$��14(����� *Brand+ �� StringFormat$ 
Brand: {0}���� $��1��$��12(����� *Type+$ 
Model: {0}���� $��2��$��12(����� *Price+$ Price: {0:C}���� $��3��$	��200��$	��200��$��Center=����� *	ImagePath+� $��10q�$	��300�� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��.��Rent:�� $��1��.��Starting Date:(  "System.Windows.Controls.DatePicker  $��2��   SelectedDate �� *	StartDate+ �� Mode$ TwoWay=��� $��3��.��Ending Date:  $��4�� �� *	EndDate+$ TwoWay=��� $��5��.��Additional Information:�� $��6������ *AdditionalInfo+$ TwoWay=��� $��8��$��Center=�$��Center=�$ 
Horizontal=�$��0 50 0 0q�.+��� $��10q�$	��125������ *	OkCommand+����  �� RelativeSource ��  �� AncestorType
 Window.��Ok�� $��10q�$	��125��$��Cancel�� �� IsCancel$
 True��