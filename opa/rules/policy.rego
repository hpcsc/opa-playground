package rules

default allow = false

# GET /cars
allow {
    input.method == "GET"
    input.path == ["cars"]
}

# POST /cars
allow {
    input.method == "POST"
    input.path == ["cars"]
    user_is_manager
}

# GET /car/{carid}
allow {
    input.method == "GET"
    input.path = ["cars", carid]
    user_is_employee
}

user_is_employee {
    # reference opa/users/data.json as data.opa.users
    data.opa.users[input.user]
}

user_is_manager {
    # reference opa/users/data.json as data.opa.users
    data.opa.users[input.user].title != "salesperson"
}
