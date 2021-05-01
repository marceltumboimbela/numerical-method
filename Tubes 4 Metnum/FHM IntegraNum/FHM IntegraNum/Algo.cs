using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FHM_IntegraNum
{
    class Algo
    {
        double T;
        public double fungsi(double x, int soal)
        {
            double c = 2.99792 * Math.Pow(10, 10);
            double h = 6.6256 * Math.Pow(10, -27);
            double k = 1.3805 * Math.Pow(10, -16);
             
            switch (soal)
            {
                case 0:
                    {
                        return (53.3904*(1-Math.Exp(-(12.5/68.1)*x)));
                    }
                case 1:
                    {
                        return (Math.Exp(-x) / (1 + Math.Sqrt(x) + Math.Pow(x, 2)));
                    }
                case 2:
                    {
                        return Math.PI * 2 * h * Math.Pow(c, 2) / ((h * c) / (k*T));
                    }
                case 3:
                    {
                        return Math.Pow(x, 3);
                    }
                case 4:
                    {
                        return Math.Exp(-x) / 1 + Math.Sqrt(x) + Math.Pow(x, 2);
                    }
                case 5:
                    {
                        return Math.Exp(-x) / 1 + Math.Sqrt(x) + Math.Pow(x, 2);
                    }
                case 6:
                    {
                        return Math.Exp(-x) / 1 + Math.Sqrt(x) + Math.Pow(x, 2);
                    }
                case 7:
                    {
                        return Math.Exp(-x) / 1 + Math.Sqrt(x) + Math.Pow(x, 2);
                    }
            }
            return 0;
        }

        public double trapesium(double a, double b, int n, int soal)
        {
            double h, x, sigma, I;
            int r;

            h = (b - a) / n;            //lebar pias
            x = a;                      //awal selang integrasi
            I = fungsi(a, soal) + fungsi(b, soal);
            sigma = 0;

            for (r = 1; r <= (n - 1); r++)
            {
                x = x + h;
                sigma = sigma + 2 * fungsi(x, soal);
            }

            I = (I + sigma) * h / 2;    //nilai integrasi numerik
            return I;
        }

        public double titik_tengah(double a, double b, int n, int soal)
        {
            double h, x, sigma, I;
            int r;

            h = (b - a) / n;    //lebar pias
            x = a + (h / 2);        //titik tengah pertama
            sigma = fungsi(x, soal);

            for (r = 1; r <= (n - 1); r++)
            {
                x = x + h;
                sigma = sigma + fungsi(x, soal);
            }

            I = sigma * h;      //nilai integrasi numerik
            return I;
        }

        public double simpson_sepertiga(double a, double b, int n, int soal)
        {
            double h, x, sigma, I;
            int r;

            h = (b - a) / n;        //jarak antar titik
            x = a;                  //awal selang integrasi
            I = fungsi(a, soal) + fungsi(b, soal);
            sigma = 0;

            for (r = 1; r <= (n - 1); r++)
            {
                x = x + h;
                if (r % 2 == 1)     //r = 1,3,5,7,...,n-1
                    sigma = sigma + 4 * fungsi(x, soal);
                else                //r = 2,4,6,8,...,n-2
                    sigma = sigma + 2 * fungsi(x, soal);
            }
            I = (I+sigma) * h / 3;      //nilai integrasi numerik
            return I;
        }

        public double simpson_tigaperdelapan(double a, double b, int n, int soal)
        {
            double h, x, sigma, I;
            int r;

            h = (b - a) / n;        //jarak antar titik
            x = a;                  //awal selang integrasi
            I = fungsi(a, soal) + fungsi(b, soal);
            sigma = 0;

            for (r = 1; r <= (n - 1); r++)
            {
                x = x + h;
                if (r % 3 == 0)             //r = 3,6,9,...,n-3
                    sigma = sigma + 2 * fungsi(x, soal);
                else                        //r != 3,6,9,...,n-3
                    sigma = sigma + 3 * fungsi(x, soal);
            }
            I = (I+sigma) * 3 * h / 8;      //nilai integrasi numerik
            return I;
        }

        public double Ft(double t, double a, double b)
        {
            return (((a + b) + ((b - a) * t)) / 2);
        }

        public double gauss_legendre(double a, double b, int derajat, int soal)
        {
            #region Faktor bobot Gauss-Legendre

            double[,] GLc = new double[7,7];
            GLc[2,1] = 1;
            GLc[2,2] = 1;

            GLc[3, 1] = 0.555555556;
            GLc[3, 2] = 0.888888889;
            GLc[3, 3] = 0.555555556;

            GLc[4, 1] = 0.347854845;
            GLc[4, 2] = 0.652145155;
            GLc[4, 3] = 0.652145155;
            GLc[4, 4] = 0.347854845;

            GLc[5, 1] = 0.236926885;
            GLc[5, 2] = 0.478628670;
            GLc[5, 3] = 0.568888889;
            GLc[5, 4] = 0.478628670;
            GLc[5, 5] = 0.236926885;

            GLc[6, 1] = 0.171324492;
            GLc[6, 2] = 0.360761573;
            GLc[6, 3] = 0.467913935;
            GLc[6, 4] = 0.467913935;
            GLc[6, 5] = 0.360761573;
            GLc[6, 6] = 0.171324492;

            double[,] GLx = new double[7, 7];
            GLx[2, 1] = -0.577350269;
            GLx[2, 2] = 0.577350269;

            GLx[3, 1] = -0.774596669;
            GLx[3, 2] = 0;
            GLx[3, 3] = 0.774596669;

            GLx[4, 1] = -0.861136312;
            GLx[4, 2] = -0.339981044;
            GLx[4, 3] = 0.339981044;
            GLx[4, 4] = 0.861136312;

            GLx[5, 1] = -0.906179846;
            GLx[5, 2] = -0.538469310;
            GLx[5, 3] = 0;
            GLx[5, 4] = 0.538469310;
            GLx[5, 5] = 0.906179846;

            GLx[6, 1] = -0.932469514;
            GLx[6, 2] = -0.661209386;
            GLx[6, 3] = -0.238619186;
            GLx[6, 4] = 0.238619186;
            GLx[6, 5] = 0.661209386;
            GLx[6, 6] = 0.932469514;

            #endregion
            double Fungsi_t = 0;
            
            for (int i = 1; i <= derajat; i++)
            {
                double Fta = GLc[derajat, i];
                double Ftb = fungsi(Ft(GLx[derajat, i], a, b), soal);
                double Ftc = ((b - a) / 2);
                Fungsi_t = Fungsi_t + (Fta * Ftb * Ftc);
            }
            return Fungsi_t;
        }
    }
}
