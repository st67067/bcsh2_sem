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

            /*Username = LoggedUser.Username;
            FirstName = LoggedUser.FirstName;
            LastName = LoggedUser.LastName;
            Permission = LoggedUser.Permission;*/

            using (var db = new LiteDatabase(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Database" + "rentrecords.db")))
            {
                var collection = db.GetCollection<RentRecords>("records");

                collection.DeleteAll();
                if (collection.Count() == 0)
                {
                    collection.Insert(new RentRecords("1ABC123", "james", new DateTime(2024, 5, 10), new DateTime(2024, 5, 13)));
                    collection.Insert(new RentRecords("1ADA527", "james", new DateTime(2024, 3, 09), new DateTime(2024, 3, 20)));
                    collection.Insert(new RentRecords("8VWX234", "james", new DateTime(2024, 1, 01), new DateTime(2024, 1, 04)));

                }
                var recordsFromDv = collection.FindAll();

                RentRecords.Clear();
                foreach (var record in recordsFromDv)
                {
                    RentRecords.Add(record);

                }
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
