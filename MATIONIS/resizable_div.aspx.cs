using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class resizable_div : System.Web.UI.Page{
 protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_Register(object sender, EventArgs e)
    {
       

      
       
        string address=null ;
        System.Data.SqlClient.SqlDataReader reader;
        System.Data.SqlClient.SqlDataReader reader2;
        string Role = "admin";
       
        address = this.adr1.Text + "," + this.adr2.Text + "," + this.cit.Text + "," + this.stat.Text + this.cntry.Text + "," + this.zipco.Text;
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
        System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(cs);
        String query = "SELECT EMail from MAT_USER where EMail= " + "'" + this.emtb3.Text + "'";
        System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand(query, con);
        con.Open();

        reader = cmd1.ExecuteReader();
        
        if (reader.HasRows)
        {
            error4.InnerHtml = "Error-e-mail already exists";
            con.Close();
        }
        else
        {
            con.Close();
            //SqlCommand cmd = new SqlCommand("INSERT INTO MAT_USER (FirstName,LastName,Email,Contact,Address,Role)  VALUES('" + this.tb1.Text + "','" + this.tb2.Text + "','" + this.emtb3.Text + "','" + this.cntct.Text + "','" + address + "','" + Role + "';SELECT SCOPE_IDENTITY())", con);
            con.Open();
            SqlCommand cmd = new SqlCommand(
        "Register_PROC" ,con);
              cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add(
		new SqlParameter("@FirstName", this.tb1.Text));
		cmd.Parameters.Add(
		new SqlParameter("@LastName",  this.tb2.Text));
		cmd.Parameters.Add(
		new SqlParameter("@email",  this.emtb3.Text));
		cmd.Parameters.Add(
		new SqlParameter("@contact",  this.cntct.Text));
		cmd.Parameters.Add(
		new SqlParameter("@address",  address));
		cmd.Parameters.Add(
		new SqlParameter("@role",  Role));
		cmd.Parameters.Add(
		new SqlParameter("@password",  this.ptb4.Text));
        reader2=cmd.ExecuteReader();
        while (reader2.Read())
        {
            
        }


            // 2. set the command object so it knows
            // to execute a stored procedure
          
            //SqlCommand cmd = new SqlCommand("insert into MAT_USER (FirstName,LastName,Email,Contact,Address,Role)values(@FirstName,@LastName,@Email,@Contact,@Address,@Role); SELECT SCOPE_IDENTITY()", con);
            //cmd.Parameters.AddWithValue("@FirstName", this.tb1.Text);
            //cmd.Parameters.AddWithValue("@LastName", this.tb2.Text);
            //cmd.Parameters.AddWithValue("@Email", this.emtb3.Text);
            //cmd.Parameters.AddWithValue("@Contact", this.cntct.Text);
            //cmd.Parameters.AddWithValue("@Address", address);
            //cmd.Parameters.AddWithValue("@Role", Role);

            ////int custId = Convert.ToInt32(scmd.ExecuteScalar());
            //int UserID = Convert.ToInt32(cmd.ExecuteScalar());
    
            
           
            //SqlCommand cmd2 = new SqlCommand("INSERT INTO User_Auth VALUES('" +UserID+"','"+  this.ptb4.Text + "')", con);
          
           
            //cmd2.ExecuteNonQuery();
            con.Close();
            System.Threading.Thread.Sleep(3000);
            Response.Redirect("Default.aspx", true);
        }

       
       
      
      

    }
    
    protected void btn_Clear(object sender, EventArgs e)
    {
        this.tb1.Text = "";
        this.tb2.Text = "";
        this.emtb3.Text = "";
        this.cntry.Text = "";
        this.cit.Text = "";
        this.stat.Text = "";
        this.zipco.Text = "";
        this.ptb4.Text = "";
        this.adr1.Text = "";
        this.adr2.Text = "";
        this.cntct.Text = "";
        error4.InnerHtml = " ";

    }
}