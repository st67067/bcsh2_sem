using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace RideWise.View
{
    /// <summary>
    /// Interakční logika pro UserInfoDialog.xaml
    /// </summary>
    public partial class UserInfoDialog : Window
    {
        public UserInfoDialog()
        {
            InitializeComponent();
        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
            this.Close();
        }

        private void ChangeInfoButton(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Are you sure you want to change your information?", "Question", MessageBoxButton.OK, MessageBoxImage.Question);
        }
    }
}
