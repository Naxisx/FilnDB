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
    public partial class Add_Age_Rating : Form
    {
        public Age_Rating first = new Age_Rating();
        public Add_Age_Rating()
        {
            InitializeComponent();
        }

        private void Add_Age_Rating_Load(object sender, EventArgs e)
        {
            textBox1.Text = first.Name_Of_Rating;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            first.Name_Of_Rating = textBox1.Text.ToString();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
