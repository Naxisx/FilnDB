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
    public partial class Add_Rating_Film : Form
    {
        public Rating_FK first = new Rating_FK();
        public Add_Rating_Film()
        {
            InitializeComponent();
        }

        private void Add_Rating_Film_Load(object sender, EventArgs e)
        {
            textBox1.Text = first.Name_of_Rating;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            first.Name_of_Rating = textBox1.Text.ToString();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
