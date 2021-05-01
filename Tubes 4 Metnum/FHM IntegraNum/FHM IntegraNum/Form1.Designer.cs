namespace FHM_IntegraNum
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.comboBoxSoal = new System.Windows.Forms.ComboBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.comboBox2 = new System.Windows.Forms.ComboBox();
            this.tombolKerjakan = new System.Windows.Forms.Button();
            this.panel2 = new System.Windows.Forms.Panel();
            this.comboBox4 = new System.Windows.Forms.ComboBox();
            this.comboBox3 = new System.Windows.Forms.ComboBox();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.panel3 = new System.Windows.Forms.Panel();
            this.comboBox5 = new System.Windows.Forms.ComboBox();
            this.panel4 = new System.Windows.Forms.Panel();
            this.comboBox7 = new System.Windows.Forms.ComboBox();
            this.comboBox8 = new System.Windows.Forms.ComboBox();
            this.jawaban = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel4.SuspendLayout();
            this.SuspendLayout();
            // 
            // comboBoxSoal
            // 
            this.comboBoxSoal.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBoxSoal.FormattingEnabled = true;
            this.comboBoxSoal.Items.AddRange(new object[] {
            "Soal 1 Bidang Matematika",
            "Soal 2 Bidang Fisika 1",
            "Soal 3 Integral Ganda",
            "Soal 4 Bidang Kimia",
            "Soal 5 Bidang Transportasi",
            "Soal 6 Bidang Fisika 2",
            "Soal 7 Bidang Kelistrikan"});
            this.comboBoxSoal.Location = new System.Drawing.Point(12, 12);
            this.comboBoxSoal.Name = "comboBoxSoal";
            this.comboBoxSoal.Size = new System.Drawing.Size(169, 21);
            this.comboBoxSoal.TabIndex = 0;
            this.comboBoxSoal.SelectedIndexChanged += new System.EventHandler(this.comboBoxSoal_SelectedIndexChanged);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.comboBox2);
            this.panel1.Location = new System.Drawing.Point(12, 54);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(200, 100);
            this.panel1.TabIndex = 1;
            // 
            // comboBox2
            // 
            this.comboBox2.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox2.FormattingEnabled = true;
            this.comboBox2.Items.AddRange(new object[] {
            "Kaidah trapesium",
            "Kaidah titik-tengah",
            "Kadiah Simpson 1/3",
            "Kaidah Simpson 3/8",
            "Metode Romberg",
            "Metode Gauss-Legendre orde 2",
            "Metode Gauss-Legendre orde 3",
            "Metode Gauss-Legendre orde 4",
            "Metode Gauss-Legendre orde 5"});
            this.comboBox2.Location = new System.Drawing.Point(3, 13);
            this.comboBox2.Name = "comboBox2";
            this.comboBox2.Size = new System.Drawing.Size(169, 21);
            this.comboBox2.TabIndex = 2;
            // 
            // tombolKerjakan
            // 
            this.tombolKerjakan.Location = new System.Drawing.Point(202, 10);
            this.tombolKerjakan.Name = "tombolKerjakan";
            this.tombolKerjakan.Size = new System.Drawing.Size(75, 23);
            this.tombolKerjakan.TabIndex = 2;
            this.tombolKerjakan.Text = "Hitung";
            this.tombolKerjakan.UseVisualStyleBackColor = true;
            this.tombolKerjakan.Click += new System.EventHandler(this.button1_Click);
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.comboBox4);
            this.panel2.Controls.Add(this.comboBox3);
            this.panel2.Controls.Add(this.comboBox1);
            this.panel2.Location = new System.Drawing.Point(227, 54);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(200, 100);
            this.panel2.TabIndex = 3;
            // 
            // comboBox4
            // 
            this.comboBox4.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox4.FormattingEnabled = true;
            this.comboBox4.Items.AddRange(new object[] {
            "10",
            "100",
            "1000"});
            this.comboBox4.Location = new System.Drawing.Point(3, 67);
            this.comboBox4.Name = "comboBox4";
            this.comboBox4.Size = new System.Drawing.Size(82, 21);
            this.comboBox4.TabIndex = 4;
            // 
            // comboBox3
            // 
            this.comboBox3.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox3.FormattingEnabled = true;
            this.comboBox3.Items.AddRange(new object[] {
            "(0,10)",
            "(100,110)",
            "(1000,1010)",
            "(0,∞)"});
            this.comboBox3.Location = new System.Drawing.Point(3, 40);
            this.comboBox3.Name = "comboBox3";
            this.comboBox3.Size = new System.Drawing.Size(82, 21);
            this.comboBox3.TabIndex = 3;
            // 
            // comboBox1
            // 
            this.comboBox1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Items.AddRange(new object[] {
            "Kaidah trapesium",
            "Kaidah Simpson 3/8",
            "Metode Romberg",
            "Metode Gauss-Legendre orde 4"});
            this.comboBox1.Location = new System.Drawing.Point(3, 13);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(169, 21);
            this.comboBox1.TabIndex = 2;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.comboBox5);
            this.panel3.Location = new System.Drawing.Point(448, 54);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(200, 100);
            this.panel3.TabIndex = 3;
            // 
            // comboBox5
            // 
            this.comboBox5.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox5.FormattingEnabled = true;
            this.comboBox5.Items.AddRange(new object[] {
            "Kaidah trapesium",
            "Kadiah Simpson 1/3",
            "Metode Gauss-Legendre orde 2"});
            this.comboBox5.Location = new System.Drawing.Point(3, 13);
            this.comboBox5.Name = "comboBox5";
            this.comboBox5.Size = new System.Drawing.Size(169, 21);
            this.comboBox5.TabIndex = 2;
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.comboBox7);
            this.panel4.Controls.Add(this.comboBox8);
            this.panel4.Location = new System.Drawing.Point(12, 178);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(200, 100);
            this.panel4.TabIndex = 5;
            // 
            // comboBox7
            // 
            this.comboBox7.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox7.FormattingEnabled = true;
            this.comboBox7.Items.AddRange(new object[] {
            "1",
            "10",
            "20",
            "40",
            "60",
            "80",
            "120",
            "160",
            "250",
            "400"});
            this.comboBox7.Location = new System.Drawing.Point(3, 40);
            this.comboBox7.Name = "comboBox7";
            this.comboBox7.Size = new System.Drawing.Size(82, 21);
            this.comboBox7.TabIndex = 3;
            // 
            // comboBox8
            // 
            this.comboBox8.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox8.FormattingEnabled = true;
            this.comboBox8.Items.AddRange(new object[] {
            "Kaidah trapesium",
            "Kaidah Simpson 1/3",
            "Metode Romberg",
            "Metode Gauss-Legendre orde 3",
            "Metode Gauss-Legendre orde 4",
            "Metode Gauss-Legendre orde 5"});
            this.comboBox8.Location = new System.Drawing.Point(3, 13);
            this.comboBox8.Name = "comboBox8";
            this.comboBox8.Size = new System.Drawing.Size(169, 21);
            this.comboBox8.TabIndex = 2;
            // 
            // jawaban
            // 
            this.jawaban.AutoSize = true;
            this.jawaban.Location = new System.Drawing.Point(322, 12);
            this.jawaban.Name = "jawaban";
            this.jawaban.Size = new System.Drawing.Size(35, 13);
            this.jawaban.TabIndex = 6;
            this.jawaban.Text = "label1";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(681, 387);
            this.Controls.Add(this.jawaban);
            this.Controls.Add(this.panel4);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.tombolKerjakan);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.comboBoxSoal);
            this.Name = "Form1";
            this.Text = "Form1";
            this.panel1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel3.ResumeLayout(false);
            this.panel4.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox comboBoxSoal;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.ComboBox comboBox2;
        private System.Windows.Forms.Button tombolKerjakan;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.ComboBox comboBox4;
        private System.Windows.Forms.ComboBox comboBox3;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.ComboBox comboBox5;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.ComboBox comboBox7;
        private System.Windows.Forms.ComboBox comboBox8;
        private System.Windows.Forms.Label jawaban;
    }
}

