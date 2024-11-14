using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RideWise.Model
{
    public class RentRecords
    {

        public string CarPlate { get; set; }
        public string Username { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }

        public RentRecords() { }

        public RentRecords(string car, string user, DateTime startTime, DateTime endTime)
        {
            CarPlate = car;
            Username = user;
            StartTime = startTime;
            EndTime = endTime;
        }
    }
}
