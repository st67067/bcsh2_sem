using CommunityToolkit.Mvvm.Input;
using RideWise.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows;
using LiteDB;
using System.Reflection.Metadata;
using System.IO;
using System.Collections.ObjectModel;
using System.ComponentModel;
using RideWise.Database;

namespace RideWise.ViewModel
{
    public class UserInfoViewModel : INotifyPropertyChanged
    {
        public User LoggedUser { get; set; }
        public string Username { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public Permission Permission { get; set; }

        public ICommand CloseCommand { get; }

        private ObservableCollection<RentRecords> _rentRecords;

        public ObservableCollection<RentRecords> RentRecords
        {
            get { return _rentRecords; }
            set
            {
                _rentRecords = value;
                OnPropertyChanged(nameof(RentRecords));
            }
        }


        public UserInfoViewModel()
        {
            CloseCommand = new RelayCommand<Window>(CloseWindow);
            RentRecords = new ObservableCollection<RentRecords>();

            var rentCollection = DatabaseManager.Instance.GetCollection<RentRecords>("records");
            var recordsFromDb = rentCollection.FindAll();
            RentRecords.Clear();
            foreach (var record in recordsFromDb)
            {
                RentRecords.Add(record);
                
            }
        }

        public event PropertyChangedEventHandler? PropertyChanged;
        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }


        private void CloseWindow(Window window)
        {
            window?.Close();
        }
    }
}
