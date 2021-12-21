using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace сессия3
{
    /// <summary>
    /// Логика взаимодействия для Window2.xaml
    /// </summary>
    public partial class Window2 : Window
    {
        public Window2()
        {
            InitializeComponent();
        }

        private void bt_w3_2_click(object sender, RoutedEventArgs e)
        {

        }

        private void bt_w3_click(object sender, RoutedEventArgs e)
        {
            this.Close();
            MainWindow m1 = new MainWindow();
            m1.Show();
        }
    }
}
