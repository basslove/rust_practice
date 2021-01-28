use std::io;

fn main() {
    println!("かずあて");

    println!("please input");

    let mut guess = String::new();

    io::stdin().read_line(&mut guess).expect("fail");

    println!("you guess: {}", guess);
}
