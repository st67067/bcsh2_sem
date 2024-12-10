using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Windows;
using System.Windows.Input;
using CommunityToolkit.Mvvm.Input;
using LiteDB;
using Microsoft.VisualBasic;
using RideWise.Database;
using RideWise.Model;
using RideWise.View;

namespace RideWise.ViewModel
{
    public class MainViewModel : INotifyPropertyChanged
    {
        private User loggedUser;

        private bool _isLoggedIn;
        public bool IsLoggedIn
        {
            get => _isLoggedIn;
            set
            {
                if (_isLoggedIn != value)
                {
                    _isLoggedIn = value;
                    OnPropertyChanged(nameof(IsLoggedIn)); // Notify about change
                }
            }
        }

        public ObservableCollection<Car> Cars { get; set; } = new ObservableCollection<Car>();
        private Car _selectedCar;

        public ICommand LoginCommand { get; }
        public ICommand ShowUserInfoCommand { get; }
        public ICommand ShowCarDetailsCommand { get; }

        public Car SelectedCar
        {
            get { return _selectedCar; }
            set
            {
                _selectedCar = value;
                OnPropertyChanged(nameof(SelectedCar));
            }
        }

        public MainViewModel()
        {
            LoginCommand = new RelayCommand(OpenLoginWindow);
            ShowUserInfoCommand = new RelayCommand(ShowUserInfo);
            ShowCarDetailsCommand = new RelayCommand<Car>(ShowCarDetails);

            
            var carCollection = DatabaseManager.Instance.GetCollection<Car>("cars");
            var carsFromDb = carCollection.FindAll();

            Cars.Clear();
            foreach (var car in carsFromDb)
            {
                Cars.Add(car);
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        private void OpenLoginWindow(object parameter)
        {
            var loginWindow = new LoginWindow();
            var loginViewModel = loginWindow.DataContext as LoginViewModel; //get LoginResultMessage from LoginViewModel
            var result = loginWindow.ShowDialog();

            if (result == true && loginViewModel != null)
            {
                // Načtení výsledku přihlášení z ViewModelu
                IsLoggedIn = true;
                loggedUser = loginViewModel.LoggedAccount;
                //MessageBox.Show(loggedUser.ToString());
            }
        }

        private void ShowUserInfo(object parameter)
        {
            var userInfoViewModel = new UserInfoViewModel
            {
                //LoggedUser = loggedUser
                Username = loggedUser.Username,
                FirstName = loggedUser.FirstName,
                LastName = loggedUser.LastName,
                Permission = loggedUser.Permission,
            };

            var userInfoDialog = new UserInfoDialog
            {
                DataContext = userInfoViewModel
            };
            userInfoDialog.ShowDialog();
        }

        private void ShowCarDetails(Car car)
        {
            if (car != null)
            {
                var carDetailsViewModel = new CarInfoViewModel(car);
                var detailsWindow = new CarInfoDialog
                {
                    DataContext = carDetailsViewModel
                };
                detailsWindow.ShowDialog();
            }
        }
    }
}
