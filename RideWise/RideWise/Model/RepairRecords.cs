using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RideWise.Model
{
    public class RepairRecords
    {

        public string CarPlate { get; set; }
        public string Username { get; set; }
        public string? Info { get; set; }

        public RepairRecords(string carPlate, string username, string? info)
        {
            CarPlate = carPlate;
            Username = username;
            Info = info;
        }
    }
}
