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
    public partial class ServiceControl : UserControl
    {

        Form1 Form1;
        string priceOut;
        string durationOut;
        string discountOut;
        string photoOut;
        public ServiceControl(Form1 form1,string name,string price,string sec,string sale,string photo,string description)
        {
            InitializeComponent();

            this.Form1 = form1;

            label1.Text = name;

            if (SQL.admin == true)
            {
                button1.Visible = true;
                button2.Visible = true;
                button3.Visible = true;
            }

            if (sale != "")
            {
                label3.Text = sale+"%";
                
                label2.Font= new Font(label2.Font.FontFamily, label2.Font.Size, FontStyle.Strikeout);

                label2.Text = price;

                price =(double.Parse(price)*int.Parse(sale)/100).ToString();

                label4.Text = price + "р за " + sec + " секунд";
            }
            else
            {
                label2.Text = price+"р за "+sec+" секунд";

                label3.Visible= false;
                label4.Visible = false;
            }
            textBox1.Text = description;
            pictureBox1.Image = new Bitmap(@"images\" + photo);

            priceOut = price;
            durationOut = sec;
            discountOut = sale;
            photoOut = photo;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            info.newStr = false;

            info.name = label1.Text;
            info.duration = durationOut;
            info.cost = priceOut;
            info.discount = discountOut;
            info.img = photoOut;
            info.description = textBox1.Text;

            rednewOrder order = new rednewOrder();
            order.Show();
            Form1.Hide();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string[] prov=SQL.ExitColumn($"ClientService,Service where Service.Title='{label1.Text}' and ClientService.ServiceID=Service.ID", "ClientService.ID");

            if (prov.Length == 0)
            {
                SQL.Querry($"delete from Service where Title='{label1.Text}'");
                MessageBox.Show("Данные удаленны");
            }
            else
            {
                MessageBox.Show("С данной услугой существуют записи");
            }
            
        }

        private void button3_Click(object sender, EventArgs e)
        {
            info.newStr = false;

            info.name = label1.Text;
            info.duration = durationOut;
            info.cost = priceOut;
            info.discount = discountOut;
            info.img = photoOut;
            info.description = textBox1.Text;

            newWrites writes = new newWrites();
            writes.Show();
            Form1.Hide();
        }
    }
}
