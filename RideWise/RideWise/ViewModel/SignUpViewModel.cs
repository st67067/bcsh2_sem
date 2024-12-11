using CommunityToolkit.Mvvm.Input;
using RideWise.Database;
using RideWise.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Reflection.Metadata;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace RideWise.ViewModel
{
    public class SignUpViewModel : INotifyPropertyChanged
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public ICommand CreateCommand { get; }

        public SignUpViewModel()
        {
            CreateCommand = new RelayCommand<Window>(SignUp);
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged(string propertyName) =>
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        private void SignUp(Window? window)
        {
            var userCollection = DatabaseManager.Instance.GetCollection<User>("users");
            if (!(string.IsNullOrWhiteSpace(FirstName) || string.IsNullOrWhiteSpace(LastName) || string.IsNullOrWhiteSpace(UserName) || string.IsNullOrWhiteSpace(Password)))
            {
                var existingUser = userCollection.FindOne(u => u.Username == UserName);
                if (existingUser != null)
                {
                    MessageBox.Show($"A user with username '{UserName}' already exists.");
                    return;
                }
                else 
                {
                    userCollection.Insert(new User(UserName, PasswordHelper.HashPassword(Password), FirstName, LastName, Permission.None));
                    MessageBox.Show("Account created.");
                    window.Close();
                }
                
            }
            else 
            {
                MessageBox.Show("All fields are required.");
            }
        }


    }
}
