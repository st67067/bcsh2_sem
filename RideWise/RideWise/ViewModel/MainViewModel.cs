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
        private bool _higherPermissions;
        public bool HigherPermissions
        {
            get => _higherPermissions;
            set
            {
                if (_higherPermissions != value)
                {
                    _higherPermissions = value;
                    OnPropertyChanged(nameof(HigherPermissions));
                }
            }
        }

        public ObservableCollection<Car> Cars { get; set; } = new ObservableCollection<Car>();
        private Car _selectedCar;
        public ObservableCollection<RepairRecords> Repairs { get; set; } = new ObservableCollection<RepairRecords>();

        public ICommand LoginCommand { get; }
        public ICommand ShowUserInfoCommand { get; }
        public ICommand ShowCarDetailsCommand { get; }
        public ICommand LogOutCommand { get; }
        public ICommand SignUpCommand { get; }
        public ICommand RepairCommand { get; }

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
            LogOutCommand = new RelayCommand<Car>(LogOut);
            SignUpCommand = new RelayCommand(SignUp);
            RepairCommand = new RelayCommand(AddRepairRecord);


            var carCollection = DatabaseManager.Instance.GetCollection<Car>("cars");
            var carsFromDb = carCollection.FindAll();

            Cars.Clear();
            foreach (var car in carsFromDb)
            {
                Cars.Add(car);
            }

            var repairCollection = DatabaseManager.Instance.GetCollection<RepairRecords>("repairs");
            var repairsFromDb = repairCollection.FindAll();

            Repairs.Clear();
            foreach (var repair in repairsFromDb)
            {
                Repairs.Add(repair);
            }
        }

        private void AddRepairRecord(object obj)
        {
            var repairWindow = new AddRepairRecordWindow();
            repairWindow.ShowDialog();
            var repairCollection = DatabaseManager.Instance.GetCollection<RepairRecords>("repairs");
            var repairsFromDb = repairCollection.FindAll();
            Repairs.Clear();
            foreach (var repair in repairsFromDb)
            {
                Repairs.Add(repair);
            }
        }

        private void SignUp(object obj)
        {
            var signUpWindow = new SignUpWindow();
            signUpWindow.ShowDialog();
        }

        private void LogOut(Car? car)
        {
            IsLoggedIn = false;
            UserSession.Instance.IsLoggedIn = false;
            UserSession.Instance.LoggedUser = null;
            HigherPermissions = false;
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
                UserSession.Instance.IsLoggedIn = true;
                UserSession.Instance.LoggedUser = loginViewModel.LoggedAccount;
                IsLoggedIn = true;
                loggedUser = loginViewModel.LoggedAccount;
                //MessageBox.Show(UserSession.Instance.IsLoggedIn.ToString());
                if (!UserSession.Instance.LoggedUser.Permission.Equals(Permission.None))
                {
                    HigherPermissions = true;
                }
            }
        }

        private void ShowUserInfo(object parameter)
        {
            var userInfoViewModel = new UserInfoViewModel
            {
                //LoggedUser = loggedUser
                Username = UserSession.Instance.LoggedUser.Username,
                FirstName = UserSession.Instance.LoggedUser.FirstName,
                LastName = UserSession.Instance.LoggedUser.LastName,
                Permission = UserSession.Instance.LoggedUser.Permission,
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
