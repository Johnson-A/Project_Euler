#![feature(test)]

extern crate test;

fn main() {
    println!("{}", compute(100_000_000));
}

fn compute(n: usize) -> usize {
    let mut largest = 0;
    
    for i in (1..n).rev() {
        if (largest / i) > i { break }
        
        for j in (largest / i .. i).rev() {
            if is_palindrome(i * j) {
                largest = i * j;
                break
            }
        }
    }
    largest
}

fn is_palindrome(x: usize) -> bool {
    let string = x.to_string();
    let n = string.len() / 2;
    string.chars().take(n)
        .zip(string.chars().rev().take(n))
        .all(|(a, b)| a == b)
}

#[bench]
fn bench(b: &mut test::Bencher) {
    b.iter(|| {
        let n = test::black_box(1000);
        compute(n);
    });
}
