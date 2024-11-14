using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Windows;
using System.Windows.Input;
using CommunityToolkit.Mvvm.Input;
using LiteDB;
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

            using (var db = new LiteDatabase(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Database" + "cars.db")))
            {
                var collection = db.GetCollection<Car>("cars");

                /*collection.DeleteAll();
                if (collection.Count() == 0)
                {
                    collection.Insert(new Car(CarBrand.Toyota, "Corolla", "1ABC123", 15000));
                    collection.Insert(new Car(CarBrand.BMW, "X5", "3GHI789", 30000));
                    collection.Insert(new Car(CarBrand.Audi, "A1", "1ADA527", 15000));
                    collection.Insert(new Car(CarBrand.Audi, "A4", "4JKL012", 20000));
                    collection.Insert(new Car(CarBrand.MercedesBenz, "C-Class", "5MNO345", 35000));
                    collection.Insert(new Car(CarBrand.Volkswagen, "Golf", "6PQR678", 18000));
                    collection.Insert(new Car(CarBrand.Volvo, "XC90", "7STU901", 40000));
                    collection.Insert(new Car(CarBrand.BMW, "3 Series", "8VWX234", 28000));
                    collection.Insert(new Car(CarBrand.Audi, "Q5", "9YZA567", 32000));
                    collection.Insert(new Car(CarBrand.Toyota, "Camry", "1BCD890", 22000));
                    collection.Insert(new Car(CarBrand.Volkswagen, "Passat", "2EFG123", 25000));
                    collection.Insert(new Car(CarBrand.Volvo, "S60", "3HIJ456", 29000));
                    collection.Insert(new Car(CarBrand.MercedesBenz, "E-Class", "4KLM789", 45000));
                    collection.Insert(new Car(CarBrand.BMW, "X3", "5NOP012", 31000));
                }*/
                var carsFromDb = collection.FindAll();

                Cars.Clear();
                foreach (var car in carsFromDb)
                {
                    Cars.Add(car);
                }
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
