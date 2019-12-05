using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Odbc;

namespace HotelLibrary
{
    public class Participants
    {
        public int id { get; set; } = 0;
        public string FirstName { get; set; } = "Null";
        public string LastName { get; set; } = "Null";
        public string SurName { get; set; } = "Null";
        public int Film_FK { get; set; } = 0;
        public OdbcException E { get; set; } = null;
        public int Role_FK { get; set; } = 0;

        public string Role { get; set; } = "";
        public string Name { get; set; } = "";

        public void InsertClient()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            OdbcCommand cm = cn.CreateCommand();
            cm.CommandType = CommandType.StoredProcedure;
            cm.CommandText = "{ CALL Participants_Insert (?,?,?,?,?)}";

            cm.Parameters.Add(new OdbcParameter("@FirstName", FirstName));
            cm.Parameters.Add(new OdbcParameter("@LastName", LastName));
            cm.Parameters.Add(new OdbcParameter("@SurName", SurName));
            cm.Parameters.Add(new OdbcParameter("@Film_FK", Film_FK));
            cm.Parameters.Add(new OdbcParameter("@Role_FK", Role_FK));

            cm.ExecuteNonQuery();

            cn.Close();
            cn.Dispose();
        }

        public void UpdateClient()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            OdbcCommand cm = cn.CreateCommand();
            cm.CommandType = CommandType.StoredProcedure;

            cm.CommandText = "{ CALL Participants_Update (?,?,?,?,?,?)}";
            cm.Parameters.Add(new OdbcParameter("@FirstName", FirstName));
            cm.Parameters.Add(new OdbcParameter("@LastName", LastName));
            cm.Parameters.Add(new OdbcParameter("@SurName", SurName));
            cm.Parameters.Add(new OdbcParameter("@Film_FK", Film_FK));
            cm.Parameters.Add(new OdbcParameter("@Role_FK", Role_FK));;
            cm.Parameters.Add(new OdbcParameter("@id", id));
            cm.ExecuteNonQuery();

            cn.Close();
            cn.Dispose();
        }
        public void DeleteClient()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            String query = "DELETE FROM Participants where id = ?";
            OdbcCommand command;
            using (command = new OdbcCommand(query, cn))
            {
                command.Parameters.AddWithValue("@id", id);

                try
                {
                    command.ExecuteNonQuery();
                }

                catch (OdbcException E)
                {
                    this.E = E;
                }
            }
            cn.Close();
            cn.Dispose();
        }
    }

    public class ParticipantsList : List<Participants>
    {
        static public ParticipantsList SelectClient()
        {
            OdbcConnection cn = new OdbcConnection();
            cn.ConnectionString = Connections.ConnectionString;
            cn.Open();
            string MyString;
            OdbcCommand command;
            OdbcDataReader reader;
            MyString = "select * from dbo.Participants "+
                "inner join Films as MC on MC.id = Film_FK " +
                "inner join NameRole as KC on KC.id = Role_FK ";
            command = new OdbcCommand(MyString, cn);
            reader = command.ExecuteReader();
            ParticipantsList test = new ParticipantsList();

            while (reader.Read())
            {
                Participants my = new Participants();

                my.id = Convert.ToInt32(reader["Id"]);
                my.FirstName = reader["FirstName"].ToString();
                my.LastName = reader["LastName"].ToString();
                my.SurName = reader["SurName"].ToString();
                my.Film_FK = Convert.ToInt32(reader["Film_FK"]);
                my.Role_FK = Convert.ToInt32(reader["Role_FK"]);
                my.Name = reader["Name_Film"].ToString();
                my.Role = reader["NameRole"].ToString();
                test.Add(my);
            }
            cn.Close();
            cn.Dispose();
            return test;
        }
    }
}