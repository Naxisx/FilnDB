using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Odbc;

namespace HotelLibrary
{
    public class Age_Rating
    {
        public int id { get; set; } = 0;
        public string Name_Of_Rating { get; set; } = "";

        public void InsertName_Of_Rating()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            OdbcCommand cm = cn.CreateCommand();
            cm.CommandType = CommandType.StoredProcedure;
            cm.CommandText = "{ CALL Age_Rating_Insert (?)}";

            cm.Parameters.Add(new OdbcParameter("@Name_Of_Rating", Name_Of_Rating));

            cm.ExecuteNonQuery();

            cn.Close();
            cn.Dispose();
        }

        public void UpdateName_Of_Rating()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            OdbcCommand cm = cn.CreateCommand();
            cm.CommandType = CommandType.StoredProcedure;

            cm.CommandText = "{ CALL Age_Rating_Update (?,?)}";
            cm.Parameters.Add(new OdbcParameter("@Name_Of_Rating", Name_Of_Rating));
            cm.Parameters.Add(new OdbcParameter("@id", id));
            cm.ExecuteNonQuery();

            cn.Close();
            cn.Dispose();
        }
        public void DeleteName_Of_Rating()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            String query = "DELETE FROM Age_Rating where id = ?";
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

    public class Age_ratingList : List<Age_Rating>
    {
        static public Age_ratingList SelectName_Of_Rating()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            string MyString;
            OdbcCommand command;
            OdbcDataReader reader;
            MyString = "select * from dbo.Age_Rating" /*+
                "inner join Genre as BC on BC.id = Genre_FK" +
                "inner join Age_Rating as DC on DC.id = Age_Rating_FK" +
                "inner join Rating_FK as FC on FC.id = Rating_FK"*/;
            command = new OdbcCommand(MyString, cn);
            reader = command.ExecuteReader();
            Age_ratingList test = new Age_ratingList();

            while (reader.Read())
            {
                Age_Rating my = new Age_Rating();
                my.id = Convert.ToInt32(reader["Id"]);
                my.Name_Of_Rating = reader["Name_Of_Rating"].ToString();
               
                test.Add(my);
            }
            cn.Close();
            cn.Dispose();
            return test;
        }
    }
}