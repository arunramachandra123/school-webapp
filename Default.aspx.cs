    using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using MySql.Data.MySqlClient;

namespace webapplication
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        


        protected void txt_admission_TextChanged(object sender, EventArgs e)
        {


            
            string connetionString;
            MySqlConnection cnn;

            //connetionString = @"add name="connection"; connectionString="server=localhost;User Id=root; Password=; database=school_atendance"; providerName="MySql.Data.MySqlClient"";
            connetionString = @"Data Source=localhost;Initial Catalog=aspdemo_db ;User ID=root;Password=";
            cnn = new MySqlConnection(connetionString);

            string cla = txt_class.Text;
            string aca = txt_year.Text;


            MySqlCommand cmd1 = new MySqlCommand("SELECT admissionnumber FROM aspdemo WHERE acdamicyear='"+cla+"' AND class='"+aca+"' ORDER BY admissionnumber DESC LIMIT 1", cnn);

            cnn.Open();
            MySqlDataReader readers = cmd1.ExecuteReader();

            if (readers.Read())
            {
                if (txt_class.Text == "10th std")
                {
                    string admission = readers["admissionnumber"].ToString();
                    string lastthirdCharacter = admission.Substring(12);
                    // string lastthirdCharacter = admission.Substring(admission.Length - 3);
                    double add = Convert.ToDouble(lastthirdCharacter);
                    double one = 1;
                    double total = add + one;
                    string totals = Convert.ToString(total);

                    string year = txt_year.Text;
                    string clas = txt_class.Text;
                    string yearstarting = year.Substring(0, 4);

                    txt_admission.Text = (yearstarting + clas + totals);
                }
                else
                {
                    string admission = readers["admissionnumber"].ToString();
                    string lastthirdCharacter = admission.Substring(11);
                    // string lastthirdCharacter = admission.Substring(admission.Length - 3);
                    double add = Convert.ToDouble(lastthirdCharacter);
                    double one = 1;
                    double total = add + one;
                    string totals = Convert.ToString(total);

                    string year = txt_year.Text;
                    string clas = txt_class.Text;
                    string yearstarting = year.Substring(0, 4);

                    txt_admission.Text = (yearstarting + clas + totals);
                }
                readers.Close();
                cnn.Close();
            }
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            string connetionString;
            MySqlConnection cnn;

            //connetionString = @"add name="connection"; connectionString="server=localhost;User Id=root; Password=; database=school_atendance"; providerName="MySql.Data.MySqlClient"";
            connetionString = @"Data Source=localhost;Initial Catalog=aspdemo_db ;User ID=root;Password=";
            cnn = new MySqlConnection(connetionString);




            MySqlCommand cmd1 = new MySqlCommand("SELECT admissionnumber FROM aspdemo WHERE acdamicyear='" + txt_year.Text + "' AND class='" + txt_class.Text + "'ORDER BY admissionnumber DESC LIMIT 1", cnn);

            cnn.Open();
            MySqlDataReader readers = cmd1.ExecuteReader();

            if (readers.Read())
            {
                if (txt_class.Text == "10th std")
                {
                    string admission = readers["admissionnumber"].ToString();
                    string lastthirdCharacter = admission.Substring(12);
                    // string lastthirdCharacter = admission.Substring(admission.Length - 3);
                    double add = Convert.ToDouble(lastthirdCharacter);
                    double one = 1;
                    double total = add + one;
                    string totals = Convert.ToString(total);

                    string year = txt_year.Text;
                    string clas = txt_class.Text;
                    string yearstarting = year.Substring(0, 4);

                    txt_admission.Text = (yearstarting + clas + totals);
                }
                else
                {
                    string admission = readers["admissionnumber"].ToString();
                    string lastthirdCharacter = admission.Substring(11);
                    // string lastthirdCharacter = admission.Substring(admission.Length - 3);
                    double add = Convert.ToDouble(lastthirdCharacter);
                    double one = 1;
                    double total = add + one;
                    string totals = Convert.ToString(total);

                    string year = txt_year.Text;
                    string clas = txt_class.Text;
                    string yearstarting = year.Substring(0, 4);

                    txt_admission.Text = (yearstarting + clas + totals);
                }
                readers.Close();
                cnn.Close();
            }
            string connetionnString;
            MySqlConnection cnnn;
            
            //connetionString = @"add name="connection"; connectionString="server=localhost;User Id=root; Password=; database=school_atendance"; providerName="MySql.Data.MySqlClient"";
            connetionnString = @"Data Source=localhost;Initial Catalog=aspdemo_db ;User ID=root;Password=";
            cnnn = new MySqlConnection(connetionString);

            cnnn.Open();



            {
                MySqlCommand cmd = new MySqlCommand("INSERT INTO aspdemo(acdamicyear,studentname,dob,gender,class,admissionnumber,rollnumber,fathername,mothername,contactnumber) VALUES('" + txt_year.Text.ToString() + "','" + txt_name.Text.ToString() + "','" + txt_dateofbirth.Text.ToString() + "','" + txt_gender.Text.ToString() + "','" + txt_class.Text.ToString() + "','" + txt_admission.Text.ToString() + "','" + txt_rollno.Text.ToString() + "','" + txt_father.Text.ToString() + "','" + txt_mother.Text.ToString() + "','" + txt_contact.Text.ToString() + "')", cnnn);
                cmd.ExecuteNonQuery();
                txt_contact.Text = String.Empty;
                txt_class.Text = String.Empty;
                txt_father.Text = String.Empty;
                txt_mother.Text  = String.Empty;
                txt_name.Text  = String.Empty;
                txt_year.Text  = String.Empty;
                txt_admission.Text  = String.Empty;
                txt_dateofbirth.Text  = String.Empty;
                txt_rollno.Text =  String.Empty;
                txt_gender.Text = String.Empty;
                


                // MessageBox.Show("Admission Completed");
                cnnn.Close();
                
            }
        }

        protected void txt_year_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txt_class_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void txt_admission_Load(object sender, EventArgs e)
        {
            
        }

        protected void txt_year_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void datepicker_SelectionChanged(object sender, EventArgs e)
        {
            
            txt_dateofbirth.Text = datepicker.SelectedDate.ToShortDateString(); // just use this method to get dd/MM/yyyy  
            datepicker.Visible = false;  
        }

       

       

        
      
    }
}
