using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace FHM_IntegraNum
{
    public partial class Form1 : Form
    {
        Algo shit = new Algo();
        public Form1()
        {
            
            InitializeComponent();
            Console.WriteLine("Soal 1 : " + shit.trapesium(0, 100, 10, 1));
            panel1.Hide();
            panel2.Hide();
            panel3.Hide();
            panel4.Hide();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            switch (comboBoxSoal.SelectedIndex)
            {
                case 0:
                    double j = shit.trapesium(0, 100, 10, 1);
                    jawaban.Text = j.ToString(); 
                        break;
            }
        }

        private void comboBoxSoal_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (comboBoxSoal.SelectedIndex)
            {
                case 0:
                    panel1.Show();
                    panel2.Hide();
                    panel3.Hide();
                    panel4.Hide();
                    break;
                case 1:
                    panel2.Show();
                    panel1.Hide();
                    panel3.Hide();
                    panel4.Hide();
                    break;
                case 2:
                    panel3.Show();
                    panel2.Hide();
                    panel1.Hide();
                    panel4.Hide();
                    break;
                case 3:
                    panel4.Show();
                    panel2.Hide();
                    panel3.Hide();
                    panel1.Hide();
                    break;
                case 4:
                    break;
                case 5:
                case 6:                
                    break;
            }
        }
    }
}
