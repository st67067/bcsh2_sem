using RideWise.Database;
using RideWise.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows;
using System.Collections.ObjectModel;

namespace RideWise.ViewModel
{
    public class AddRepairRecordViewModel : INotifyPropertyChanged
    {
        private string _plate;
        public string Plate
        {
            get => _plate;
            set
            {
                _plate = value;
                OnPropertyChanged(nameof(Plate));
                UpdateSuggestions();
            }
        }
        public string? Info { get; set; }

        public ICommand AddCommand { get; }

        private ObservableCollection<string> _suggestions = new ObservableCollection<string>();
        public ObservableCollection<string> Suggestions
        {
            get => _suggestions;
            set
            {
                _suggestions = value;
                OnPropertyChanged(nameof(Suggestions));
            }
        }

        private readonly List<string> _allItems;

        public AddRepairRecordViewModel()
        {
            _allItems = LoadPlatesFromDatabase();
            AddCommand = new RelayCommand(ExecuteLogin, CanExecuteLogin);
        }

        private List<string> LoadPlatesFromDatabase()
        {
            var carCollection = DatabaseManager.Instance.GetCollection<Car>("cars");
            return carCollection.FindAll().Select(car => car.RegPlate).ToList();
        }


        private void UpdateSuggestions()
        {
            Suggestions.Clear();
            var filteredItems = _allItems
                .Where(item => item.StartsWith(Plate, StringComparison.InvariantCultureIgnoreCase))
                .ToList();

            foreach (var item in filteredItems)
            {
                Suggestions.Add(item);
            }
        }


        private bool CanExecuteLogin(object parameter)
        {
            return !string.IsNullOrWhiteSpace(Plate);
        }

        private void ExecuteLogin(object parameter)
        {

            var repairCollection = DatabaseManager.Instance.GetCollection<RepairRecords>("repairs");
            repairCollection.Insert(new RepairRecords(Plate, UserSession.Instance.LoggedUser.Username, Info));
            ((Window)parameter).DialogResult = true;
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged(string propertyName) =>
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
    
}
