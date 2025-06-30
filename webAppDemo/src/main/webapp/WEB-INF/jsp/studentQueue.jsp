<!DOCTYPE html>
<html lang="en" class="h-100">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gradience</title>

    <!-- Bootstrap and Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" />
    <!-- link css -->
    <link rel="stylesheet" href="styles/updated-style.css">
    <!-- link theme -->
    <link rel="stylesheet" href="styles/theme/darkthemeStyle.css">

</head>
<body class="d-flex flex-column h-100">

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>

<!-- Navbar -->
<header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-sm px-3 flex-shrink-0">
        <a class="navbar-brand" href="#">Gradience</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainNav" aria-controls="mainNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="mainNav">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                <li class="nav-item"><a class="nav-link" data-bs-toggle="collapse" href="#collapseWidthExample">Toggle Queue</a></li>

                <!-- SOULD NOT NEED
                <li class="nav-item"><a class="nav-link" data-bs-toggle="collapse" href="#collapseHeightExample">Toggle Student Info</a></li>
                -->

                <li class="nav-item"><a class="nav-link" href="#">Database</a></li>
                <li class="nav-item"><a class="nav-link" href="#">About</a></li>
            </ul>
            <ul class="navbar-nav ms-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="settingsDropdown" role="button" data-bs-toggle="dropdown"><i class="bi bi-gear-fill"></i></a>
                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="settingsDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="profileDropdown" role="button" data-bs-toggle="dropdown">Profile</a>
                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="profileDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
</header>

<!-- Main Content -->
<div class="container-fluid h-100">
    <div class="row h-100">

        <!-- Sidebar Queue -->
        <div id="collapseWidthExample" class="col-3 queue-col h-100 collapse width show">
            <div class="card card-body mt-3" style="text-align: center;">

                <!-- Place and Time in Queue Box -->
                <div class="card border-primary mb-2 mx-auto text-center" style="max-width: 18rem;">
                    <div class="card-header bg-primary text-white">Place in Queue</div>
                    <div class="card-body">
                        <h5 class="card-title display-6 card boarder-primary mb-2">5</h5>
                        <p class="card-text mt-3"><strong>Estimated Time:</strong> 60 min</p>
                    </div>
                </div>

                <!-- Instructor Availability Section -->
                <div class="row justify-content-center mb-3">
                    <div class="col-8">
                        <div class="card text-center shadow">
                            <div class="card-body">
                                <h6 class="card-title">Instructor Availability</h6>

                                <!-- Status of instructor inside its own box -->
                                <div class="border rounded bg-light p-2 mt-2">
                                    <p class="mb-0">Status of instructor</p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                <!-- TA Availability Section -->
                <div class="row justify-content-center mb-3">
                    <div class="col-8">
                        <div class="card text-center shadow">
                            <div class="card-body">
                                <h6 class="card-title">TA Availability</h6>

                                <!-- Status of TA inside its own box -->
                                <div class="border rounded bg-light p-2 mt-2">
                                    <p class="mb-0">Status of TA</p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                <!-- QUEUE OPTIONS -->
                <div class="row justify-content-center mb-3">
                    <div class="col-12">
                        <div class="card shadow text-center">
                            <div class="card-body">

                                <!-- Individual Options as Buttons -->
                                <div class="d-flex flex-wrap justify-content-center gap-2 mt-2">
                                    <div class="row">
                                        <div class="col-sm-4"><button class="btn btn-outline-primary queue-option-btn">QUEUE OPTION 1</button></div>
                                        <div class="col-sm-4"><button class="btn btn-outline-primary queue-option-btn">QUEUE OPTION 2</button></div>
                                        <div class="col-sm-4"><button class="btn btn-outline-primary queue-option-btn">QUEUE OPTION 3</button></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4"><button class="btn btn-outline-primary queue-option-btn">QUEUE OPTION 4</button></div>
                                        <div class="col-sm-4"><button class="btn btn-outline-primary queue-option-btn">QUEUE OPTION 5</button></div>
                                        <div class="col-sm-4"><button class="btn btn-outline-primary queue-option-btn">QUEUE OPTION 6</button></div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div> <!-- END Sidebar Queue -->


        <!-- Main Area -->
        <div class="background-area col p-4 d-flex flex-column h-100">
            <!-- Student Info Tabs -->


            <div id="collapseHeightExample" class="row flex-column collapse show rounded mb-3 shadow-sm flex-shrink-0">
                <ul class="nav nav-tabs" id="myTab" role="tablist">


                    <li class="nav-item" role="presentation">
                        <a class="nav-link active text-dark" id="student-info-tab" data-bs-toggle="tab" href="#studentInfo" role="tab">Student Info</a>
                    </li>

                    <li class="nav-item" role="presentation">
                        <a class="nav-link text-dark" id="prev-questions-tab" data-bs-toggle="tab" href="#prevQuestions" role="tab">Previous Questions</a>
                    </li>
                </ul>

                <div class="tab-content pt-3 flex-fill overflow-auto" id="myTabContent">
                    <div class="tab-pane fade show active" id="studentInfo" role="tabpanel">
                        <div id="studentDetails">
                            <p>This is information about you the student.</p>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="prevQuestions" role="tabpanel">
                        <p>Previous student questions will appear here.</p>
                    </div>
                </div>
            </div>


            <!-- Question Area -->
            <div class="row question-row bg-danger rounded shadow-sm flex-grow-1 overflow-auto">
                <!-- Question Select -->
                <div class="col-4 question-select rounded-start bg-success h-100">
                    <div class="row filter bg-white rounded-top-left h-20">
                        <p>Search or filter questions here.</p>
                    </div>
                    <div class="row rounded-start bg-dark h-80">
                        <div class="col-12 scrollable-list h-100 px-0">
                            <div class="list-group list-group-flush">
                                <a href="#" class="list-group-item list-group-item-action active">Sample question 1</a>
                                <a href="#" class="list-group-item list-group-item-action">Sample question 2</a>
                                <a href="#" class="list-group-item list-group-item-action">Sample question 3</a>
                                <!-- Add more questions as needed -->
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Question Detail -->
                <div class="col-8 bg-dark h-100">
                    <div class="row rounded-top-right h-70">
                        <div class="col-12 bg-white h-100">
                            <div class="row h-10">
                                <div class="question-info d-flex justify-content-between">
                                    <h6>Question ID: #123</h6>
                                    <h6>Category: Logic</h6>
                                    <h6>Difficulty: Medium</h6>
                                    <h6>Avg Time: 12 mins</h6>
                                </div>
                            </div>
                            <div class="row h-90">
                                <div class="col-6">
                                    <div class="row h-80">
                                        <p>This is an example question text that could be shown here.
                                            But i'm putting more text to see how it adjust. now just a bunch of stuff.  kafdj akdf jklasdjfkl jadkljklfd jklajdf klj
                                            ioarjeofikjda jsfdokjfdiokjkj ja kjkladj kj kljadsfkljfdk aaldfkj a dklajd sklf jakdlfjakfsdjldfk</p>
                                    </div>

                                    <!-- SHOULD NOT NEED
                                    <div class="row bg-white h-20">
                                      <button class="btn btn-primary">Start</button>
                                      <button class="btn btn-danger">End</button>
                                    </div>
                                    -->

                                </div>
                                <div class="col-6">
                                    <p>Image preview here (if applicable)</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Follow-up Section & comments -->
                    <div class="row bg-secondary p-3 h-30">
                        <div class="col-12 d-flex flex-column h-100">

                            <!-- Top 80%: Two-column layout -->
                            <div class="d-flex flex-grow-1 mb-3 gap-3">
                                <!-- Follow-up Questions List (left side) -->
                                <div class="bg-dark rounded-start p-2 w-40 overflow-auto">
                                    <h6 class="text-white">Follow-up Questions</h6>
                                    <div class="scrollable-list">
                                        <div class="list-group list-group-flush">
                                            <a href="#" class="list-group-item list-group-item-action active">Follow-up question 1</a>
                                            <a href="#" class="list-group-item list-group-item-action">Follow-up question 2</a>
                                            <a href="#" class="list-group-item list-group-item-action">Follow-up question 3</a>
                                        </div>
                                    </div>
                                </div>

                                <!-- Follow-up Info Panel (right side) -->
                                <div class="bg-light border rounded-end p-2 w-60 overflow-auto">
                                    <h6>Follow-up Info</h6>
                                    <p>This panel will display details about the selected follow-up question.</p>
                                </div>
                            </div>

                            <!-- Bottom 20%: Comments form -->
                            <!--SHOULD NOT NEED
                            <div class="flex-shrink-0">
                              <form class="h-100 d-flex flex-column">
                                <div class="mb-2 flex-grow-1">
                                  <label for="followUpText" class="form-label text-white">Additional Comments</label>
                                  <textarea class="form-control h-100" id="followUpText" placeholder="Enter additional notes or comments..."></textarea>
                                </div>

                                <div>
                                  <button type="submit" class="btn btn-light">Submit</button>
                                </div>
                              </form>
                            </div>
                            -->

                        </div>
                    </div>
                    <!-- END Follow-up Section & comments-->



                </div> <!--END Question Details-->
            </div>  <!--END Question area-->
        </div>  <!--END Main Area-->
    </div> <!--END row size 100-->
</div> <!--END Main Content-->

<!-- Footer -->
<footer class="bg-dark text-white text-center py-3 flex-shrink-0">
    &copy; 2025 Your Company
</footer>

<!-- Custom Scripts -->
<script src="script.js"></script>
<script src="script/script.js"></script>
<script src="js/script.js"></script>

</body>
</html>
