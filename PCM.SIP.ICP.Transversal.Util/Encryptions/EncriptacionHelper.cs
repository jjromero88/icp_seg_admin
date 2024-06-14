using System.Security.Cryptography;
using System.Text;

namespace PCM.SIP.ICP.Transversal.Util.Encryptions
{
    public class EncriptacionHelper
    {

        private static Random _ramdomObj;

        static EncriptacionHelper()
        {
            _ramdomObj = new Random();
        }

        public static string GetMd5Hash(string key)
        {
            MD5 md5Hasher = MD5.Create();
            Byte[] data = md5Hasher.ComputeHash(Encoding.Default.GetBytes(key));
            StringBuilder sBuilder = new StringBuilder();
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }
            return sBuilder.ToString();
        }

        public static bool VerifyMd5Hash(string input, string hash)
        {
            String hashOfInput = GetMd5Hash(input);
            StringComparer comparer = StringComparer.OrdinalIgnoreCase;
            return (0 == comparer.Compare(hashOfInput, hash)) ? true : false;
        }

        public static string GenerateClave()
        {
            string _allowedChars = "abcdefghijkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ23456789";
            byte[] randomByte = new byte[8];
            char[] chars = new char[8];
            int allowedCharCount = _allowedChars.Length;

            for (int i = 0; i < 8; i++)
            {
                _ramdomObj.NextBytes(randomByte);
                chars[i] = _allowedChars[randomByte[i] % allowedCharCount];
            }

            return new string(chars);
        }

        #region "SHA1"

        public static byte[] GetSHA1Hash(string key)
        {
            return GetSHA1Hash(Encoding.Default.GetBytes(key));
        }

        public static byte[] GetSHA1Hash(byte[] key)
        {
            var sha1Hasher = SHA1.Create();
            return sha1Hasher.ComputeHash(key);
        }

        /// <summary>
        /// Comprueba que dos hash sean iguales
        /// </summary>
        /// <param name="hashInput"></param>
        /// <param name="hash"></param>
        /// <returns></returns>
        public static bool VerifySHA1Hash(byte[] hashInput, byte[] hash)
        {
            return hash.SequenceEqual(hashInput);
        }

        /// <summary>
        /// Comprueba que el hash de la cadena input sea igual al hash pasado por parámetro
        /// </summary>
        /// <param name="input"></param>
        /// <param name="hash"></param>
        /// <returns></returns>
        public static bool VerifySHA1Hash(string input, byte[] hash)
        {
            var hashInput = GetSHA1Hash(input);
            return hash.SequenceEqual(hashInput);
        }

        #endregion

        /// <summary>
        /// Encripta cualquier texto usando el algoridmo Rijndael.
        /// </summary>
        /// <param name="rawText">texto a encryptar</param>
        /// <returns>Texto encriptado en Base64.</returns>
        public static string Encrypt(string rawText)
        {
            var rijndaelCipher = new RijndaelManaged();
            byte[] rawTextData = Encoding.UTF8.GetBytes(rawText);

            Rfc2898DeriveBytes secretKey = GetSecretKey();


            using (var encryptor = rijndaelCipher.CreateEncryptor(secretKey.GetBytes(32), secretKey.GetBytes(16)))
            {
                using (var memoryStream = new MemoryStream())
                {
                    using (var cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write))
                    {
                        cryptoStream.Write(rawTextData, 0, rawTextData.Length);
                        cryptoStream.FlushFinalBlock();
                        return Convert.ToBase64String(memoryStream.ToArray());
                    }
                }
            }
        }

    
 
        /// <summary>
        /// Desencripta un texto previamente encriptado con el algoritmo Rijndael.
        /// </summary>
        /// <param name="encryptText">Texto encriptado a desencriptar.</param>
        /// <returns>Texto desencriptado.</returns>
        public static string Decrypt(string encryptText)
        {
            try
            {
                var rijndaelCipher = new RijndaelManaged();
                byte[] encryptTextData = Convert.FromBase64String(encryptText);

                Rfc2898DeriveBytes secretKey = GetSecretKey();

                using (ICryptoTransform decryptor = rijndaelCipher.CreateDecryptor(secretKey.GetBytes(32), secretKey.GetBytes(16)))
                {
                    using (var memoryStream = new MemoryStream(encryptTextData))
                    {
                        using (var cryptoStream = new CryptoStream(memoryStream, decryptor, CryptoStreamMode.Read))
                        {
                            var plainText = new byte[encryptTextData.Length];
                            int decryptedCount = cryptoStream.Read(plainText, 0, plainText.Length);
                            return Encoding.UTF8.GetString(plainText, 0, decryptedCount);
                        }
                    }
                }
            }
            catch
            {
                return null;
            }
        }

      


      

        private static Rfc2898DeriveBytes GetSecretKey()
        {
            const string encryptionKey = "Qw@1eRt7Yx#9pL0kN5mJ";
            byte[] salt = Encoding.UTF8.GetBytes(encryptionKey);

            var secretKey = new Rfc2898DeriveBytes(encryptionKey, salt);
            return secretKey;
        }

        

    }

}
