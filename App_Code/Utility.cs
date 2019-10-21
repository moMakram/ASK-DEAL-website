using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Utility
/// </summary>
public class Utility
{
	
		public static void CreateCookie(string CookieName , string [] keys , string [] values , bool Expired , HttpResponse res)
        {
            HttpCookie c = new HttpCookie(CookieName);
            if (keys != null)
            {
                for (int x = 0; x < keys.Length; x++)
                    c.Values.Add(keys[x], values[x]);
                if (!Expired)
                    c.Expires = DateTime.Now.AddYears(5);
            }else
                c.Expires = DateTime.Now.AddYears(-5);
            res.Cookies.Add(c);

 
        }


        public static string ReadFromCookie(string CookieName, string key, HttpRequest req)
        {
            try
            {
                return req.Cookies[CookieName][key].ToString();

            }
            catch
            {
                return null;
            }

        }

        public static void RemoveCookies(string CookieName , HttpResponse res)
        {
            CreateCookie(CookieName, null, null, false , res);
        }
	
}