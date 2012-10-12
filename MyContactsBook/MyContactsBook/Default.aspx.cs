using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MyContactsBook
{
    public partial class _Default : System.Web.UI.Page
    {
        public List<String> _contacts = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            string connString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\KuP\Projects\MyContactsBook\MyContactsBook\App_Data\Contacts.mdf;Integrated Security=True;User Instance=True";
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = new SqlCommand("GetContacts", conn);
            adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            
            DataTable table = new DataTable();
            adapter.Fill(table);
            conn.Close();

            foreach (System.Data.DataRow row in table.Rows)
            {
                foreach (var item in row.ItemArray)
                {
                    _contacts.Add(item.ToString());
                }
            }
        }
    }
}