using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PP02
{
    public partial class newWrites : Form
    {
        public newWrites()
        {
            InitializeComponent();
        }

        private void newWrites_Load(object sender, EventArgs e)
        {
            textBox2.Text = info.name;
            label2.Text= (int.Parse(info.duration)/60).ToString()+" мин";

            comboBox1.DataSource = SQL.ExitColumn("Client", "FirstName+' '+LastName+' '+Patronymic");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string[] id = SQL.ExitColumn($"Service where Title='{textBox2.Text}'", "ID");

            MessageBox.Show(SQL.QuerryInsert($@"insert ClientService(ClientID,ServiceID,StartTime,Comment) values ('{comboBox1.SelectedIndex+1}','{id[0]}','{dateTimePicker1.Value:yyyy-MM-dd}T{dateTimePicker2.Value:HH:mm:ss}','{textBox1.Text}')"));

            Form1 form1 = new Form1();
            form1.Show();
            this.Hide();
        }
    }
}
