using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Odbc;

namespace HotelLibrary
{
    public class Connections
    {
        OdbcConnection cn = new OdbcConnection();
        static public string ConnectionString
        {
            get
            {
                OdbcConnectionStringBuilder str = new OdbcConnectionStringBuilder();
                str.Add("Driver", "SQL Server");
                str.Add("Server", @"DESKTOP-2AH2LK8\SQLEXPRESS01");
                str.Add("Database", "Database2");
                str.Add("Integrated Security", "no");
                str.Add("Uid", "");
                str.Add("Pwd", "");
                return str.ToString();
            }
        }
    }
}