using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Security.Cryptography;
/// <summary>
/// Summary description for Crypto
/// </summary>
public class Crypto
{
    public static string hashSHA512(string unhashedValue)
    {
        SHA512 shaM = new SHA512Managed();
        byte[] hash = shaM.ComputeHash(Encoding.ASCII.GetBytes(unhashedValue));

        StringBuilder stringBuilder = new StringBuilder();
        foreach (byte b in hash)
        {
            stringBuilder.AppendFormat("{0:x2}", b);
        }
        return stringBuilder.ToString();
    }
}