
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Timers;
using System.Windows.Forms;

namespace SlotMachine
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

        }


        private void Form1_Load(object sender, EventArgs e)
        {

        }

        int SlowTime;
        int pic1;
        int pic2;
        int pic3;

        decimal Winings = 0;
        decimal TotalBets = 0;
        decimal BetPlaced;

        private void Spin_Click(object sender, EventArgs e)
        {

            //displays pictures in picture box randomly

            timer1.Interval = 100;
            timer1.Start();

        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            Image[] images = new Image[4];

            images[0] = pictureBox4.Image;
            images[1] = pictureBox5.Image;
            images[2] = pictureBox6.Image;




            /*SlowTime = DateTime.Now.Second;
            SlowTime += 1;
            SlowTime %= 60;
            while (DateTime.Now.Second <= SlowTime)
            { }
            */


            /*
			
			You only have one random cycling through your pictures.
			If you think about it if the mix_pic chooses 1, then
			all of the images become 1.
			
			In order to fix this you need to create 2 more others
			to treat the other 2 pictures randomly.
			
			mix_pic will change the first picture,
			mix_pic_2 will change the second picture,
			mix_pic_3 will change the third picture.
				
			*/
            Random mix_pic = new Random();

            // Added mix_pic_2 and mix_pic_3_3
            Random mix_pic_2 = new Random();
            Random mix_pic_3 = new Random();

            pictureBox1.Image = images[mix_pic.Next(0, 3)];

            // Added
            pictureBox2.Image = images[mix_pic_2.Next(1, 3)];
            pictureBox3.Image = images[mix_pic_3.Next(0, 4)];

            // Added
            int pic1 = mix_pic.Next(0, 3);
            int pic2 = mix_pic_2.Next(0,3);
            int pic3 = mix_pic_3.Next(0,3);

        }

        private void Stop_Click(object sender, EventArgs e)
        {
            timer1.Stop();

            decimal CurrentWinings = 0;

            decimal.TryParse(Amount_Box.Text, out BetPlaced);

            /*
			int StopTime = DateTime.Now.Second;
			label1.Text = StopTime.ToString();
			StopTime += 5;
			StopTime %= 60;
			label2.Text = StopTime.ToString();
			*/

            //based on random 1-3; compare the 3 numbers example: pic1 = 1, pic2 = 1
            if (pictureBox1.Image != pictureBox2.Image && pictureBox2.Image != pictureBox3.Image)
            {


                Winings = Winings + 0;
                BetPlaced = BetPlaced + 0;
                TotalBets = BetPlaced + 0;

                CurrentWinings = TotalBets + 0;

                MessageBox.Show(" You Haven won: " +CurrentWinings+ " Better luck next time !");              //check math
            }

            /*
			
			You have to satisfy all possible outcomes for the first two outcomes.
			
			You got if pic1 is pic2 and pic2 is not pic3.
			Don't forget the second outcome, what if pic2 IS pic3?
			
			The player wins when pic1 is pic3 and pic1 is not pic2.
			The player wins when pic2 is pic3 and pic1 is not pic3.
			
			*/
            else if (pictureBox1.Image == pictureBox2.Image && pictureBox2.Image != pictureBox3.Image || pictureBox2.Image == pictureBox3.Image && pictureBox1.Image != pictureBox3.Image)
            {
                Winings = Winings + (BetPlaced * 2);

                TotalBets = TotalBets + BetPlaced;

                CurrentWinings = CurrentWinings + Winings;

                MessageBox.Show("Congrats! You have Won: " + CurrentWinings + " You Know you want to play again..");
            }

            else if (pictureBox1.Image == pictureBox2.Image && pictureBox2.Image == pictureBox3.Image && pictureBox1.Image==pictureBox3.Image)
            {
                Winings = Winings + (BetPlaced * 3);

                TotalBets = TotalBets + BetPlaced;

                CurrentWinings = CurrentWinings + Winings;

                MessageBox.Show("What?! You hit the JACKPOT! YOU HAVE WON: " + CurrentWinings);
            }

        }

        private void Exit_Click(object sender, EventArgs e)
        {

            string Message = "Thanks! You have given ME: " + TotalBets.ToString("c")
                + "\n" + "I guess you have can keep the money won from me" + Winings.ToString("c");

            DialogResult TheMessege = MessageBox.Show(Message, "Thanks for Playing", MessageBoxButtons.OK);

            if (TheMessege == DialogResult.OK)
            {
                Application.Exit();
            }

        }

    }

}