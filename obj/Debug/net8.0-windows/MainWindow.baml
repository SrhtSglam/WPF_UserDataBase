   M S B A M L   `   `   `  ����K  GWPF_UserDataBase, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:WPF_UserDataBaseWPF_UserDataBase  5   	   !    WPF_UserDataBase.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:WPF_UserDataBase     5   	     � Title$  
MainWindow��5   	   $	��720��6   $
��1280��6)   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $	��640 �6   �� 5      $	��640 �6    � RowDefinitions 5   
   �� 5      $	��360 �6   �� 5      $	��360 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ grdDataTable��5      $��0��6)   $��2��66   $��0��6G   �� 5   
    �� Orientation$ Vertical=�6   $��center=�6,   $��0��6I   $��2��6V    � 	Resources 5       �� 
TargetType �� Property �� Value��%�   '��       '�� M     �� 5      " ��6   .�5      ��  � ��$ 5,5,5,5q�6/   5      �� 5      " ��6   .�5      ��  � ��$ 	10,5,10,5q�6/   5      5      .+�5      �� -   5        	 ��Name$	 txtName��5      $	��150��6'   $��30��63   �� 5      -   5        $	 
txtSurname��5      $	��150��6*   $��30��66   �� 5       -   5        $	 txtAge��5       $��75��6&   $��30��61   �� 5!      -   5        
 ��Name$
 
btnAddUser��5!      $	��150��6)   $��30��65   .��6W   
Add User6a   �� 5"      -   5        $
 btnRemoveUser��5"      $	��150��6,   $��30��68   .��6D   Remove User6Q   5#      �� 5%   
   $ 
Horizontal=�6   $��center=�6.   $��2��6K   $��2��6X    5&      ��%Y   '��       �� 5'      " ��6   .�5(      ��  � ��$ 	10,0,10,0q�6/   5)      5*      .+�5+      �� -   5        $
 btnClearData��5+      $	��150��6+   $��30��67   .��6[   Clear JSON File6l   �� 5,      -   5        $
 
btnGetData��5,      $	��150��6)   $��30��65   .��6W   Get JSON File6f   5-      5.      5/      