program random_operations_aleo {

    mapping results:
        key as u32.public;
        value as i32.private;

    function add(a: i32, b: i32) -> i32 {
        let result = a + b;
        output result
    }

    function subtract(a: i32, b: i32) -> i32 {
        let result = a - b;
        output result
    }

    function multiply(a: i32, b: i32) -> i32 {
        let result = a * b;
        output result
    }

    function divide(a: i32, b: i32) -> i32 {
        assert.neq b 0i32;
        let result = a / b;
        output result
    }

    transition save_result(id: u32, value: i32) {
        set value into results[id];
    }

    function get_result(id: u32) -> i32 {
        get results[id] into result;
        output result
    }
}
