using System;
using System.Web;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace сессия3
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void bt_ab_click(object sender, RoutedEventArgs e)
        {
            Window1 w1 = new Window1();
            this.Hide();
            w1.Show();
        }

        private void bt_tel_click(object sender, RoutedEventArgs e)
        {

        }

        private void bt_tarif_click(object sender, RoutedEventArgs e)
        {
            Window2 w2 = new Window2();
            this.Hide();
            w2.Show();
        }

        private void bt_razg_click(object sender, RoutedEventArgs e)
        {

        }
    }
}
