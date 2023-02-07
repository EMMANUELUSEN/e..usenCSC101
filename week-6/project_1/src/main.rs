 use std::io;

    fn area_of_trapezium(h:i32, b:i32, c:i32){
    let area = h/2 * ( b + c );
    println!("Area of Trapezium ={}",area);
  }
  fn area_of_parallelogram(k:i32, o:i32){
    let area = k * o;
    println!("Area of Parallelogram ={}",area);
}

  fn area_of_rhombus(d:f32, e:f32){
    let area = 0.5 * ( d * e );
    println!("Area of Rhombus = {}",area);
}
  fn area_of_cube(l:i32){
     let area = 6 * ( l * l );
     println!("Area of cube = {}", area);
  }  
  fn volume_of_cylinder(r:i32, j:i32){
    let volume = 22/7 * (r * r) * j;
    println!("Volume of cylinder = {}",volume);
  }


fn main() {
    println!("Hi there, this is our very own math formular calculator.
              below is a list of numbers assigned to the areas of calculation;
              Area of Trapezium = 1
              Area of Parallelogram = 2
              Area of Rhombus = 3
              Area of Cube  = 4
              Volume of Cylinder = 5");
    
  
  let mut input = String::new();

  println!("\nMake your choice of Calculations( the assigned no.)");
  io::stdin().read_line(&mut input).expect("not a valid String");
  let id:i32 = input.trim().parse().expect("Not a valid number");

  if id == 1
  {
    
    let mut input1 = String::new();
    println!("Enter the height of the trapezium:");
    io::stdin().read_line(&mut input1).expect("Failed to read input");
    let h:i32 = input1.trim().parse().expect("Invalid input");

    let mut input2 = String::new();
    println!("Enter the first base of the trapezium:");
    io::stdin().read_line(&mut input2).expect("Failed to read input");
    let b:i32 = input2.trim().parse().expect("Invalid input");

    let mut input3 = String::new();
    println!("Enter the second base of the trapezium:");
    io::stdin().read_line(&mut input3).expect("Failed to read input");
    let c:i32 = input3.trim().parse().expect("Invalid input");

    area_of_trapezium(h,b,c);

  } 

  else if id == 2
  {
    let mut input1 = String::new();
    println!("Enter the length of the first diagonal:");
    io::stdin().read_line(&mut input1).expect("Failed to read input");
    let k:i32 = input1.trim().parse().expect("Invalid input");

    let mut input2 = String::new();
    println!("Enter the length of the second diagonal:");
    io::stdin().read_line(&mut input2).expect("Failed to read input");
    let o:i32 = input2.trim().parse().expect("Invalid input");

    area_of_parallelogram(k,o);

  }

  else if id == 3
  {
    let mut input1 = String::new();
    println!("Enter the base of the rhombus:");
    io::stdin().read_line(&mut input1).expect("Failed to read input");
    let d:f32 = input1.trim().parse().expect("Invalid input");

    let mut input2 = String::new();
    println!("Enter the altitude of the rhombus:");
    io::stdin().read_line(&mut input2).expect("Failed to read input");
    let e:f32 = input2.trim().parse().expect("Invalid input");

    area_of_rhombus(d,e);

  }
  else if id == 4
  {
    let mut input1 = String::new();
    println!("Enter the length of one of the sides of the cube:");
    io::stdin().read_line(&mut input1).expect("Failed to read input");
    let l:i32 = input1.trim().parse().expect("Invalid input");

    area_of_cube(l);   
  
  }
  else if id == 5
  {
    let mut input1 = String::new();
    println!("Enter the radius of the cylinder:");
    io::stdin().read_line(&mut input1).expect("Failed to read input");
    let r:i32 = input1.trim().parse().expect("Invalid input");

    let mut input2 = String::new();
    println!("Enter the height of the cylinder:");
    io::stdin().read_line(&mut input2).expect("Failed to read input");
    let j:i32 = input2.trim().parse().expect("Invalid input");

    volume_of_cylinder(r,j);

  }
}

