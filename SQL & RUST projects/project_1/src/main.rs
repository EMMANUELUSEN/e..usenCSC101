 
use std::io::Read;
fn staff_table () {
    let mut file = std::fs::File::open("staff_tb.sql").unwrap();
    let mut contents = String::new();
    file.read_to_string(&mut contents).unwrap();
    print!("{}",contents);}


fn customer_table () {
    let mut file = std::fs::File::open("customer_tb.sql").unwrap();
    let mut contents = String::new();
    file.read_to_string(&mut contents).unwrap();
    print!("{}",contents);} 


fn dataplan_table () {
    let mut file = std::fs::File::open("dataplan_tb.sql").unwrap();
    let mut contents = String::new();
    file.read_to_string(&mut contents).unwrap();
    print!("{}",contents);}


fn database_structure () {
    let mut file = std::fs::File::open("globacom_dbase.sql").unwrap();
    let mut contents = String::new();
    file.read_to_string(&mut contents).unwrap();
    print!("{}",contents);}

               

use std::io;

fn main() {
    println!("\nGlobacom Database Schema Access automated System!,note your ID number ;
                Administrator = 1
                Project Manager = 2
                employee = 3
                Customer = 4
                vendor = 5
                 ");


     let mut input = String::new();

    println!("\nEnter your ID no. ");
    io::stdin().read_line(&mut input).expect("Not a valid string");
    let id:i32 = input.trim().parse().expect("Not a valid number");

    if id == 1 
    {
        println!("Welcome Admin, above is your Database Schema {:?}",database_structure());
    }
     if id == 2
    {
        println!("Welcome Project Manager, above is your Databse Schema {:?}",customer_table());
        println!("{:?}",dataplan_table());
    }
     if id == 3
    {
        println!("Welcome Employee, above is your Database Schema {:?}",staff_table());
    }
     if id == 4
    {
        println!("Welcome, above is your Database Schema {:?}",customer_table());
    }
     if id == 5
    {
        println!("Welcome, above is your Database Schema {:?}",dataplan_table());
    }

}
 
