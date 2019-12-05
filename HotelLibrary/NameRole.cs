using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Odbc;


namespace HotelLibrary
{
    public class NameRole
    {

        public int id { get; set; } = 0;
        public string NameRoletwo { get; set; } = "";

        public void InsertNameRole()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            OdbcCommand cm = cn.CreateCommand();
            cm.CommandType = CommandType.StoredProcedure;
            cm.CommandText = "{ CALL NameRole_Insert (?)}";

            cm.Parameters.Add(new OdbcParameter("@NameRole", NameRoletwo));

            cm.ExecuteNonQuery();

            cn.Close();
            cn.Dispose();
        }

        public void UpdateNameRole()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            OdbcCommand cm = cn.CreateCommand();
            cm.CommandType = CommandType.StoredProcedure;

            cm.CommandText = "{ CALL NameRole_Update (?,?)}";
            cm.Parameters.Add(new OdbcParameter("@NameRole", NameRoletwo));
            cm.Parameters.Add(new OdbcParameter("@id", id));
            cm.ExecuteNonQuery();

            cn.Close();
            cn.Dispose();
        }
        public void DeleteNameRole()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            String query = "DELETE FROM NameRole where id = ?";
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

    public class NameRoleList : List<NameRole>
    {
        static public NameRoleList SelectNameRole()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            string MyString;
            OdbcCommand command;
            OdbcDataReader reader;
            MyString = "select * from dbo.NameRole" /*+
                "inner join Genre as BC on BC.id = Genre_FK" +
                "inner join Age_Rating as DC on DC.id = Age_Rating_FK" +
                "inner join Rating_FK as FC on FC.id = Rating_FK"*/;
            command = new OdbcCommand(MyString, cn);
            reader = command.ExecuteReader();
            NameRoleList test = new NameRoleList();

            while (reader.Read())
            {
                NameRole my = new NameRole();
                my.id = Convert.ToInt32(reader["Id"]);
                my.NameRoletwo = reader["NameRole"].ToString();

                test.Add(my);
            }
            cn.Close();
            cn.Dispose();
            return test;
        }
    }
}