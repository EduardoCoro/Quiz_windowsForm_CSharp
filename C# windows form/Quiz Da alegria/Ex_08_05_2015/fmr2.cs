﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Ex_08_05_2015
{
    public partial class fmr2 : Form
    {
        public fmr2()
        {
            InitializeComponent();
        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (rb1.Checked == true)
            {
                MessageBox.Show("VOCÊ ACERTOU");
                //colocar a variaveis Globais +=10;
                VariaveisGlobais.certas += 1;
                VariaveisGlobais.pontos += 10;
                fmr3 prox = new fmr3();
                prox.ShowDialog();
                this.Close();
            }
            else
            {
                if (rb4.Checked == true)   //rb2.Checked == false || rb3.Checked == false)
                {
                    MessageBox.Show("VOCÊ ERROU");
                    //ERROU É -=5;
                    VariaveisGlobais.pontos -= 5;
                    VariaveisGlobais.erradas += 1;
                    fmr3 prox = new fmr3();
                    prox.ShowDialog();
                    this.Close();
                }
                else if (rb2.Checked == true)
                {
                    MessageBox.Show("VOCÊ ERROU");
                    //ERROU É -=5;
                    VariaveisGlobais.pontos -= 5;
                    VariaveisGlobais.erradas += 1;
                    fmr3 prox = new fmr3();
                    prox.ShowDialog();
                    this.Close();
                }

                else if (rb3.Checked == true)
                {
                    MessageBox.Show("VOCÊ ERROU");
                    //ERROU É -=5;
                    VariaveisGlobais.pontos -= 5;
                    VariaveisGlobais.erradas += 1;
                    fmr3 prox = new fmr3();
                    prox.ShowDialog();
                    this.Close();
                }
                else
                {
                    MessageBox.Show("Selecione as alternativas", "informativo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }
    }
}
