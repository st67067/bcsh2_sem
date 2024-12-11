using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RideWise.Model
{
    public class Car: INotifyPropertyChanged
    {

        public CarBrand Brand { get; set; }
        public string Type { get; set; }
        public string RegPlate { get; set; }
       
        private int _price;
        public int Price
        {
            get { return _price; }
            set
            {
                _price = value;
                OnPropertyChanged(nameof(Price));
            }
        }
        public string? ImagePath { get; set; }


        public Car(CarBrand brand, string type, string regPlate, int price)
        {
            Brand = brand;
            Type = type;
            RegPlate = regPlate;
            Price = price;
        }

        public Car(CarBrand brand, string type, string regPlate, int price, string imagePath)
        {
            Brand = brand;
            Type = type;
            RegPlate = regPlate;
            Price = price;
            ImagePath = imagePath;
        }

        public event PropertyChangedEventHandler? PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public override string? ToString()
        {
            return Brand + " | " + Type + " | " + Price;
        }
    }
}
