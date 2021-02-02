using System;

namespace LinqToSqlCRUD
{
    class Program
    {
        static void Main(string[] args)
        {
            DataAccessLayer Dal = new DataAccessLayer();

            Directory directory = new Directory
            { Firstname="Simay",LastName="Karakılıç",Telepone1="5300000000",Telepone2="5420000000",Telepone3="5420000000"};

            //Dal.Add(directory);
             Dal.AddWithSP(directory);
            Console.WriteLine("Kayıt başarıyla eklendi.");

            Directory directory2 = new Directory
            { DirectoryId=5,Firstname = "Neslihan", LastName = "Bayraktar", Telepone1 = "5300000000", Telepone2 = "5420000000", Telepone3 = "5420000000",EmailAddress="asya@hotmail.com" };
            // Dal.Update(directory2);
            Dal.UpdateWithSP(directory2);
            Console.WriteLine("Güncelleme yapıldı.");

            //Dal.Delete(3);
            Dal.DeleteWithSP(4);
            Console.WriteLine("Kayıt silindi.");


            Console.Read();
        }
    }
}