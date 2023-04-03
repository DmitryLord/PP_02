using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Windows.Forms;

namespace PP02
{
    public partial class rednewOrder : Form
    {
        public rednewOrder()
        {
            InitializeComponent();
        }
        OpenFileDialog ofd = new OpenFileDialog();

        List <FileInfo> fileInfo=new List<FileInfo>();

        string servName = "";

        List<string> images = new List<string>();
        int indList = 0;
        int count;

        string[] id;

        private void rednewOrder_Load(object sender, EventArgs e)
        {
            if (info.newStr)
            {
                label1.Text = "Добавление записи";
            }
            else
            {
                label1.Text = "Редактирование записи";
                button1.Text = "Редактирвать";

                textBox1.Text = info.name;
                textBox2.Text = info.cost;
                if (info.discount != "")
                {
                    numericUpDown3.Value = int.Parse(info.discount);
                }
                else
                {
                    numericUpDown3.Value = 0;
                }
                numericUpDown2.Value = int.Parse(info.duration);
                
                textBox4.Text = info.description;

                pictureBox1.Image = new Bitmap(@"images\" + info.img);

                images.Add(@"C:\Users\User\Desktop\C#\PP02\PP02\bin\Debug\images\"+info.img);

                id = SQL.ExitColumn($"Service where Title='{info.name}' and DurationInSeconds='{info.duration}' and MainImagePath='{info.img}'", "ID");
                string[] photos=SQL.ExitColumn($"ServicePhoto where ServiceID='{id[0]}'","PhotoPath");
                for(int i=0; i < photos.Length; i++)
                {
                    images.Add(photos[i]);
                }
                count = images.Count;


                servName = textBox1.Text;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
            string[] name = SQL.ExitColumn($"Service where Title='{textBox1.Text}'", "Title");

            if (button1.Text == "Редактирвать")
            {
                if (name.Length == 0)
                {
                    if (ofd.FileName == "")
                    {
                        try
                        {
                            if (numericUpDown3.Value != 0)
                            {
                                SQL.Querry($@"update Service set Title='{textBox1.Text}',Cost='{textBox2.Text.Replace(",0000", "")}',DurationInSeconds='{numericUpDown2.Value}',Description='{textBox4.Text}',Discount='{numericUpDown3.Value}',MainImagePath='{info.img}' where ID='{id[0]}'");
                            }
                            else
                            {
                                SQL.Querry($@"update Service set Title='{textBox1.Text}',Cost='{textBox2.Text.Replace(",0000", "")}',DurationInSeconds='{numericUpDown2.Value}',Description='{textBox4.Text}',Discount=NULL,MainImagePath='{info.img}' where ID='{id[0]}'");
                            }
                            MessageBox.Show("Данные обновлены");

                            Form1 form = new Form1();
                            form.Show();
                            this.Hide();
                        }
                        catch
                        {
                            MessageBox.Show("Упс");
                        }

                    }
                    else
                    {
                        try
                        {
                            if (ofd.FileName != $@"C:\Users\User\Desktop\C#\PP02\PP02\bin\Debug\images\{Path.GetFileName(ofd.FileName)}")
                            {
                                fileInfo[0].CopyTo($@"C:\Users\User\Desktop\C#\PP02\PP02\bin\Debug\images\{Path.GetFileName(ofd.FileName)}", true);

                                if (numericUpDown3.Value != 0)
                                {
                                    SQL.Querry($@"update Service set Title='{textBox1.Text}',Cost='{textBox2.Text.Replace(",0000", "")}',DurationInSeconds='{numericUpDown2.Value}',Description='{textBox4.Text}',Discount='{numericUpDown3.Value}',MainImagePath='{Path.GetFileName(ofd.FileName)}' where ID='{id[0]}'");

                                    string[] idServ = SQL.ExitColumn($"Service where Title='{textBox1.Text}' and DurationInSeconds='{numericUpDown2.Value}' and MainImagePath='{Path.GetFileName(images[0])}'", "ID");

                                    for (int i = count+1; i < images.Count; i++)
                                    {
                                        SQL.QuerryInsert($@"insert ServicePhoto(ServiceID,PhotoPath) values ('{idServ[0]}','{images[i]}')");
                                    }
                                }
                                else
                                {
                                    SQL.Querry($@"update Service set Title='{textBox1.Text}',Cost='{textBox2.Text.Replace(",0000", "")}',DurationInSeconds='{numericUpDown2.Value}',Description='{textBox4.Text}',Discount=NULL,MainImagePath='{Path.GetFileName(ofd.FileName)}' where ID='{id[0]}'");

                                    string[] idServ = SQL.ExitColumn($"Service where Title='{textBox1.Text}' and DurationInSeconds='{numericUpDown2.Value}' and MainImagePath='{Path.GetFileName(images[0])}'", "ID");

                                    for (int i = count + 1; i < images.Count; i++)
                                    {
                                        SQL.QuerryInsert($@"insert ServicePhoto(ServiceID,PhotoPath) values ('{idServ[0]}','{images[i]}')");
                                    }
                                }
                                MessageBox.Show("Данные обновлены");

                                Form1 form = new Form1();
                                form.Show();
                                this.Hide();
                            }
                            else
                            {
                                MessageBox.Show("Данное изображение уже используется");
                            }

                        }
                        catch
                        {
                            MessageBox.Show("Упс");
                        }
                    }


                }
                else if (name[0] == servName)
                {
                    if (ofd.FileName == "")
                    {
                        try
                        {
                            if (numericUpDown3.Value != 0)
                            {
                                SQL.Querry($@"update Service set Title='{textBox1.Text}',Cost='{textBox2.Text.Replace(",0000", "")}',DurationInSeconds='{numericUpDown2.Value}',Description='{textBox4.Text}',Discount='{numericUpDown3.Value}',MainImagePath='{info.img}' where ID='{id[0]}'");
                            }
                            else
                            {
                                SQL.Querry($@"update Service set Title='{textBox1.Text}',Cost='{textBox2.Text.Replace(",0000", "")}',DurationInSeconds='{numericUpDown2.Value}',Description='{textBox4.Text}',Discount=NULL,MainImagePath='{info.img}' where ID='{id[0]}'");
                            }
                            MessageBox.Show("Данные обновлены");

                            Form1 form = new Form1();
                            form.Show();
                            this.Hide();
                        }
                        catch
                        {
                            MessageBox.Show("Упс");
                        }

                    }
                    else
                    {
                        try
                        {
                            if (ofd.FileName != $@"C:\Users\User\Desktop\C#\PP02\PP02\bin\Debug\images\{Path.GetFileName(ofd.FileName)}")
                            {
                                fileInfo[0].CopyTo($@"C:\Users\User\Desktop\C#\PP02\PP02\bin\Debug\images\{Path.GetFileName(ofd.FileName)}", true);

                                if (numericUpDown3.Value != 0)
                                {
                                    SQL.Querry($@"update Service set Title='{textBox1.Text}',Cost='{textBox2.Text.Replace(",0000", "")}',DurationInSeconds='{numericUpDown2.Value}',Description='{textBox4.Text}',Discount='{numericUpDown3.Value}',MainImagePath='{Path.GetFileName(ofd.FileName)}' where ID='{id[0]}'");

                                    string[] idServ = SQL.ExitColumn($"Service where Title='{textBox1.Text}' and DurationInSeconds='{numericUpDown2.Value}' and MainImagePath='{Path.GetFileName(images[0])}'", "ID");

                                    for (int i = count + 1; i < images.Count; i++)
                                    {
                                        SQL.QuerryInsert($@"insert ServicePhoto(ServiceID,PhotoPath) values ('{idServ[0]}','{images[i]}')");
                                    }
                                }
                                else
                                {
                                    SQL.Querry($@"update Service set Title='{textBox1.Text}',Cost='{textBox2.Text.Replace(",0000", "")}',DurationInSeconds='{numericUpDown2.Value}',Description='{textBox4.Text}',Discount=NULL,MainImagePath='{Path.GetFileName(ofd.FileName)}' where ID='{id[0]}'");

                                    string[] idServ = SQL.ExitColumn($"Service where Title='{textBox1.Text}' and DurationInSeconds='{numericUpDown2.Value}' and MainImagePath='{Path.GetFileName(images[0])}'", "ID");

                                    for (int i = count + 1; i < images.Count; i++)
                                    {
                                        SQL.QuerryInsert($@"insert ServicePhoto(ServiceID,PhotoPath) values ('{idServ[0]}','{images[i]}')");
                                    }
                                }

                                MessageBox.Show("Данные обновлены");

                                Form1 form = new Form1();
                                form.Show();
                                this.Hide();
                            }
                            else
                            {
                                MessageBox.Show("Данное изображение уже используется");
                            }
                            
                        }
                        catch
                        {
                            MessageBox.Show("Упс");
                        }
                    }


                }
                else
                {
                    MessageBox.Show("Данная услуга уже существует!");
                }

            }
            else
            {
                if (name.Length != 0)
                {
                    MessageBox.Show("Данная услуга уже существует!");
                }
                else
                {
                    try
                    {
                        for(int i = 0; i < images.Count; i++)
                        {
                            fileInfo[i].CopyTo($@"C:\Users\User\Desktop\C#\PP02\PP02\bin\Debug\images\{Path.GetFileName(images[i])}", true);
                        }

                        if (numericUpDown3.Value != 0)
                        {
                            MessageBox.Show(SQL.QuerryInsert($@"insert Service(Title,Cost,DurationInSeconds,Description,Discount,MainImagePath) values ('{textBox1.Text}','{textBox2.Text}','{numericUpDown2.Value}','{textBox4.Text}','{numericUpDown3.Value}','{Path.GetFileName(images[0])}')"));
                        }
                        else
                        {
                            MessageBox.Show(SQL.QuerryInsert($@"insert Service(Title,Cost,DurationInSeconds,Description,Discount,MainImagePath) values ('{textBox1.Text}','{textBox2.Text}','{numericUpDown2.Value}','{textBox4.Text}',NULL,'{Path.GetFileName(images[0])}')"));
                        }
                        

                        string[] idServ=SQL.ExitColumn($"Service where Title='{textBox1.Text}' and DurationInSeconds='{numericUpDown2.Value}' and MainImagePath='{Path.GetFileName(images[0])}'", "ID");

                        for (int i = 1; i < images.Count; i++)
                        {
                            SQL.QuerryInsert($@"insert ServicePhoto(ServiceID,PhotoPath) values ('{idServ[0]}','{images[i]}')");
                        }

                        Form1 form = new Form1();
                        form.Show();
                        this.Hide();
                    }
                    catch
                    {
                        MessageBox.Show("Упс");
                    }

                }
            }
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            ofd.Filter = "Image Files(*.BMP;*.JPG;*GIF;*.PNG;)|*.BMP;*.JPG;*.GIF;*.PNG; | All files(*.*) | *.*";
            if (ofd.ShowDialog() == DialogResult.OK)
            {
                try
                {
                    FileInfo path = new FileInfo(ofd.FileName);
                    fileInfo.Add(path);

                    pictureBox1.Image = new Bitmap(ofd.FileName);

                    images.Add(ofd.FileName);

                }
                catch
                {
                    MessageBox.Show("Невозможно открыть выбранный файл", "Ошибка");
                }
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (indList != 0)
            {
                indList--;
                pictureBox1.Image = new Bitmap(@images[indList]);
            }
            else
            {
                indList = images.Count - 1;
                pictureBox1.Image = new Bitmap(@images[indList]);
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (indList != images.Count - 1)
            {
                indList++;
                pictureBox1.Image = new Bitmap(images[indList]);
            }
            else
            {
                indList = 0;
                pictureBox1.Image = new Bitmap(images[indList]);
            }
        }
    }
}
