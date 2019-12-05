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
    public partial class Page1 : Form
    {
        public Page1()
        {
            InitializeComponent();
        }

        FilmsList Filmes = new FilmsList();
        private void Update_Flims_Click(object sender, EventArgs e)
        {
            Filmes = FilmsList.SelectFilms();
            dataGridView1.DataSource = null;
            dataGridView1.DataSource = Filmes;
            dataGridView1.AutoResizeColumns();
        }

        private void Delete_Films_Click(object sender, EventArgs e)
        {
            int ID = (int)dataGridView1.SelectedRows[0].Cells[0].Value;
            foreach (Films two in Filmes)
            {
                if (two.id == ID)
                {
                    two.DeleteFilms();
                }
            }
            Update_Flims_Click(sender, e);
        }

        private void Edit_Films_Click(object sender, EventArgs e)
        {
            int ID = (int)dataGridView1.SelectedRows[0].Cells[0].Value;
            Add_Films tost = new Add_Films();
            foreach (Films two in Filmes)
            {
                if (two.id == ID)
                {
                    tost.first = two;
                    if (tost.ShowDialog() == DialogResult.OK)
                    {
                        tost.first.UpdateFilms();
                    }
                }
            }
            Update_Flims_Click(sender, e);
        }

        private void Add_Films_Click(object sender, EventArgs e)
        {
            Add_Films tost = new Add_Films();
            if (tost.ShowDialog() == DialogResult.OK)
            {
                tost.first.InsertFilms();
            }
            Update_Flims_Click(sender, e);
        }

        private void Page1_Load(object sender, EventArgs e)
        {
            Update_Flims_Click(sender, e);
            button2_Click(sender, e);
            button7_Click(sender, e);
            button12_Click(sender, e);
            button16_Click(sender, e);
            button20_Click(sender, e);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ApplicationManager.ShowForm(new Form2());
        }

        Age_ratingList Age_Ratings = new Age_ratingList();
        private void button7_Click(object sender, EventArgs e)
        {
            Age_Ratings = Age_ratingList.SelectName_Of_Rating();
            dataGridView3.DataSource = null;
            dataGridView3.DataSource = Age_Ratings;
            dataGridView3.AutoResizeColumns();
        }

        private void button8_Click(object sender, EventArgs e)
        {
            Add_Age_Rating tost = new Add_Age_Rating();
            if (tost.ShowDialog() == DialogResult.OK)
            {
                tost.first.InsertName_Of_Rating();
            }
            button7_Click(sender, e);
        }

        private void button9_Click(object sender, EventArgs e)
        {
            int ID = (int)dataGridView3.SelectedRows[0].Cells[0].Value;
            foreach (Age_Rating two in Age_Ratings)
            {
                if (two.id == ID)
                {
                    two.DeleteName_Of_Rating();
                }
            }
            button7_Click(sender, e);
        }

        private void button10_Click(object sender, EventArgs e)
        {
            int ID = (int)dataGridView3.SelectedRows[0].Cells[0].Value;
            Add_Age_Rating tost = new Add_Age_Rating();
            foreach (Age_Rating two in Age_Ratings)
            {
                if (two.id == ID)
                {
                    tost.first = two;
                    if (tost.ShowDialog() == DialogResult.OK)
                    {
                        tost.first.UpdateName_Of_Rating();
                    }
                }
            }
            button7_Click(sender, e);
        }

        Name_Of_GenreGenreList My_Genre = new Name_Of_GenreGenreList();

        private void button12_Click(object sender, EventArgs e)
        {
            My_Genre = Name_Of_GenreGenreList.SelectNameGenre();
            dataGridView4.DataSource = null;
            dataGridView4.DataSource = My_Genre;
            dataGridView4.AutoResizeColumns();
        }

        private void button13_Click(object sender, EventArgs e)
        {
            Add_Genre tost = new Add_Genre();
            if (tost.ShowDialog() == DialogResult.OK)
            {
                tost.first.InsertName_Of_Genre();
            }
            button12_Click(sender, e);
        }

        private void button14_Click(object sender, EventArgs e)
        {
            int ID = (int)dataGridView4.SelectedRows[0].Cells[0].Value;
            foreach (Genre two in My_Genre)
            {
                if (two.id == ID)
                {
                    two.DeleteName_Of_Genre();
                }
            }
            button12_Click(sender, e);
        }

        private void button15_Click(object sender, EventArgs e)
        {
            int ID = (int)dataGridView4.SelectedRows[0].Cells[0].Value;
            Add_Genre tost = new Add_Genre();
            foreach (Genre two in My_Genre)
            {
                if (two.id == ID)
                {
                    tost.first = two;
                    if (tost.ShowDialog() == DialogResult.OK)
                    {
                        tost.first.UpdateName_Of_Genre();
                    }
                }
            }
            button12_Click(sender, e);
        }
        NameRoleList MynameRoles = new NameRoleList();

        private void button16_Click(object sender, EventArgs e)
        {
            MynameRoles = NameRoleList.SelectNameRole();
            dataGridView5.DataSource = null;
            dataGridView5.DataSource = MynameRoles;
            dataGridView5.AutoResizeColumns();
        }

        private void button17_Click(object sender, EventArgs e)
        {
            Add_NameRole tost = new Add_NameRole();
            if (tost.ShowDialog() == DialogResult.OK)
            {
                tost.first.InsertNameRole();
            }
            button16_Click(sender, e);
        }

        private void button18_Click(object sender, EventArgs e)
        {
            int ID = (int)dataGridView5.SelectedRows[0].Cells[0].Value;
            foreach (NameRole two in MynameRoles)
            {
                if (two.id == ID)
                {
                    two.DeleteNameRole();
                }
            }
            button16_Click(sender, e);
        }
        
        private void button19_Click(object sender, EventArgs e)
        {
            int ID = (int)dataGridView5.SelectedRows[0].Cells[0].Value;
            Add_NameRole tost = new Add_NameRole();
            foreach (NameRole two in MynameRoles)
            {
                if (two.id == ID)
                {
                    tost.first = two;
                    if (tost.ShowDialog() == DialogResult.OK)
                    {
                        tost.first.UpdateNameRole();
                    }
                }
            }
            button16_Click(sender, e);
        }

        Rating_FKList MY_Rating_FKList = new Rating_FKList();
        private void button20_Click(object sender, EventArgs e)
        {
            MY_Rating_FKList = Rating_FKList.SelectRating_FK();
            dataGridView6.DataSource = null;
            dataGridView6.DataSource = MY_Rating_FKList;
            dataGridView6.AutoResizeColumns();
        }

        private void button21_Click(object sender, EventArgs e)
        {
            Add_Rating_Film tost = new Add_Rating_Film();
            if (tost.ShowDialog() == DialogResult.OK)
            {
                tost.first.InsertRating_FK();
            }
            button20_Click(sender, e);
        }

        private void button22_Click(object sender, EventArgs e)
        {
            int ID = (int)dataGridView6.SelectedRows[0].Cells[0].Value;
            foreach (Rating_FK two in MY_Rating_FKList)
            {
                if (two.id == ID)
                {
                    two.DeleteRating_FK();
                }
            }
            button20_Click(sender, e);

        }

        private void button23_Click(object sender, EventArgs e)
        {
            int ID = (int)dataGridView6.SelectedRows[0].Cells[0].Value;
            Add_Rating_Film tost = new Add_Rating_Film();
            foreach (Rating_FK two in MY_Rating_FKList)
            {
                if (two.id == ID)
                {
                    tost.first = two;
                    if (tost.ShowDialog() == DialogResult.OK)
                    {
                        tost.first.UpdateRating_FK();
                    }
                }
            }
            button20_Click(sender, e);
        }

        ParticipantsList ParticipantsListMy = new ParticipantsList();
        private void button2_Click(object sender, EventArgs e)
        {
            ParticipantsListMy = ParticipantsList.SelectClient();
            dataGridView2.DataSource = null;
            dataGridView2.DataSource = ParticipantsListMy;
            dataGridView2.AutoResizeColumns();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            AddParticipant tost = new AddParticipant();
            if (tost.ShowDialog() == DialogResult.OK)
            {
                tost.first.InsertClient();
            }
            button2_Click(sender, e);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            int ID = (int)dataGridView2.SelectedRows[0].Cells[0].Value;
            foreach (Participants two in ParticipantsListMy)
            {
                if (two.id == ID)
                {
                    two.DeleteClient();
                }
            }
            button2_Click(sender, e);

        }

        private void button5_Click(object sender, EventArgs e)
        {
            int ID = (int)dataGridView2.SelectedRows[0].Cells[0].Value;
            AddParticipant tost = new AddParticipant();
            foreach (Participants two in ParticipantsListMy)
            {
                if (two.id == ID)
                {
                    tost.first = two;
                    if (tost.ShowDialog() == DialogResult.OK)
                    {
                        tost.first.UpdateClient();
                    }
                }
            }
            button2_Click(sender, e);
        }
    }
}
