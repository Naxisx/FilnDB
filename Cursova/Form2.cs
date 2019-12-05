using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using HotelLibrary;

namespace Cursova
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
            if (textBox1.Text == "Admin" && textBox2.Text == "1111")
            {
                ApplicationManager.ShowForm(new Page1());
            }
            else
            {
                DialogResult dialogResult = MessageBox.Show("Eror");
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            ApplicationManager.ShowForm(new Watch_info());

        }
    }
    public class ApplicationManager
    {
        private static ApplicationContext _context;
        public static ApplicationContext Context
        {
            get
            {
                if (_context == null)
                    _context = new ApplicationContext();

                return _context;
            }
        }

        public static void ShowForm(Form form)
        {
            Form prev = Context.MainForm;
            Context.MainForm = form;

            prev.Close();
            form.Show();
        }
    }
}
