   M S B A M L   `   `   `  ���� C  ?RideWise, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:RideWiseRideWise  7 clr-namespace:RideWise.ViewModelRideWise.ViewModel      RideWise.MainWindow   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:RideWise     6	viewModel clr-namespace:RideWise.ViewModel       � Title$  
Car Rental��$	��450��$	��800�� � DataContext &    RideWise.ViewModel.MainViewModel  .��� $��10q� � RowDefinitions �� $
��Auto ��� $��* � � ColumnDefinitions �� $��* ��� $��* �.+��� .��Choose a car�� $��0��$��1�� �� Orientation$ 
Horizontal=�$��Right=�$��5,0,0,0q�.+��� $��Login��$��0��$��1��$��Right=����� *LoginCommand+����  �� 
TargetType" ��.���  �� Property � y� �� Value$ Visible=� �� Triggers �� 	 �� Binding	 �� *
IsLoggedIn+
 �� Value
 True.a���  � y�$ 	Collapsed=��� $��SignUp��$��0��$��1��$��Right=�$��5,0,0,0q����� *SignUpCommand+���� " ��.���  � y�$ Visible=� �� 	 �� *
IsLoggedIn+
 True.a���  � y�$ 	Collapsed=��� $��
Add Record��$��0��$��1��$
��Left=�$��	10,0,10,0q����� *RepairCommand+���� " ��.���  � y�$ 	Collapsed=� �� 	 �� *HigherPermissions+
 True.a���  � y�$ Visible=��� $��Segoe MDL2 Assets)�$	����$��16(�$��5q����� " ��.���  � y�$ 	Collapsed=� �� 	 �� *
IsLoggedIn+
 True.a���  � y�$ Visible=��� $��Account��$��0��$��1��$
��Left=�$��5,0,0,0q����� *ShowUserInfoCommand+���� " ��.���  � y�$ 	Collapsed=� �� 	 �� *
IsLoggedIn+
 True.a���  � y�$ Visible=��� $��Log Out��$��0��$��1��$
��Left=�$��5,0,0,0q����� *LogOutCommand+���� " ��.���  � y�$ 	Collapsed=� �� 	 �� *
IsLoggedIn+
 True.a���  � y�$ Visible=��� $��1��$��Stretch=����� *Cars+ �� SelectedItem �� *SelectedCar+���� .R��� 
������ $��0q�$��Stretch=����� *#!DataContext.ShowCarDetailsCommand+ �� RelativeSource ��  �� AncestorType ListBox���� .���� $ Vertical=�.+���  �� TextAlignment$
 Left=����� *Brand+ �� StringFormat$ 
Brand: {0}���� $
 Left=����� *Type+$ 
Model: {0}���� $
 Left=����� *Price+$ Price: {0:C}���� $��0��$	��345���� $��1��$��1��$��Stretch=����� *	Repairs+���� " ��.���  � y�$ 	Collapsed=� �� 	 �� *DataContext.HigherPermissions+ ��  ListBox
 True.a���  � y�$ Visible=����� .R��� 
������ $��0q�$��Stretch=�.���� $ Vertical=�.+��� $
 Left=����� *
CarPlate+$ CarPlate: {0}���� $
 Left=����� *
Username+$ Username: {0}���� $
 Left=����� *Info+$ Info: {0:C}���� $��0��$	��345��