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
    public partial class Watch_info : Form
    {
        public Watch_info()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ApplicationManager.ShowForm(new Form2());
        }
        FilmsList Filmes = new FilmsList();
        private void Watch_info_Load(object sender, EventArgs e)
        {
            Update_Flims_Click(sender, e);
            button2_Click(sender,e);
        }
        private void Update_Flims_Click(object sender, EventArgs e)
        {
            Filmes = FilmsList.SelectFilms();
            dataGridView1.DataSource = null;
            dataGridView1.DataSource = Filmes;
            dataGridView1.AutoResizeColumns();
        }

        ParticipantsList ParticipantsListMy = new ParticipantsList();
        private void button2_Click(object sender, EventArgs e)
        {
            ParticipantsListMy = ParticipantsList.SelectClient();
            dataGridView2.DataSource = null;
            dataGridView2.DataSource = ParticipantsListMy;
            dataGridView2.AutoResizeColumns();
        }
    }
}
