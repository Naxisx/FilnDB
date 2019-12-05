using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Odbc;

namespace HotelLibrary
{
    public class Rating_FK
    {
        public int id { get; set; } = 0;
        public string Name_of_Rating { get; set; } = "";

        public void InsertRating_FK()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            OdbcCommand cm = cn.CreateCommand();
            cm.CommandType = CommandType.StoredProcedure;
            cm.CommandText = "{ CALL Name_of_Rating_Insert (?)}";

            cm.Parameters.Add(new OdbcParameter("@Name_of_Rating", Name_of_Rating));

            cm.ExecuteNonQuery();

            cn.Close();
            cn.Dispose();
        }

        public void UpdateRating_FK()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            OdbcCommand cm = cn.CreateCommand();
            cm.CommandType = CommandType.StoredProcedure;

            cm.CommandText = "{ CALL Name_of_Rating_Insert (?,?)}";
            cm.Parameters.Add(new OdbcParameter("@Name_of_Rating", Name_of_Rating));
            cm.Parameters.Add(new OdbcParameter("@id", id));
            cm.ExecuteNonQuery();

            cn.Close();
            cn.Dispose();
        }
        public void DeleteRating_FK()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            String query = "DELETE FROM Rating_FK where id = ?";
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

    public class Rating_FKList : List<Rating_FK>
    {
        static public Rating_FKList SelectRating_FK()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            string MyString;
            OdbcCommand command;
            OdbcDataReader reader;
            MyString = "select * from dbo.Rating_FK";
            command = new OdbcCommand(MyString, cn);
            reader = command.ExecuteReader();
            Rating_FKList test = new Rating_FKList();

            while (reader.Read())
            {
                Rating_FK my = new Rating_FK();
                my.id = Convert.ToInt32(reader["Id"]);
                my.Name_of_Rating = reader["Name_of_Rating"].ToString();

                test.Add(my);
            }
            cn.Close();
            cn.Dispose();
            return test;
        }
    }
}