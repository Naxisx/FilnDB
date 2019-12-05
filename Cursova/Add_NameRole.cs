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
    public partial class Add_NameRole : Form
    {
        public NameRole first = new NameRole();
        public Add_NameRole()
        {
            InitializeComponent();
        }

        private void Add_NameRole_Load(object sender, EventArgs e)
        {
            textBox1.Text = first.NameRoletwo;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            first.NameRoletwo = textBox1.Text.ToString();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
