using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Odbc;

namespace HotelLibrary
{
    public class Genre
    {
    public int id { get; set; } = 0;
    public string Name_Of_Genre { get; set; } = "";

    public void InsertName_Of_Genre()
    {
        OdbcConnection cn = new OdbcConnection();
        cn.ConnectionString = Connections.ConnectionString;
        cn.Open();
        OdbcCommand cm = cn.CreateCommand();
        cm.CommandType = CommandType.StoredProcedure;
        cm.CommandText = "{ CALL GenreInsert (?)}";

        cm.Parameters.Add(new OdbcParameter("@Name_Of_Genre", Name_Of_Genre));

        cm.ExecuteNonQuery();

        cn.Close();
        cn.Dispose();
    }

    public void UpdateName_Of_Genre()
    {
        OdbcConnection cn = new OdbcConnection();
        cn.ConnectionString = Connections.ConnectionString;
        cn.Open();
        OdbcCommand cm = cn.CreateCommand();
        cm.CommandType = CommandType.StoredProcedure;

        cm.CommandText = "{ CALL Genre_Update (?,?)}";
        cm.Parameters.Add(new OdbcParameter("@Name_Of_Genre", Name_Of_Genre));
        cm.Parameters.Add(new OdbcParameter("@id", id));
        cm.ExecuteNonQuery();

        cn.Close();
        cn.Dispose();
    }
    public void DeleteName_Of_Genre()
    {
        OdbcConnection cn = new OdbcConnection();
        cn.ConnectionString = Connections.ConnectionString;
        cn.Open();
        String query = "DELETE FROM Genre where id = ?";
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

public class Name_Of_GenreGenreList : List<Genre>
{
    static public Name_Of_GenreGenreList SelectNameGenre()
    {
        OdbcConnection cn = new OdbcConnection();
        cn.ConnectionString = Connections.ConnectionString;
        cn.Open();
        string MyString;
        OdbcCommand command;
        OdbcDataReader reader;
        MyString = "select * from dbo.Genre" /*+
                "inner join Genre as BC on BC.id = Genre_FK" +
                "inner join Age_Rating as DC on DC.id = Age_Rating_FK" +
                "inner join Rating_FK as FC on FC.id = Rating_FK"*/;
        command = new OdbcCommand(MyString, cn);
        reader = command.ExecuteReader();
            Name_Of_GenreGenreList test = new Name_Of_GenreGenreList();

        while (reader.Read())
        {
            Genre my = new Genre();
            my.id = Convert.ToInt32(reader["Id"]);
            my.Name_Of_Genre = reader["Name_Of_Genre"].ToString();

            test.Add(my);
        }
        cn.Close();
        cn.Dispose();
        return test;
    }
}
}