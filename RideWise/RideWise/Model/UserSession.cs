using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RideWise.Model
{
    public class UserSession : INotifyPropertyChanged
    {
        private static readonly Lazy<UserSession> _instance = new(() => new UserSession());
        public static UserSession Instance => _instance.Value;

        private bool _isLoggedIn;
        private User? _loggedUser;

        public bool IsLoggedIn
        {
            get => _isLoggedIn;
            set
            {
                if (_isLoggedIn != value)
                {
                    _isLoggedIn = value;
                    OnPropertyChanged(nameof(IsLoggedIn));
                }
            }
        }

        public User LoggedUser
        {
            get => _loggedUser;
            set
            {
                if (_loggedUser != value)
                {
                    _loggedUser = value;
                    OnPropertyChanged(nameof(LoggedUser));
                }
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
