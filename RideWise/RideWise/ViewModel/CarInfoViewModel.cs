using RideWise.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RideWise.ViewModel
{
    public class CarInfoViewModel
    {

        public CarBrand Brand { get; }
        public string Type { get; }
        public decimal Price { get; }

        public CarInfoViewModel(Car car)
        {
            Brand = car.Brand;
            Type = car.Type;
            Price = car.Price;
        }

    }
}
