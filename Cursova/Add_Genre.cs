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
    public partial class Add_Genre : Form
    {
        public Genre first = new Genre();
        public Add_Genre()
        {
            InitializeComponent();
        }

        private void Add_Genre_Load(object sender, EventArgs e)
        {
            textBox1.Text = first.Name_Of_Genre;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            first.Name_Of_Genre = textBox1.Text.ToString();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
