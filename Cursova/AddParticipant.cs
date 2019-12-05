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
    public partial class AddParticipant : Form
    {
        public Participants first = new Participants();
        public AddParticipant()
        {
            InitializeComponent();
        }

        private void AddParticipant_Load(object sender, EventArgs e)
        {
            textBox1.Text =first.FirstName;
            textBox2.Text = first.LastName;
            textBox3.Text = first.SurName;

            FilmsList five = FilmsList.SelectFilms();
            comboBox1.DataSource = five;
            comboBox1.DisplayMember = "NameFilm";
            comboBox1.ValueMember = "id";
            if (five.Count == 0)
            {
                DialogResult da = MessageBox.Show("List Empty", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                if (da == DialogResult.OK)
                {
                    this.Close();
                }
            }
            Rating_FKList six = Rating_FKList.SelectRating_FK();
            comboBox2.DataSource = six;
            comboBox2.DisplayMember = "Name_of_Rating";
            comboBox2.ValueMember = "id";
            if (five.Count == 0)
            {
                DialogResult da = MessageBox.Show("List Empty", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                if (da == DialogResult.OK)
                {
                    this.Close();
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            first.FirstName = textBox1.Text.ToString();
            first.LastName = textBox2.Text.ToString();
            first.SurName = textBox3.Text.ToString();
            first.Film_FK = Convert.ToInt32(comboBox1.SelectedValue);
            first.Role_FK = Convert.ToInt32(comboBox2.SelectedValue);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
