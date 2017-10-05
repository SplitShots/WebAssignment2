using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    public void Page_Load(object sender, EventArgs e)
    {
        //Maually register the event handler
        btnRemember.Click += new EventHandler(btnRemember_Click);
        btnSubmit.Click += new EventHandler(btnSubmit_Click);
    }

    public void btnRemember_Click(object sender, EventArgs e)
{
    string LName = lastName.Text;
    string FName = firstName.Text;


    tbComment.Text = "success";
    try
    {
        SqlConnection connection = new SqlConnection("Server=35.203.184.88,1433; Database=Restaurant;User Id=DanielNguyen; Password = P@ssword1; ");
        SqlCommand cmd = new SqlCommand("SELECT * FROM UserInformation where LName = @LName and FName = @FName;", connection);
        cmd.Parameters.AddWithValue("@FName", FName);
        cmd.Parameters.AddWithValue("@LName", LName);
        connection.Open();
        SqlDataReader ds = cmd.ExecuteReader();
        if (ds.HasRows)
        {
            while (ds.Read())
            {
                int DeliveryStatus;
                lastName.Text = ds.GetString(0);
                firstName.Text = ds.GetString(1);
                postalCode.Text = ds.GetString(2);
                phoneNumber.Text = ds.GetString(3);
                province.SelectedValue = ds.GetString(4);
                menu.SelectedValue = ds.GetString(5);
                DeliveryStatus = Convert.ToInt32(ds.GetByte(6));
                if (DeliveryStatus == 0)
                    Pickup.Checked = true;
                else if (DeliveryStatus == 1)
                    Delivery.Checked = true;
                tbComment.Text = "success";
            }
        }
        else
        {
            tbComment.Text = "User Not Found";
        }
        connection.Close();

    }

    catch (Exception ex)
    {
        tbComment.Text = ex.Message;
    }

}
public void btnSubmit_Click(object sender, EventArgs e)
{
    bool check = true;
    string LName = lastName.Text;
    string FName = firstName.Text;
    string PCode = postalCode.Text;
    string PhoneNumber = phoneNumber.Text;
    string Province = province.SelectedItem.Text;
    string Menu = menu.SelectedItem.Text;
    int DeliveryStatus;
    string Comments = tbComment.Text;

    if (Pickup.Checked == true)
    {
        check = true;
    }
    else if (Delivery.Checked == true)
    {
        check = false;
    }

    if (check)
        DeliveryStatus = 0;
    else
        DeliveryStatus = 1;
    try
    {
        SqlConnection connection = new SqlConnection("Data Source = DESKTOP-EN7AGUN; Initial Catalog = Restaurant; Integrated Security = True");
        SqlCommand cmd = new SqlCommand("INSERT INTO [UserInformation] ([LName], [FName], [PCode], [PhoneNumber], [Province], " +
        "[Menu], [DeliveryStatus], [Comments])" +
        " VALUES ( @LName, @FName, @PCode, @PhoneNumber, @Province, @Menu, @DeliveryStatus, @Comments)");
        {
            cmd.Connection = connection;
            connection.Open();
            cmd.Parameters.AddWithValue("@LName", LName);
            cmd.Parameters.AddWithValue("@Fname", FName);
            cmd.Parameters.AddWithValue("@PCode", PCode);
            cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNumber);
            cmd.Parameters.AddWithValue("@Province", Province);
            cmd.Parameters.AddWithValue("@Menu", Menu);
            cmd.Parameters.AddWithValue("@DeliveryStatus", DeliveryStatus);
            cmd.Parameters.AddWithValue("@Comments", tbComment.Text);
            cmd.ExecuteNonQuery();
            connection.Close();
            //tbComment.Text = "Connection Success.";
        }
    }
    catch
    {
        tbComment.Text = "Connection Failed.";
    }



}
}