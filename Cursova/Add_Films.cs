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
    public partial class Add_Films : Form
    {
        public Films first = new Films();
        public Add_Films()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            first.NameFilm = textBox1.Text.ToString();
            first.Place_Of_Movie = textBox3.Text.ToString();
            first.Budget = Convert.ToDecimal(textBox4.Text);
            first.Number_Of_Participants = Convert.ToInt32(textBox5.Text);
            first.The_Date_Of_The_Beginning = dateTimePicker1.Value;
            first.Time_Of_Movie = textBox6.Text.ToString();
            first.The_Duration_Of_The_Movie = textBox7.Text.ToString();
            first.Genre_FK = Convert.ToInt32(comboBox1.SelectedValue);
            first.Age_Rating_FK = Convert.ToInt32(comboBox2.SelectedValue);
            first.Rating_FK_two = Convert.ToInt32(comboBox3.SelectedValue);

        }

        private void button2_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void Add_Films_Load(object sender, EventArgs e)
        {


            textBox1.Text = first.NameFilm;
            textBox3.Text = first.Place_Of_Movie;
            textBox4.Text = first.Budget.ToString();
            textBox5.Text = first.Number_Of_Participants.ToString();
            textBox6.Text = first.Time_Of_Movie;
            textBox7.Text = first.The_Duration_Of_The_Movie;
            dateTimePicker1.Text = first.The_Date_Of_The_Beginning.ToString();
            

            Name_Of_GenreGenreList four = Name_Of_GenreGenreList.SelectNameGenre();
            comboBox1.DataSource = four;
            comboBox1.DisplayMember = "Name_Of_Genre";
            comboBox1.ValueMember = "id";
            if (four.Count == 0)
            {
                DialogResult da = MessageBox.Show("List Empty", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                if (da == DialogResult.OK)
                {
                    this.Close();
                }
            }
            Age_ratingList five = Age_ratingList.SelectName_Of_Rating();
            comboBox2.DataSource = five;
            comboBox2.DisplayMember = "Name_Of_Rating";
            comboBox2.ValueMember = "id";
            if (five.Count == 0)
            {
                DialogResult da = MessageBox.Show("List Empty", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                if (da == DialogResult.OK)
                {
                    this.Close();
                }
            }
            Rating_FKList six = Rating_FKList.SelectRating_FK();
            comboBox3.DataSource = six;
            comboBox3.DisplayMember = "Name_of_Rating";
            comboBox3.ValueMember = "id";
            if (five.Count == 0)
            {
                DialogResult da = MessageBox.Show("List Empty", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                if (da == DialogResult.OK)
                {
                    this.Close();
                }
            }
        }
    }
}
