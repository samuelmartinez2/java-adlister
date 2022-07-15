<%--
  Created by IntelliJ IDEA.
  User: samuelmartinez
  Date: 7/15/22
  Time: 11:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%

        String address = request.getParameter("address");


%>

<!doctype html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Pizza World | Order</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/custom.css">
    <script src="https://kit.fontawesome.com/915ab9eecb.js" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Pizza World</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav w-100">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Order Online</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Menu</a>
                </li>
                <li class="nav-item">
                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Zip Code" aria-label="Search">
                        <button class="btn btn-outline-primary w-100" type="submit">Search stores near you!</button>
                    </form>
                </li>
                <li class="nav-item ms-auto">
                    <a class="nav-link" href="#"><i class="fa-solid fa-user"></i> Sign Up!</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<main class="container">
    <section class="jumbotron d-none d-md-flex">
        <h2 class="bg-light p-2 text-dark bg-opacity-75 w-100 text-center">Welcome to Pizza World!</h2>
    </section>
    <h2>Build your own pizza!</h2>
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button"
                    role="tab" aria-controls="home" aria-selected="true"><span
                    class="badge rounded-pill bg-secondary">1</span> Size and Crust
            </button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button"
                    role="tab" aria-controls="profile" aria-selected="false"><span
                    class="badge rounded-pill bg-secondary">2</span> Cheese and Sauce
            </button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button"
                    role="tab" aria-controls="contact" aria-selected="false"><span
                    class="badge rounded-pill bg-secondary">3</span> Toppings
            </button>
        </li>

        <li class="nav-item" role="presentation">
            <button class="nav-link" id="address-tab" data-bs-toggle="tab" data-bs-target="#address" type="button"
                    role="tab" aria-controls="contact" aria-selected="false"><span
                    class="badge rounded-pill bg-secondary">3</span> Toppings
            </button>
        </li>

    </ul>
    <div class="tab-content mb-5" id="myTabContent">
        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="profile-tab">
            <div class="card">
                <div class="card-header bg-primary text-light">
                    Featured
                </div>
                <div class="card-body">
                    <div class="card">
                        <div class="card-header">
                            Hand Tossed
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Garlic seasoned crust with a rich, buttery taste.</li>
                            <li class="list-group-item"><input type="radio" id="ht-small" name="crust"
                                                               class="me-2"><label for="ht-small">Small (10")</label>
                            </li>
                            <li class="list-group-item"><input type="radio" id="ht-medium" name="crust"
                                                               class="me-2"><label for="ht-medium">Medium (12")</label>
                            </li>
                        </ul>
                    </div>
                    <br>
                    <div class="card">
                        <div class="card-header">
                            Crispy Thin
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Thin enough for optimum crispy to crunchy ratio.</li>
                            <li class="list-group-item"><input type="radio" id="ct-medium" name="crust"
                                                               class="me-2"><label for="ct-medium">Medium (12")</label>
                            </li>
                            <li class="list-group-item"><input type="radio" id="ct-large" name="crust"
                                                               class="me-2"><label for="ct-large">Large (14")</label>
                            </li>
                        </ul>
                    </div>
                </div>
                <footer class="card-footer d-flex justify-content-end">
                    <button class="btn btn-primary">Next Step <i class="fa-solid fa-circle-chevron-right"></i></button>
                </footer>
            </div>
        </div>
        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="home-tab">
            <div class="card">
                <div class="card-header bg-primary text-light">
                    Featured
                </div>
                <div class="card-body">
                    <div class="card">
                        <div class="card-header">
                            Cheese
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item"><label for="cheese">How Much?</label></li>
                            <li class="list-group-item">
                                <select class="form-select" name="cheese" id="cheese">
                                    <option value="none">None</option>
                                    <option value="light">Light</option>
                                    <option value="normal" selected>Normal</option>
                                    <option value="extra">Extra</option>
                                    <option value="double">Double</option>
                                </select>
                            </li>
                        </ul>
                    </div>
                    <br>
                    <div class="card">
                        <div class="card-header">
                            Sauce
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item"><label for="sauce-type">How Much?</label></li>
                            <li class="list-group-item">
                                <select class="form-select" name="sauce-type" id="sauce-type">
                                    <option value="tomato">Tomato Sauce</option>
                                    <option value="alfredo">Alfredo Sauce</option>
                                    <option value="pesto">Pesto Sauce</option>
                                </select>
                            </li>
                            <li class="list-group-item"><label for="sauce-amount">How Much?</label></li>
                            <li class="list-group-item">
                                <select class="form-select" name="sauce-amount" id="sauce-amount">
                                    <option value="light-sauce">Light</option>
                                    <option value="normal-sauce" selected>Normal</option>
                                    <option value="double-sauce">Double</option>
                                </select>
                            </li>
                        </ul>
                    </div>
                </div>
                <footer class="card-footer d-flex justify-content-end">
                    <button class="btn btn-primary me-1"><i class="fa-solid fa-circle-chevron-left"></i> Previous Step</button>
                    <button class="btn btn-primary">Next Step <i class="fa-solid fa-circle-chevron-right"></i></button>
                </footer>
            </div>
        </div>
        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
            <div class="card">
                <div class="card-header bg-primary text-light">
                    Featured
                </div>
                <div class="card-body">
                    <div class="card">
                        <div class="card-header">
                            Meat Toppings
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">
                                <input type="checkbox" id="pepperoni" value="pepperoni" name="toppings" class="me-2"><label
                                    for="pepperoni">Pepperoni</label>
                            </li>
                            <li class="list-group-item">
                                <input type="checkbox" id="sausage" value="sausage" name="toppings" class="me-2"><label
                                    for="sausage">Italian Sausage</label>
                            </li>
                            <li class="list-group-item">
                                <input type="checkbox" id="bacon" value="bacon" name="toppings" class="me-2"><label
                                    for="bacon">Bacon</label>
                            </li>
                            <li class="list-group-item">
                                <input type="checkbox" id="ham" value="ham" name="toppings" class="me-2"><label
                                    for="ham">Ham</label>
                            </li>
                        </ul>
                    </div>
                    <br>
                    <div class="card">
                        <div class="card-header">
                            Veggie Toppings
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">
                                <input type="checkbox" id="bell-peppers" value="bell-peppers" name="toppings" class="me-2"><label
                                    for="bell-peppers">Bell Peppers</label>
                            </li>
                            <li class="list-group-item">
                                <input type="checkbox" id="olives" value="olives" name="toppings" class="me-2"><label
                                    for="olives">Olives</label>
                            </li>
                            <li class="list-group-item">
                                <input type="checkbox" id="mushrooms" value="mushrooms" name="toppings" class="me-2"><label
                                    for="mushrooms">Portabella Mushrooms</label>
                            </li>
                            <li class="list-group-item">
                                <input type="checkbox" id="pineapple" value="pineapple" name="toppings" class="me-2"><label
                                    for="pineapple">Pineapple</label>
                            </li>
                        </ul>
                    </div>
                </div>


<%--// ADDRESS TAB--%>
                <div class="tab-pane fade" id="address" role="tabpanel" aria-labelledby="address-tab">
                    <div class="card">
                        <div class="card-header bg-primary text-light">
                            Featured
                        </div>
                        <div class="card-body">
                        <form>
                            <span class="input-group-text">ADDRESS</span>
                            <textarea class="form-control" aria-label="With textarea"></textarea>
                        </form>
                        </div>
                    </div>
                </div>



                <footer class="card-footer d-flex justify-content-end">
                    <button class="btn btn-primary me-1"><i class="fa-solid fa-circle-chevron-left"></i> Previous Step</button>
                    <form action="login.jsp" method="POST">
                        <button class="btn btn-primary" action="/login.jsp"><i class="fa-solid fa-cart-shopping"></i> Checkout</button>
                    </form>
                </footer>
            </div>
        </div>
    </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<!-- Your custom JS goes here -->
</body>
</html>
