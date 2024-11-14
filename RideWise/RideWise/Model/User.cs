using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RideWise.Model
{
    public class User
    {


        private static int _lastId = 0;
        public int Id { get; private set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public Permission Permission { get; set; }

        public User(string username, string password, string firstName, string lastName, Permission permission)
        {
            Id = ++_lastId;
            Username = username;
            Password = password;
            FirstName = firstName;
            LastName = lastName;
            Permission = permission;
        }
    }
}
