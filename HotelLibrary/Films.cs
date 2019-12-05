using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Odbc;

namespace HotelLibrary
{
    public class Films
    {
        public int id { get; set; } = 0;
        public string NameFilm { get; set; } = "Null";
        public string Place_Of_Movie { get; set; } = "Null";
        public decimal Budget { get; set; } = 0.00m;
        public int Number_Of_Participants { get; set; } = 0;
        public DateTime The_Date_Of_The_Beginning { get; set; } = Convert.ToDateTime("00:00:00");
        public string Time_Of_Movie { get; set; } = "Null";
        public string The_Duration_Of_The_Movie { get; set; } = "Null";
        public int Genre_FK { get; set; } = 0;
        public int Age_Rating_FK { get; set; } = 0;
        public int Rating_FK_two { get; set; } = 0;

        public string Genre { get; set; } = "Null";
        public string Rating_F { get; set; } = "Null";
        public string Age_Rating { get; set; } = "Null";


        public void InsertFilms()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            OdbcCommand cm = cn.CreateCommand();
            cm.CommandType = CommandType.StoredProcedure;
            cm.CommandText = "{ CALL FilmsInsert (?,?,?,?,?,?,?,?,?,?)}";

            cm.Parameters.Add(new OdbcParameter("@Name", NameFilm));
            cm.Parameters.Add(new OdbcParameter("@Place_Of_Movie", Place_Of_Movie));
            cm.Parameters.Add(new OdbcParameter("@Budget", Budget));
            cm.Parameters.Add(new OdbcParameter("@Number_Of_Participants", Number_Of_Participants));
            cm.Parameters.Add(new OdbcParameter("@The_Date_Of_The_Beginning", The_Date_Of_The_Beginning));
            cm.Parameters.Add(new OdbcParameter("@Time_Of_Movie", Time_Of_Movie));
            cm.Parameters.Add(new OdbcParameter("@The_Duration_Of_The_Movie", The_Duration_Of_The_Movie));
            cm.Parameters.Add(new OdbcParameter("@Genre_FK", Genre_FK));
            cm.Parameters.Add(new OdbcParameter("@Age_Rating_FK", Age_Rating_FK));
            cm.Parameters.Add(new OdbcParameter("@Rating_FK", Rating_FK_two));

            cm.ExecuteNonQuery();

            cn.Close();
            cn.Dispose();
        }

        public void UpdateFilms()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            OdbcCommand cm = cn.CreateCommand();
            cm.CommandType = CommandType.StoredProcedure;

            cm.CommandText = "{ CALL FilmsUpdate (?,?,?,?,?,?,?,?,?,?,?)}";
            cm.Parameters.Add(new OdbcParameter("@Name", NameFilm));
            cm.Parameters.Add(new OdbcParameter("@Place_Of_Movie", Place_Of_Movie));
            cm.Parameters.Add(new OdbcParameter("@Budget", Budget));
            cm.Parameters.Add(new OdbcParameter("@Number_Of_Participants", Number_Of_Participants));
            cm.Parameters.Add(new OdbcParameter("@The_Date_Of_The_Beginning", The_Date_Of_The_Beginning));
            cm.Parameters.Add(new OdbcParameter("@Time_Of_Movie", Time_Of_Movie));
            cm.Parameters.Add(new OdbcParameter("@The_Duration_Of_The_Movie", The_Duration_Of_The_Movie));
            cm.Parameters.Add(new OdbcParameter("@Genre_FK", Genre_FK));
            cm.Parameters.Add(new OdbcParameter("@Age_Rating_FK", Age_Rating_FK));
            cm.Parameters.Add(new OdbcParameter("@Rating_FK", Rating_FK_two));
            cm.Parameters.Add(new OdbcParameter("@id", id));
            cm.ExecuteNonQuery();

            cn.Close();
            cn.Dispose();
        }
        public void DeleteFilms()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            String query = "DELETE FROM Films where id = ?";
            OdbcCommand command;
            using (command = new OdbcCommand(query, cn))
            {
                command.Parameters.AddWithValue("@id", id);
                
                command.ExecuteNonQuery();
            }
            cn.Close();
            cn.Dispose();
        }

    }

    public class FilmsList : List<Films>
    {
        static public FilmsList SelectFilms()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            string MyString;
            OdbcCommand command;
            OdbcDataReader reader;
            MyString = "select * from dbo.Films " +
                "inner join Genre as BC on BC.id = Genre_FK " +
                "inner join Age_Rating as DC on DC.id = Age_Rating_FK " +
                "inner join Rating_FK as FC on FC.id = Rating_FK ";
            command = new OdbcCommand(MyString, cn);
            reader = command.ExecuteReader();
            FilmsList test = new FilmsList();

            while (reader.Read())
            {
                Films my = new Films();
                my.id = Convert.ToInt32(reader["Id"]);
                my.NameFilm = reader["Name_Film"].ToString();
                my.Place_Of_Movie = reader["Place_Of_Movie"].ToString();
                my.Budget = Convert.ToDecimal(reader["Budget"]);
                my.Number_Of_Participants = Convert.ToInt32(reader["Number_Of_Participants"]);
                my.The_Date_Of_The_Beginning = Convert.ToDateTime(reader["The_Date_Of_The_Beginning"]);
                my.Time_Of_Movie = reader["Time_Of_Movie"].ToString();
                my.The_Duration_Of_The_Movie = reader["The_Duration_Of_The_Movie"].ToString();
                my.Genre_FK = Convert.ToInt32(reader["Genre_FK"]);
                my.Age_Rating_FK = Convert.ToInt32(reader["Age_Rating_FK"]);
                my.Rating_FK_two = Convert.ToInt32(reader["Rating_FK"]);
                my.Genre = reader["Name_Of_Genre"].ToString();
                my.Rating_F = reader["Name_of_Rating"].ToString();
                my.Age_Rating = reader["Name_Of_Rating"].ToString();
                test.Add(my);
            }
            cn.Close();
            cn.Dispose();
            return test;
        }
    }
}
