<?php
$page = "games";

if (isset($_GET['page'])) {

    $page = $_GET['page'];

    switch ($page) {
        case "games":
            $page = "games";
            break;
        case "books":
            $page = "books";
            break;
        case "movies":
            $page = "movies";
            break;
        default:
            header("Location: ?page=games");
    }
} else {
    header("Location: ?page=games");
}
?>


<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SoE</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

    <style>
        .cardContainer {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .contentOne,
        .contentTwo,
        .contentThree,
        .contentFour,
        .contentFive,
        .contentSix {
            flex: 0 0 auto;
        }

        .button {
            text-decoration: none;
            color: #363636;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button.active {
            background-color: rgb(117, 116, 116);
            color: rgb(243, 242, 242) !important;
        }

        @media (max-width: 991px) {
            .cardContainer {
                flex-direction: column;
                align-items: center !important;
            }

            .contentOne,
            .contentTwo,
            .contentThree,
            .contentFour,
            .contentFive,
            .contentSix {
                max-width: 100% !important;
                margin-left: auto !important;
                margin-right: auto !important;
            }
        }



        /* When the screen is 576px or smaller */
        @media (max-width: 576px) {
            .card {
                max-height: 450px;
                /* Adjust to how small you want it */
            }

            .card-body {
                padding: 0.5rem;
            }

            .card-text {
                font-size: 11px;
            }

            .card-title {
                font-size: 14px;
            }

            .card img {
                object-fit: cover;
                height: 70%;
            }

            .col-4,
            .col-8 {
                height: 25%;
            }
        }
    </style>

</head>

<body>
    <nav class="navbar sticky-top bg-body-tertiary">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="image/logo.png" width="50px">
            </a>
            <a class="button rounded-3 p-2" href="?page=games"
                style="text-decoration: none; color: #363636; cursor: pointer;">
                Games
            </a>
            <a class="button rounded-3 p-2" href="?page=books"
                style="text-decoration: none; color: #363636; cursor: pointer;">
                Books
            </a>
            <a class="button rounded-3 p-2" href="?page=movies"
                style="text-decoration: none; color: #363636; cursor: pointer;">
                Movies
            </a>
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col col-lg-9 col-md-12">
                <div class="card shadow rounded-3 p-3 my-1"
                    style="height: 89vh; overflow-y: scroll; border-style: none;">
                    <?php include("shared/" . $page . ".php"); ?>
                </div>

            </div>
            <div class="col-lg-3 col-md-12">
                <div class="trendingContainer">
                    <div class="card shadow p-3 my-1" style="height: 89vh; overflow-y: scroll; border-style: none;">
                        <div class="h4">
                            Trending
                        </div>
                        <div class="trendingContent">
                            <div class="card mb-3 shadow" style="max-width: 100%; border-style: none;">
                                <div class="row g-0">
                                    <div class="col-4">
                                        <img src="image/mv7.jpg" class="img-fluid rounded-start p-3" alt="...">
                                    </div>
                                    <div class="col-8">
                                        <div class="card-body">
                                            <h6 class="card-title">Parker</h6>
                                            <p class="card-text"><small class="text-body-secondary">2013 ‧ Action/Crime
                                                </small></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card mb-3 shadow" style="max-width: 100%; border-style: none;">
                                <div class="row g-0">
                                    <div class="col-4">
                                        <img src="image/hr1.jpg" class="img-fluid rounded-start" alt="...">
                                    </div>
                                    <div class="col-8">
                                        <div class="card-body">
                                            <h6 class="card-title">The Ghost</h6>
                                            <p class="card-text"><small class="text-body-secondary">2011 ‧
                                                    Horror/Thriller</small></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card mb-3 shadow" style="max-width: 100%; border-style: none;">
                                <div class="row g-0">
                                    <div class="col-4">
                                        <img src="image/gm1.jpg" class="img-fluid rounded-start" alt="...">
                                    </div>
                                    <div class="col-8">
                                        <div class="card-body">
                                            <h6 class="card-title">Asphalt Legends</h6>
                                            <p class="card-text"><small class="text-body-secondary">2013 ‧ Racing/Single
                                                    Player</small></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card mb-3 shadow" style="max-width: 100%; border-style: none;">
                                <div class="row g-0">
                                    <div class="col-4">
                                        <img src="image/ft3.jpg" class="img-fluid rounded-start" alt="...">
                                    </div>
                                    <div class="col-8">
                                        <div class="card-body">
                                            <h6 class="card-title">A Storm of Shadow and Pearls </h6>
                                            <p class="card-text"><small class="text-body-secondary">2008 ‧
                                                    Action/Crime</small></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card mb-3 shadow" style="max-width: 100%; border-style: none;">
                                <div class="row g-0">
                                    <div class="col-4">
                                        <img src="image/hr5.jpg" class="img-fluid rounded-start" alt="...">
                                    </div>
                                    <div class="col-8">
                                        <div class="card-body">
                                            <h6 class="card-title">Haunted Forest</h6>
                                            <p class="card-text"><small class="text-body-secondary">2006 ‧
                                                    Horror/Crime</small></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.min.js"
        integrity="sha384-VQqxDN0EQCkWoxt/0vsQvZswzTHUVOImccYmSyhJTp7kGtPed0Qcx8rK9h9YEgx+"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
        crossorigin="anonymous"></script>

    <script>
        const buttons = document.querySelectorAll('.button');

        buttons.forEach(button => {
            button.addEventListener('click', () => {
                // Remove 'active' from all buttons
                buttons.forEach(btn => btn.classList.remove('active'));
                // Add 'active' to the clicked button
                button.classList.add('active');
            });
        });
    </script>


</body>

</html>