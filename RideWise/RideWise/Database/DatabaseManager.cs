using LiteDB;
using RideWise.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Documents;

namespace RideWise.Database
{
    public class DatabaseManager
    {
        private static readonly Lazy<DatabaseManager> _instance = new(() => new DatabaseManager());
        private LiteDatabase _database;

        public static DatabaseManager Instance => _instance.Value;

        private DatabaseManager()
        {
            string dbPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Database", "database.db");
            _database = new LiteDatabase("C:\\Users\\least\\Desktop\\5 BCSH2 - Programování v .NET a C#II\\RideWise_semestral\\RideWise\\RideWise\\Database\\database.db");
            InitializeData();
        }

        private void InitializeData()
        {
            // Initialize Cars
            var carCollection = GetCollection<Car>("cars");
            carCollection.DeleteAll();
            if (carCollection.Count() == 0)
            {
                carCollection.Insert(new Car(CarBrand.Toyota, "Corolla", "1ABC123", 15000, "C:\\Users\\least\\Desktop\\5 BCSH2 - Programování v .NET a C#II\\RideWise_semestral\\RideWise\\RideWise\\Database\\corolla.png"));
                carCollection.Insert(new Car(CarBrand.BMW, "X5", "3GHI789", 30000));
                carCollection.Insert(new Car(CarBrand.Audi, "A1", "1ADA527", 15000, "C:\\Users\\least\\Desktop\\5 BCSH2 - Programování v .NET a C#II\\RideWise_semestral\\RideWise\\RideWise\\Database\\audi_a1.jpg"));
                carCollection.Insert(new Car(CarBrand.Audi, "A4", "4JKL012", 20000, "C:\\Users\\least\\Desktop\\5 BCSH2 - Programování v .NET a C#II\\RideWise_semestral\\RideWise\\RideWise\\Database\\audi_a4.png"));
                carCollection.Insert(new Car(CarBrand.MercedesBenz, "C-Class", "5MNO345", 35000));
                carCollection.Insert(new Car(CarBrand.Volkswagen, "Golf", "6PQR678", 18000));
                carCollection.Insert(new Car(CarBrand.Volvo, "XC90", "7STU901", 40000));
                carCollection.Insert(new Car(CarBrand.BMW, "3 Series", "8VWX234", 28000));
                carCollection.Insert(new Car(CarBrand.Audi, "Q5", "9YZA567", 32000));
                carCollection.Insert(new Car(CarBrand.Toyota, "Camry", "1BCD890", 22000));
                carCollection.Insert(new Car(CarBrand.Volkswagen, "Passat", "2EFG123", 25000));
                carCollection.Insert(new Car(CarBrand.Volvo, "S60", "3HIJ456", 29000));
                carCollection.Insert(new Car(CarBrand.MercedesBenz, "E-Class", "4KLM789", 45000));
                carCollection.Insert(new Car(CarBrand.BMW, "X3", "5NOP012", 31000));
            }

            // Initialize Users
            var userCollection = GetCollection<User>("users");
            userCollection.DeleteAll();
            if (userCollection.Count() == 0)
            {
                userCollection.Insert(new User("admin", PasswordHelper.HashPassword("123"), "Oliver", "Harrison", Permission.Admin));
                userCollection.Insert(new User("emily", PasswordHelper.HashPassword("123"), "Emily", "Carter", Permission.Worker));
                userCollection.Insert(new User("james", PasswordHelper.HashPassword("123"), "James", "Mitchell", Permission.Worker));
                userCollection.Insert(new User("sarah", PasswordHelper.HashPassword("123"), "Sarah", "Bennett", Permission.None));
            }

            // Initialize RentRecords
            var rentCollection = GetCollection<RentRecords>("records");
            rentCollection.DeleteAll();
            rentCollection.DeleteAll();
            if (rentCollection.Count() == 0)
            {
                rentCollection.Insert(new RentRecords("1ABC123", "james", new DateTime(2024, 5, 10), new DateTime(2024, 5, 13), "Clean pls"));
                rentCollection.Insert(new RentRecords("1ADA527", "james", new DateTime(2024, 3, 09), new DateTime(2024, 3, 20)));
                rentCollection.Insert(new RentRecords("8VWX234", "sarah", new DateTime(2024, 1, 01), new DateTime(2024, 1, 04)));

            }

            // Initialize RepairRecords
            var repairCollection = GetCollection<RepairRecords>("repairs");
            repairCollection.DeleteAll();
            repairCollection.DeleteAll();
            if (repairCollection.Count() == 0)
            {
                repairCollection.Insert(new RepairRecords("1ABC123", "emily", "Ok"));
                repairCollection.Insert(new RepairRecords("1ADA527", "emily", "All good"));
                repairCollection.Insert(new RepairRecords("8VWX234", "james", "Cleaned "));

            }
        }

        public ILiteCollection<T> GetCollection<T>(string collectionName)
        {
            return _database.GetCollection<T>(collectionName);
        }
    }
}
