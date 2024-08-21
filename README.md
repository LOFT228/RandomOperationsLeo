# RandomOperationsLeo



program random_operations_aleo {

// Функція для додавання двох чисел.
    function add(a: u32, b: u32) -> u32 {
        let result = a + b;
        output result
    }

// Функція для віднімання одного числа від іншого.
    function subtract(a: u32, b: u32) -> u32 {
        let result = a - b;
        output result
    }

// Функція для множення двох чисел.
    function multiply(a: u32, b: u32) -> u32 {
        let result = a * b;
        output result
    }

// Функція для ділення одного числа на інше.
    function divide(a: u32, b: u32) -> u32 {
        assert(b != 0u32); // Перевіряємо, щоб не було ділення на нуль.
        let result = a / b;
        output result
    }

// Функція для обчислення залишку від ділення.
    function modulus(a: u32, b: u32) -> u32 {
        assert(b != 0u32); // Перевірка на нульове ділення.
        let result = a % b;
        output result
    }

// Функція для виконання кількох арифметичних операцій поспіль.
    function complex_operation(a: u32, b: u32) -> (u32, u32, u32, u32, u32) {
        let add_result = add(a, b);             // Додаємо числа.
        let subtract_result = subtract(a, b);   // Віднімаємо.
        let multiply_result = multiply(a, b);   // Множимо.
        let divide_result = divide(a, b);       // Ділимо.
        let modulus_result = modulus(a, b);     // Обчислюємо залишок.
        
// Повертаємо всі результати у вигляді кортежу.
        output (add_result, subtract_result, multiply_result, divide_result, modulus_result)
    }
}
