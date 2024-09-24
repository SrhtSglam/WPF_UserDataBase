using System.IO;
using System.Text;
using System.Windows;
using Newtonsoft.Json;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Net.Http.Json;
using System.Text.Unicode;
using System.Text.Json.Serialization;

namespace WPF_UserDataBase;

public partial class MainWindow : Window
{
    public MainWindow()
    {
        InitializeComponent();
    }

    private List<usrData> userList = new List<usrData>();
    private int id = 0;

    private void AddUser_Click(object sender, RoutedEventArgs e){
        try{
            AddUser();
        }
        catch(Exception ex){
            MessageBox.Show(ex.Message);
        }
        finally{
            DataGridRefresh();
        }
    }

    private void GetData_Click(object sender, RoutedEventArgs e){
         try{
            GetJSONFile();
        }
        catch(Exception ex){
            MessageBox.Show(ex.Message);
        }
        finally{
            DataGridRefresh();
        }
    }

    private void ClearData_Click(object sender, RoutedEventArgs e){
         try{
            ClearJSONFile();
        }
        catch(Exception ex){
            MessageBox.Show(ex.Message);
        }
        finally{
            DataGridRefresh();
        }
    }

    private void AddUser(){
        string name = txtName.Text;
        string surname = txtSurname.Text;
        int age = Convert.ToInt32(txtAge.Text);
        if(name != "" && surname != ""){
            userList.Add(new usrData(){
                Id = id++,
                Name = name,
                Surname = surname,
                Age = age
            });
        }
        else{
            MessageBox.Show("Name or Surname not found");
        }
        SetJSONFile();
    }   

    private void DataGridRefresh(){
        grdDataTable.ItemsSource = null;
        grdDataTable.ItemsSource = userList;
    }

    private void SetJSONFile(){
        string filePath = "dtbUsers.json";
        string json = JsonConvert.SerializeObject(userList);
        File.WriteAllText(filePath, json);
    }

    private void GetJSONFile(){
        string filePath = "dtbUsers.json";
        string json = File.ReadAllText(filePath);
        userList = JsonConvert.DeserializeObject<List<usrData>>(json)!;
    }

    private void ClearJSONFile(){
        string filePath = "dtbUsers.json";
        File.WriteAllText(filePath, "");
        userList.Clear();
    }
}