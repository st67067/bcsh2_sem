using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace RideWise.Model
{
    public static class PasswordHelper
    {
        public static string HashPassword(string password)
        {
            using (var rng = new RNGCryptoServiceProvider())
            using (var deriveBytes = new Rfc2898DeriveBytes(password, 16, 10000))
            {
                var salt = deriveBytes.Salt;
                var hash = deriveBytes.GetBytes(32); // 32-byte hash

                var result = new byte[salt.Length + hash.Length];
                Buffer.BlockCopy(salt, 0, result, 0, salt.Length);
                Buffer.BlockCopy(hash, 0, result, salt.Length, hash.Length);

                return Convert.ToBase64String(result); // Uložení kombinace salt + hash
            }
        }

        public static bool VerifyPassword(string password, string storedHash)
        {
            var hashBytes = Convert.FromBase64String(storedHash);

            var salt = new byte[16];
            Buffer.BlockCopy(hashBytes, 0, salt, 0, 16);

            using (var deriveBytes = new Rfc2898DeriveBytes(password, salt, 10000))
            {
                var hash = deriveBytes.GetBytes(32);
                for (int i = 0; i < 32; i++)
                {
                    if (hashBytes[16 + i] != hash[i]) return false;
                }
            }

            return true;
        }
    }
}
