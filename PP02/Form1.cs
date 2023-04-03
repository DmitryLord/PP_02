using System;
using System.Drawing;
using System.Windows.Forms;

namespace PP02
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        private void textBox1_MouseDown(object sender, MouseEventArgs e)
        {
            textBox1.Text = "";
        }

        int countStr;
        private void Form1_Load(object sender, EventArgs e)
        {
            textBox1.TabStop = false;

            string[] names = SQL.ExitColumn("Service", "Title");

            string[] prices = SQL.ExitColumn("Service", "Cost");

            string[] sec = SQL.ExitColumn("Service", "DurationInSeconds");

            string[] sales = SQL.ExitColumn("Service", "Discount");

            string[] photos = SQL.ExitColumn("Service", "MainImagePath");

            string[] description = SQL.ExitColumn("Service", "Description");

            for (int i = 0; i < names.Length; i++)
            {
                ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i],description[i]);
                services.Dock = DockStyle.Top;
                if (sales[i] != "")
                {
                    services.BackColor = Color.LightGreen;
                }
                panel2.Controls.Add(services);
            }

            countStr = names.Length;
            label1.Text = names.Length + " из " + countStr;
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            if (textBox1.Text == "0000")
            {
                SQL.admin = true;
                button1.Visible = true;
                button2.Visible = true;
                if (textBox2.Text != "")
                {
                    if (comboBox1.Text == "5%")
                    {
                        panel2.Controls.Clear();

                        string[] names = SQL.ExitColumn($"Service where Discount>=5 and Discount<=15 and Title like '{textBox2.Text}%'", "Title");

                        string[] prices = SQL.ExitColumn($"Service where Discount>=5 and Discount<=15 and Title like '{textBox2.Text}%'", "Cost");

                        string[] sec = SQL.ExitColumn($"Service where Discount>=5 and Discount<=15 and Title like '{textBox2.Text}%'", "DurationInSeconds");

                        string[] sales = SQL.ExitColumn($"Service where Discount>=5 and Discount<=15 and Title like '{textBox2.Text}%'", "Discount");

                        string[] photos = SQL.ExitColumn($"Service where Discount>=5 and Discount<=15 and Title like '{textBox2.Text}%'", "MainImagePath");

                        string[] description = SQL.ExitColumn($"Service where Discount>=5 and Discount<=15 and Title like '{textBox2.Text}%'", "Description");

                        for (int i = 0; i < names.Length; i++)
                        {
                            ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                            services.Dock = DockStyle.Top;
                            if (sales[i] != "")
                            {
                                services.BackColor = Color.LightGreen;
                            }
                            panel2.Controls.Add(services);
                        }

                        label1.Text = names.Length + " из " + countStr;

                    }
                    else if (comboBox1.Text == "15%")
                    {
                        panel2.Controls.Clear();

                        string[] names = SQL.ExitColumn($"Service where Discount>=15 and Discount<=30 and Title like '{textBox2.Text}%'", "Title");

                        string[] prices = SQL.ExitColumn($"Service where Discount>=15 and Discount<=30 and Title like '{textBox2.Text}%'", "Cost");

                        string[] sec = SQL.ExitColumn($"Service where Discount>=15 and Discount<=30 and Title like '{textBox2.Text}%'", "DurationInSeconds");

                        string[] sales = SQL.ExitColumn($"Service where Discount>=15 and Discount<=30 and Title like '{textBox2.Text}%'", "Discount");

                        string[] photos = SQL.ExitColumn($"Service where Discount>=15 and Discount<=30 and Title like '{textBox2.Text}%'", "MainImagePath");

                        string[] description = SQL.ExitColumn($"Service where Discount>=15 and Discount<=30 and Title like '{textBox2.Text}%'", "Description");

                        for (int i = 0; i < names.Length; i++)
                        {
                            ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                            services.Dock = DockStyle.Top;
                            if (sales[i] != "")
                            {
                                services.BackColor = Color.LightGreen;
                            }
                            panel2.Controls.Add(services);
                        }

                        label1.Text = names.Length + " из " + countStr;
                    }
                    else if (comboBox1.Text == "30%")
                    {
                        panel2.Controls.Clear();

                        string[] names = SQL.ExitColumn($"Service where Discount>=30 and Discount<=70 and Title like '{textBox2.Text}%'", "Title");

                        string[] prices = SQL.ExitColumn($"Service where Discount>=30 and Discount<=70 and Title like '{textBox2.Text}%'", "Cost");

                        string[] sec = SQL.ExitColumn($"Service where Discount>=30 and Discount<=70 and Title like '{textBox2.Text}%'", "DurationInSeconds");

                        string[] sales = SQL.ExitColumn($"Service where Discount>=30 and Discount<=70 and Title like '{textBox2.Text}%'", "Discount");

                        string[] photos = SQL.ExitColumn($"Service where Discount>=30 and Discount<=70 and Title like '{textBox2.Text}%'", "MainImagePath");

                        string[] description = SQL.ExitColumn($"Service where Discount>=30 and Discount<=70 and Title like '{textBox2.Text}%'", "Description");

                        for (int i = 0; i < names.Length; i++)
                        {
                            ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                            services.Dock = DockStyle.Top;
                            if (sales[i] != "")
                            {
                                services.BackColor = Color.LightGreen;
                            }
                            panel2.Controls.Add(services);
                        }

                        label1.Text = names.Length + " из " + countStr;
                    }
                    else if (comboBox1.Text == "70%")
                    {
                        panel2.Controls.Clear();

                        string[] names = SQL.ExitColumn($"Service where Discount>=70 and Discount<=100 and Title like '{textBox2.Text}%'", "Title");

                        string[] prices = SQL.ExitColumn($"Service where Discount>=70 and Discount<=100 and Title like '{textBox2.Text}%'", "Cost");

                        string[] sec = SQL.ExitColumn($"Service where Discount>=70 and Discount<=100 and Title like '{textBox2.Text}%'", "DurationInSeconds");

                        string[] sales = SQL.ExitColumn($"Service where Discount>=70 and Discount<=100 and Title like '{textBox2.Text}%'", "Discount");

                        string[] photos = SQL.ExitColumn($"Service where Discount>=70 and Discount<=100 and Title like '{textBox2.Text}%'", "MainImagePath");

                        string[] description = SQL.ExitColumn($"Service where Discount>=70 and Discount<=100 and Title like '{textBox2.Text}%'", "Description");

                        for (int i = 0; i < names.Length; i++)
                        {
                            ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                            services.Dock = DockStyle.Top;
                            if (sales[i] != "")
                            {
                                services.BackColor = Color.LightGreen;
                            }
                            panel2.Controls.Add(services);
                        }

                        label1.Text = names.Length + " из " + countStr;
                    }
                    else if (comboBox1.Text == "Все скидки")
                    {
                        panel2.Controls.Clear();

                        string[] names = SQL.ExitColumn($"Service where Title like '{textBox2.Text}%'", "Title");

                        string[] prices = SQL.ExitColumn($"Service where Title like '{textBox2.Text}%'", "Cost");

                        string[] sec = SQL.ExitColumn($"Service where Title like '{textBox2.Text}%'", "DurationInSeconds");

                        string[] sales = SQL.ExitColumn($"Service where Title like '{textBox2.Text}%'", "Discount");

                        string[] photos = SQL.ExitColumn($"Service where Title like '{textBox2.Text}%'", "MainImagePath");

                        string[] description = SQL.ExitColumn($"Service where Title like '{textBox2.Text}%'", "Description");

                        for (int i = 0; i < names.Length; i++)
                        {
                            ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                            services.Dock = DockStyle.Top;
                            if (sales[i] != "")
                            {
                                services.BackColor = Color.LightGreen;
                            }
                            panel2.Controls.Add(services);
                        }

                        label1.Text = names.Length + " из " + countStr;
                    }
                }
                else
                {
                    if (comboBox1.Text == "5%")
                    {
                        panel2.Controls.Clear();

                        string[] names = SQL.ExitColumn("Service where Discount>=5 and Discount<=15", "Title");

                        string[] prices = SQL.ExitColumn("Service where Discount>=5 and Discount<=15", "Cost");

                        string[] sec = SQL.ExitColumn("Service where Discount>=5 and Discount<=15", "DurationInSeconds");

                        string[] sales = SQL.ExitColumn("Service where Discount>=5 and Discount<=15", "Discount");

                        string[] photos = SQL.ExitColumn("Service where Discount>=5 and Discount<=15", "MainImagePath");

                        string[] description = SQL.ExitColumn("Service where Discount>=5 and Discount<=15", "Description");

                        for (int i = 0; i < names.Length; i++)
                        {
                            ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                            services.Dock = DockStyle.Top;
                            if (sales[i] != "")
                            {
                                services.BackColor = Color.LightGreen;
                            }
                            panel2.Controls.Add(services);
                        }

                        label1.Text = names.Length + " из " + countStr;

                    }
                    else if (comboBox1.Text == "15%")
                    {
                        panel2.Controls.Clear();

                        string[] names = SQL.ExitColumn("Service where Discount>=15 and Discount<=30", "Title");

                        string[] prices = SQL.ExitColumn("Service where Discount>=15 and Discount<=30", "Cost");

                        string[] sec = SQL.ExitColumn("Service where Discount>=15 and Discount<=30", "DurationInSeconds");

                        string[] sales = SQL.ExitColumn("Service where Discount>=15 and Discount<=30", "Discount");

                        string[] photos = SQL.ExitColumn("Service where Discount>=15 and Discount<=30", "MainImagePath");

                        string[] description = SQL.ExitColumn("Service where Discount>=15 and Discount<=30", "Description");

                        for (int i = 0; i < names.Length; i++)
                        {
                            ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                            services.Dock = DockStyle.Top;
                            if (sales[i] != "")
                            {
                                services.BackColor = Color.LightGreen;
                            }
                            panel2.Controls.Add(services);
                        }

                        label1.Text = names.Length + " из " + countStr;
                    }
                    else if (comboBox1.Text == "30%")
                    {
                        panel2.Controls.Clear();

                        string[] names = SQL.ExitColumn("Service where Discount>=30 and Discount<=70", "Title");

                        string[] prices = SQL.ExitColumn("Service where Discount>=30 and Discount<=70", "Cost");

                        string[] sec = SQL.ExitColumn("Service where Discount>=30 and Discount<=70", "DurationInSeconds");

                        string[] sales = SQL.ExitColumn("Service where Discount>=30 and Discount<=70", "Discount");

                        string[] photos = SQL.ExitColumn("Service where Discount>=30 and Discount<=70", "MainImagePath");

                        string[] description = SQL.ExitColumn("Service where Discount>=30 and Discount<=70", "Description");

                        for (int i = 0; i < names.Length; i++)
                        {
                            ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                            services.Dock = DockStyle.Top;
                            if (sales[i] != "")
                            {
                                services.BackColor = Color.LightGreen;
                            }
                            panel2.Controls.Add(services);
                        }

                        label1.Text = names.Length + " из " + countStr;
                    }
                    else if (comboBox1.Text == "70%")
                    {
                        panel2.Controls.Clear();

                        string[] names = SQL.ExitColumn("Service where Discount>=70 and Discount<=100", "Title");

                        string[] prices = SQL.ExitColumn("Service where Discount>=70 and Discount<=100", "Cost");

                        string[] sec = SQL.ExitColumn("Service where Discount>=70 and Discount<=100", "DurationInSeconds");

                        string[] sales = SQL.ExitColumn("Service where Discount>=70 and Discount<=100", "Discount");

                        string[] photos = SQL.ExitColumn("Service where Discount>=70 and Discount<=100", "MainImagePath");

                        string[] description = SQL.ExitColumn("Service where Discount>=70 and Discount<=100", "Description");

                        for (int i = 0; i < names.Length; i++)
                        {
                            ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                            services.Dock = DockStyle.Top;
                            if (sales[i] != "")
                            {
                                services.BackColor = Color.LightGreen;
                            }
                            panel2.Controls.Add(services);
                        }

                        label1.Text = names.Length + " из " + countStr;
                    }
                    else if (comboBox1.Text == "Все скидки")
                    {
                        panel2.Controls.Clear();

                        string[] names = SQL.ExitColumn("Service", "Title");

                        string[] prices = SQL.ExitColumn("Service", "Cost");

                        string[] sec = SQL.ExitColumn("Service", "DurationInSeconds");

                        string[] sales = SQL.ExitColumn("Service", "Discount");

                        string[] photos = SQL.ExitColumn("Service", "MainImagePath");

                        string[] description = SQL.ExitColumn("Service", "Description");

                        for (int i = 0; i < names.Length; i++)
                        {
                            ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                            services.Dock = DockStyle.Top;
                            if (sales[i] != "")
                            {
                                services.BackColor = Color.LightGreen;
                            }
                            panel2.Controls.Add(services);
                        }

                        label1.Text = names.Length + " из " + countStr;
                    }
                }
            }

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (textBox2.Text != "")
            {
                if (comboBox1.Text == "5%")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn($"Service where Discount>=5 and Discount<=15 and Title like '{textBox2.Text}%'", "Title");

                    string[] prices = SQL.ExitColumn($"Service where Discount>=5 and Discount<=15 and Title like '{textBox2.Text}%'", "Cost");

                    string[] sec = SQL.ExitColumn($"Service where Discount>=5 and Discount<=15 and Title like '{textBox2.Text}%'", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn($"Service where Discount>=5 and Discount<=15 and Title like '{textBox2.Text}%'", "Discount");

                    string[] photos = SQL.ExitColumn($"Service where Discount>=5 and Discount<=15 and Title like '{textBox2.Text}%'", "MainImagePath");

                    string[] description = SQL.ExitColumn($"Service where Discount>=5 and Discount<=15 and Title like '{textBox2.Text}%'", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;

                }
                else if (comboBox1.Text == "15%")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn($"Service where Discount>=15 and Discount<=30 and Title like '{textBox2.Text}%'", "Title");

                    string[] prices = SQL.ExitColumn($"Service where Discount>=15 and Discount<=30 and Title like '{textBox2.Text}%'", "Cost");

                    string[] sec = SQL.ExitColumn($"Service where Discount>=15 and Discount<=30 and Title like '{textBox2.Text}%'", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn($"Service where Discount>=15 and Discount<=30 and Title like '{textBox2.Text}%'", "Discount");

                    string[] photos = SQL.ExitColumn($"Service where Discount>=15 and Discount<=30 and Title like '{textBox2.Text}%'", "MainImagePath");

                    string[] description = SQL.ExitColumn($"Service where Discount>=15 and Discount<=30 and Title like '{textBox2.Text}%'", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;
                }
                else if (comboBox1.Text == "30%")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn($"Service where Discount>=30 and Discount<=70 and Title like '{textBox2.Text}%'", "Title");

                    string[] prices = SQL.ExitColumn($"Service where Discount>=30 and Discount<=70 and Title like '{textBox2.Text}%'", "Cost");

                    string[] sec = SQL.ExitColumn($"Service where Discount>=30 and Discount<=70 and Title like '{textBox2.Text}%'", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn($"Service where Discount>=30 and Discount<=70 and Title like '{textBox2.Text}%'", "Discount");

                    string[] photos = SQL.ExitColumn($"Service where Discount>=30 and Discount<=70 and Title like '{textBox2.Text}%'", "MainImagePath");

                    string[] description = SQL.ExitColumn($"Service where Discount>=30 and Discount<=70 and Title like '{textBox2.Text}%'", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;
                }
                else if (comboBox1.Text == "70%")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn($"Service where Discount>=70 and Discount<=100 and Title like '{textBox2.Text}%'", "Title");

                    string[] prices = SQL.ExitColumn($"Service where Discount>=70 and Discount<=100 and Title like '{textBox2.Text}%'", "Cost");

                    string[] sec = SQL.ExitColumn($"Service where Discount>=70 and Discount<=100 and Title like '{textBox2.Text}%'", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn($"Service where Discount>=70 and Discount<=100 and Title like '{textBox2.Text}%'", "Discount");

                    string[] photos = SQL.ExitColumn($"Service where Discount>=70 and Discount<=100 and Title like '{textBox2.Text}%'", "MainImagePath");

                    string[] description = SQL.ExitColumn($"Service where Discount>=70 and Discount<=100 and Title like '{textBox2.Text}%'", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;
                }
                else if (comboBox1.Text == "Все скидки")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn($"Service where Title like '{textBox2.Text}%'", "Title");

                    string[] prices = SQL.ExitColumn($"Service where Title like '{textBox2.Text}%'", "Cost");

                    string[] sec = SQL.ExitColumn($"Service where Title like '{textBox2.Text}%'", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn($"Service where Title like '{textBox2.Text}%'", "Discount");

                    string[] photos = SQL.ExitColumn($"Service where Title like '{textBox2.Text}%'", "MainImagePath");

                    string[] description = SQL.ExitColumn($"Service where Title like '{textBox2.Text}%'", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;
                }
            }
            else
            {
                if (comboBox1.Text == "5%")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn("Service where Discount>=5 and Discount<=15", "Title");

                    string[] prices = SQL.ExitColumn("Service where Discount>=5 and Discount<=15", "Cost");

                    string[] sec = SQL.ExitColumn("Service where Discount>=5 and Discount<=15", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn("Service where Discount>=5 and Discount<=15", "Discount");

                    string[] photos = SQL.ExitColumn("Service where Discount>=5 and Discount<=15", "MainImagePath");

                    string[] description = SQL.ExitColumn("Service where Discount>=5 and Discount<=15", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;

                }
                else if (comboBox1.Text == "15%")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn("Service where Discount>=15 and Discount<=30", "Title");

                    string[] prices = SQL.ExitColumn("Service where Discount>=15 and Discount<=30", "Cost");

                    string[] sec = SQL.ExitColumn("Service where Discount>=15 and Discount<=30", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn("Service where Discount>=15 and Discount<=30", "Discount");

                    string[] photos = SQL.ExitColumn("Service where Discount>=15 and Discount<=30", "MainImagePath");

                    string[] description = SQL.ExitColumn("Service where Discount>=15 and Discount<=30", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;
                }
                else if (comboBox1.Text == "30%")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn("Service where Discount>=30 and Discount<=70", "Title");

                    string[] prices = SQL.ExitColumn("Service where Discount>=30 and Discount<=70", "Cost");

                    string[] sec = SQL.ExitColumn("Service where Discount>=30 and Discount<=70", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn("Service where Discount>=30 and Discount<=70", "Discount");

                    string[] photos = SQL.ExitColumn("Service where Discount>=30 and Discount<=70", "MainImagePath");

                    string[] description = SQL.ExitColumn("Service where Discount>=30 and Discount<=70", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;
                }
                else if (comboBox1.Text == "70%")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn("Service where Discount>=70 and Discount<=100", "Title");

                    string[] prices = SQL.ExitColumn("Service where Discount>=70 and Discount<=100", "Cost");

                    string[] sec = SQL.ExitColumn("Service where Discount>=70 and Discount<=100", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn("Service where Discount>=70 and Discount<=100", "Discount");

                    string[] photos = SQL.ExitColumn("Service where Discount>=70 and Discount<=100", "MainImagePath");

                    string[] description = SQL.ExitColumn("Service where Discount>=70 and Discount<=100", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;
                }
                else if (comboBox1.Text == "Все скидки")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn("Service", "Title");

                    string[] prices = SQL.ExitColumn("Service", "Cost");

                    string[] sec = SQL.ExitColumn("Service", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn("Service", "Discount");

                    string[] photos = SQL.ExitColumn("Service", "MainImagePath");

                    string[] description = SQL.ExitColumn("Service", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;
                }
            }
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            if (textBox2.Text != "")
            {
                if (comboBox1.Text == "5%")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn($"Service where Discount>=5 and Discount<=15 and Title like '{textBox2.Text}%'", "Title");

                    string[] prices = SQL.ExitColumn($"Service where Discount>=5 and Discount<=15 and Title like '{textBox2.Text}%'", "Cost");

                    string[] sec = SQL.ExitColumn($"Service where Discount>=5 and Discount<=15 and Title like '{textBox2.Text}%'", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn($"Service where Discount>=5 and Discount<=15 and Title like '{textBox2.Text}%'", "Discount");

                    string[] photos = SQL.ExitColumn($"Service where Discount>=5 and Discount<=15 and Title like '{textBox2.Text}%'", "MainImagePath");

                    string[] description = SQL.ExitColumn($"Service where Discount>=5 and Discount<=15 and Title like '{textBox2.Text}%'", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;

                }
                else if (comboBox1.Text == "15%")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn($"Service where Discount>=15 and Discount<=30 and Title like '{textBox2.Text}%'", "Title");

                    string[] prices = SQL.ExitColumn($"Service where Discount>=15 and Discount<=30 and Title like '{textBox2.Text}%'", "Cost");

                    string[] sec = SQL.ExitColumn($"Service where Discount>=15 and Discount<=30 and Title like '{textBox2.Text}%'", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn($"Service where Discount>=15 and Discount<=30 and Title like '{textBox2.Text}%'", "Discount");

                    string[] photos = SQL.ExitColumn($"Service where Discount>=15 and Discount<=30 and Title like '{textBox2.Text}%'", "MainImagePath");

                    string[] description = SQL.ExitColumn($"Service where Discount>=15 and Discount<=30 and Title like '{textBox2.Text}%'", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;
                }
                else if (comboBox1.Text == "30%")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn($"Service where Discount>=30 and Discount<=70 and Title like '{textBox2.Text}%'", "Title");

                    string[] prices = SQL.ExitColumn($"Service where Discount>=30 and Discount<=70 and Title like '{textBox2.Text}%'", "Cost");

                    string[] sec = SQL.ExitColumn($"Service where Discount>=30 and Discount<=70 and Title like '{textBox2.Text}%'", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn($"Service where Discount>=30 and Discount<=70 and Title like '{textBox2.Text}%'", "Discount");

                    string[] photos = SQL.ExitColumn($"Service where Discount>=30 and Discount<=70 and Title like '{textBox2.Text}%'", "MainImagePath");

                    string[] description = SQL.ExitColumn($"Service where Discount>=30 and Discount<=70 and Title like '{textBox2.Text}%'", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;
                }
                else if (comboBox1.Text == "70%")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn($"Service where Discount>=70 and Discount<=100 and Title like '{textBox2.Text}%'", "Title");

                    string[] prices = SQL.ExitColumn($"Service where Discount>=70 and Discount<=100 and Title like '{textBox2.Text}%'", "Cost");

                    string[] sec = SQL.ExitColumn($"Service where Discount>=70 and Discount<=100 and Title like '{textBox2.Text}%'", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn($"Service where Discount>=70 and Discount<=100 and Title like '{textBox2.Text}%'", "Discount");

                    string[] photos = SQL.ExitColumn($"Service where Discount>=70 and Discount<=100 and Title like '{textBox2.Text}%'", "MainImagePath");

                    string[] description = SQL.ExitColumn($"Service where Discount>=70 and Discount<=100 and Title like '{textBox2.Text}%'", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;
                }
                else if (comboBox1.Text == "Все скидки")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn($"Service where Title like '{textBox2.Text}%'", "Title");

                    string[] prices = SQL.ExitColumn($"Service where Title like '{textBox2.Text}%'", "Cost");

                    string[] sec = SQL.ExitColumn($"Service where Title like '{textBox2.Text}%'", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn($"Service where Title like '{textBox2.Text}%'", "Discount");

                    string[] photos = SQL.ExitColumn($"Service where Title like '{textBox2.Text}%'", "MainImagePath");

                    string[] description = SQL.ExitColumn($"Service where Title like '{textBox2.Text}%'", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;
                }
            }
            else
            {
                if (comboBox1.Text == "5%")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn("Service where Discount>=5 and Discount<=15", "Title");

                    string[] prices = SQL.ExitColumn("Service where Discount>=5 and Discount<=15", "Cost");

                    string[] sec = SQL.ExitColumn("Service where Discount>=5 and Discount<=15", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn("Service where Discount>=5 and Discount<=15", "Discount");

                    string[] photos = SQL.ExitColumn("Service where Discount>=5 and Discount<=15", "MainImagePath");

                    string[] description = SQL.ExitColumn("Service where Discount>=5 and Discount<=15", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;

                }
                else if (comboBox1.Text == "15%")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn("Service where Discount>=15 and Discount<=30", "Title");

                    string[] prices = SQL.ExitColumn("Service where Discount>=15 and Discount<=30", "Cost");

                    string[] sec = SQL.ExitColumn("Service where Discount>=15 and Discount<=30", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn("Service where Discount>=15 and Discount<=30", "Discount");

                    string[] photos = SQL.ExitColumn("Service where Discount>=15 and Discount<=30", "MainImagePath");

                    string[] description = SQL.ExitColumn("Service where Discount>=15 and Discount<=30", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;
                }
                else if (comboBox1.Text == "30%")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn("Service where Discount>=30 and Discount<=70", "Title");

                    string[] prices = SQL.ExitColumn("Service where Discount>=30 and Discount<=70", "Cost");

                    string[] sec = SQL.ExitColumn("Service where Discount>=30 and Discount<=70", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn("Service where Discount>=30 and Discount<=70", "Discount");

                    string[] photos = SQL.ExitColumn("Service where Discount>=30 and Discount<=70", "MainImagePath");

                    string[] description = SQL.ExitColumn("Service where Discount>=30 and Discount<=70", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;
                }
                else if (comboBox1.Text == "70%")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn("Service where Discount>=70 and Discount<=100", "Title");

                    string[] prices = SQL.ExitColumn("Service where Discount>=70 and Discount<=100", "Cost");

                    string[] sec = SQL.ExitColumn("Service where Discount>=70 and Discount<=100", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn("Service where Discount>=70 and Discount<=100", "Discount");

                    string[] photos = SQL.ExitColumn("Service where Discount>=70 and Discount<=100", "MainImagePath");

                    string[] description = SQL.ExitColumn("Service where Discount>=70 and Discount<=100", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i], description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;
                }
                else if (comboBox1.Text == "Все скидки")
                {
                    panel2.Controls.Clear();

                    string[] names = SQL.ExitColumn("Service", "Title");

                    string[] prices = SQL.ExitColumn("Service", "Cost");

                    string[] sec = SQL.ExitColumn("Service", "DurationInSeconds");

                    string[] sales = SQL.ExitColumn("Service", "Discount");

                    string[] photos = SQL.ExitColumn("Service", "MainImagePath");

                    string[] description = SQL.ExitColumn("Service", "Description");

                    for (int i = 0; i < names.Length; i++)
                    {
                        ServiceControl services = new ServiceControl(this, names[i], prices[i], sec[i], sales[i], photos[i],description[i]);
                        services.Dock = DockStyle.Top;
                        if (sales[i] != "")
                        {
                            services.BackColor = Color.LightGreen;
                        }
                        panel2.Controls.Add(services);
                    }

                    label1.Text = names.Length + " из " + countStr;
                }
            }

        }

        private void textBox2_MouseDown(object sender, MouseEventArgs e)
        {
            textBox2.Text = "";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            info.newStr = true;

            rednewOrder order = new rednewOrder();
            order.Show();
            this.Hide();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            writes writes = new writes();
            writes.Show();
            this.Hide();
        }
    }
}
