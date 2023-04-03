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
    public partial class writes : Form
    {
        public writes()
        {
            InitializeComponent();
        }

        private void writes_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = SQL.QuerryForTable($@"select Service.Title,Client.FirstName+' '+Client.LastName+' '+Client.Patronymic as 'ФИО',Client.Email,Client.Phone as 'Телефон',ClientService.StartTime as 'Дата начала',DATEDIFF(MINUTE,ClientService.StartTime,GETDATE())/60 AS 'Часов',DATEDIFF(MINUTE,ClientService.StartTime,GETDATE())%60 as 'Минут' from Client,ClientService,Service where Client.ID=ClientService.ClientID and Service.ID=ClientService.ServiceID ORDER BY ClientService.StartTime").Tables[0];

            for (int i = 0; i < dataGridView1.Rows.Count-1; i++)
            {
                if (int.Parse(dataGridView1.Rows[i].Cells[5].Value.ToString()) <= 1)
                {
                    dataGridView1.Rows[i].Cells[5].Style.BackColor = Color.Red;
                }
            }
            timer1.Start();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            dataGridView1.DataSource = SQL.QuerryForTable($@"select Service.Title,Client.FirstName+' '+Client.LastName+' '+Client.Patronymic as 'ФИО',Client.Email,Client.Phone as 'Телефон',ClientService.StartTime as 'Дата начала',DATEDIFF(MINUTE,ClientService.StartTime,GETDATE())/60 AS 'Часов',DATEDIFF(MINUTE,ClientService.StartTime,GETDATE())%60 as 'Минут' from Client,ClientService,Service where Client.ID=ClientService.ClientID and Service.ID=ClientService.ServiceID ORDER BY ClientService.StartTime").Tables[0];

            for (int i = 0; i < dataGridView1.Rows.Count-1; i++)
            {
                if (int.Parse(dataGridView1.Rows[i].Cells[5].Value.ToString()) <= 1)
                {
                    dataGridView1.Rows[i].Cells[5].Style.BackColor = Color.Red;
                }
            }
        }
    }
}
