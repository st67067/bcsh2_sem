using CommunityToolkit.Mvvm.Input;
using RideWise.Database;
using RideWise.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace RideWise.ViewModel
{
    public class CarInfoViewModel : INotifyPropertyChanged
    {
        public string Plate { get; }
        public CarBrand Brand { get; }
        public string Type { get; }
        public decimal Price { get; }
        public string ImagePath { get; }

        public ICommand OkCommand { get; }
        private DateTime? _startDate;
        public DateTime? StartDate
        {
            get => _startDate;
            set
            {
                if (_startDate != value)
                {
                    _startDate = value;
                    OnPropertyChanged(nameof(StartDate));
                }
            }
        }

        private DateTime? _endDate;
        public DateTime? EndDate
        {
            get => _endDate;
            set
            {
                if (_endDate != value)
                {
                    _endDate = value;
                    OnPropertyChanged(nameof(EndDate));
                }
            }
        }

        private string _additionalInfo;
        public string AdditionalInfo
        {
            get => _additionalInfo;
            set
            {
                if (_additionalInfo != value)
                {
                    _additionalInfo = value;
                    OnPropertyChanged(nameof(AdditionalInfo));
                }
            }
        }

        public CarInfoViewModel(Car car)
        {
            Brand = car.Brand;
            Type = car.Type;
            Price = car.Price;
            Plate = car.RegPlate;
            ImagePath = car.ImagePath;
            OkCommand = new RelayCommand<Window>(ConfirmBtn);
        }

        private void ConfirmBtn(Window? window)
        {
            if (UserSession.Instance.LoggedUser == null)
            {
                MessageBox.Show("You need to login to make a reservation.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else 
            {
                
                var rentCollection = DatabaseManager.Instance.GetCollection<RentRecords>("records");

                if (StartDate == null || EndDate == null)
                {
                    MessageBox.Show("Both start and end dates must be provided.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                if (StartDate >= EndDate)
                {
                    MessageBox.Show("Start date must be earlier than end date.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                var overlappingReservation = rentCollection.FindOne(r =>
                    r.CarPlate == Plate &&
                    ((StartDate < r.EndTime && EndDate > r.StartTime) || 
                     (EndDate > r.StartTime && StartDate < r.EndTime)));

                if (overlappingReservation != null)
                {
                    MessageBox.Show("This vehicle is already reserved during the selected period.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                rentCollection.Insert(new RentRecords(Plate, UserSession.Instance.LoggedUser.Username, StartDate, EndDate, AdditionalInfo));
                MessageBox.Show("Reservation completed!", "Success!", MessageBoxButton.OK, MessageBoxImage.Information);


                window.Close();
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
