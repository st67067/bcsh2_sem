using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Windows;
using System.Windows.Input;
using RideWise.Model;
using RideWise.View;

namespace RideWise.ViewModel
{
    public class MainViewModel : INotifyPropertyChanged
    {
        public ObservableCollection<Car> Cars { get; set; }
        private Car _selectedCar;

        public ICommand LoginCommand { get; }

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

            Cars = new ObservableCollection<Car>
            {
                new Car (CarBrand.Toyota, "Corolla","1ABC123",15000 ),
                new Car (CarBrand.BMW, "X5", "3GHI789", 30000),
                new Car (CarBrand.Audi, "A1", "1ADA527", 15000),
                new Car (CarBrand.Audi, "A4", "4JKL012", 20000),
            };
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        private void OpenLoginWindow(object parameter)
        {
            // Vytvoření a zobrazení přihlašovacího okna
            LoginWindow loginWindow = new LoginWindow();
            loginWindow.Owner = Application.Current.MainWindow;

            bool? result = loginWindow.ShowDialog();

            if (result == true)
            {
                // Můžeme získat data z přihlašovacího okna, pokud bylo přihlášení úspěšné
                // Např. uložit přihlášeného uživatele nebo stav
                
            }
        }
    }
}
