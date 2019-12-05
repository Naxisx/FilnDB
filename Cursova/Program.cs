using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using HotelLibrary;
using System.Data;
using System.Data.Odbc;

namespace Cursova
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            ApplicationManager.Context.MainForm = new Form2();
            Application.Run(ApplicationManager.Context);

        }
    }
}
