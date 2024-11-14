using CommunityToolkit.Mvvm.Input;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows;
using LiteDB;
using RideWise.Model;
using System.IO;

namespace RideWise.ViewModel
{
    public class LoginViewModel : INotifyPropertyChanged
    {

        public string Username { get; set; }
        public string Password { get; set; }
        public User LoggedAccount { get; private set; }

        public ICommand LoginCommand { get; }

        public LoginViewModel()
        {
            LoginCommand = new RelayCommand(ExecuteLogin, CanExecuteLogin);
        }

        private bool CanExecuteLogin(object parameter)
        {
            return !string.IsNullOrWhiteSpace(Username) && !string.IsNullOrWhiteSpace(Password);
        }

        private void ExecuteLogin(object parameter)
        {
            using (var db = new LiteDatabase(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Database" + "users.db")))
            {
                var collection = db.GetCollection<User>("users");

                /*collection.DeleteAll();
                if (collection.Count() == 0)
                {
                    collection.Insert(new User("oliver", "123", "Oliver", "Harrison", Permission.Admin));
                    collection.Insert(new User("emily", "123", "Emily", "Carter", Permission.Worker));
                    collection.Insert(new User("james", "123", "James", "Mitchell", Permission.None));
                    collection.Insert(new User("sarah", "123", "Sarah", "Bennett", Permission.None));
                }*/

                var user = collection.FindOne(u => u.Username == Username && u.Password == Password);
                if (user != null)
                {
                    //MessageBox.Show("Login successful!", "Info", MessageBoxButton.OK, MessageBoxImage.Information);
                    LoggedAccount = user;
                    ((Window)parameter).DialogResult = true;
                }
                else
                {
                    MessageBox.Show("Invalid username or password.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    //MessageBox.Show(Username + " " + Password, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }

        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged(string propertyName) =>
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
    public class RelayCommand : ICommand
    {
        private readonly Action<object> _execute;
        private readonly Func<object, bool> _canExecute;

        public RelayCommand(Action<object> execute, Func<object, bool> canExecute = null)
        {
            _execute = execute;
            _canExecute = canExecute;
        }

        public bool CanExecute(object parameter) => _canExecute == null || _canExecute(parameter);

        public void Execute(object parameter) => _execute(parameter);

        public event EventHandler CanExecuteChanged
        {
            add => CommandManager.RequerySuggested += value;
            remove => CommandManager.RequerySuggested -= value;
        }
    }
}
