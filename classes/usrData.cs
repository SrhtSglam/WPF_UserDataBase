using System;

namespace WPF_UserDataBase;

public class usrData{
    public usrData(){
        if(Name == null)
            Name = "";
        if(Surname == null)
            Surname = "";
    }

    public int Id {get; set;}
    public string Name {get; set;}
    public string Surname {get; set;}
    public int Age {get; set;}
}