package rules

test_get_cars_allowed {
    in = {
        "method": "GET",
        "path": ["cars"],
        "user": "alice"
    }

    allow == true with input as in
}

test_manager_can_create_car {
    in = {
        "method": "POST",
        "path": ["cars"],
        "user": "charlie"
    }

    allow == true with input as in
}

test_salesperson_cannot_create_car {
    in = {
        "method": "POST",
        "path": ["cars"],
        "user": "bob"
    }

    allow == false with input as in
}

test_manager_can_get_car_by_id {
    in = {
        "method": "GET",
        "path": ["cars", "123"],
        "user": "charlie"
    }

    allow == true with input as in
}

test_salesperson_can_get_car_by_id {
    in = {
        "method": "GET",
        "path": ["cars", "123"],
        "user": "bob"
    }

    allow == true with input as in
}

test_non_employee_cannot_get_car_by_id {
    in = {
        "method": "GET",
        "path": ["cars", "123"],
        "user": "nonemployee"
    }

    allow == false with input as in
}

test_non_employee_cannot_get_car_by_id {
    in = {
        "method": "GET",
        "path": ["cars", "123"],
        "user": "nonemployee"
    }

    allow == false with input as in
}
