<%@page contentType="text/html; ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Simple Instructor Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles/simple-style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"/>

</head>
<body>
<header>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark px-3">
        <a class="navbar-brand" href="#">Gradience</a>
        <button class="navbar-toggler"type="button" data-bs-toggle="collapse" data-bs-target="#mainNav" aria-controls="mainNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="mainNav">
            <!-- Left items on navbar -->
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a id="queue-toggle" class="nav-link">
                        Toggle Left Panel
                    </a>
                </li>
                <li class="nav-item">
                    <a id="studentInfo-toggle" class="nav-link">
                        Toggle Top Panel
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Database</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
            </ul>
            <!-- Right items on navbar -->
            <ul class="navbar-nav ms-auto">
                <!-- settings dropdown -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="settingsDropdown"role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" aria-label="Settings">
                        <i class="bi bi-gear-fill"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="settingsDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>

                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="profileDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Profile</a>
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
<!-- Main Container -->
<div class="d-flex main-container">

    <!-- Left Panel -->
    <div id="leftPanel" class="p-3 col-4 d-flex flex-column">
        <div class="card flex-fill">
            <div class="card-body">
                <div class="queue-container d-flex flex-column">
                <%--   Queue List    --%>
                    <div class="card mb-2 flex-grow-1 h-75" id="queueList">
                        <div class="col p-2 overflow-auto h-100">
                            <ul class="list-group">
                                <c:forEach var="student" items="${students}">
                                <li class="list-group-item">
                                    <div class="d-flex flex-column flex-md-row gap-3">

                                        <div class="flex-fill">
                                            <strong>Name:</strong> ${student.name}
                                        </div>

                                        <div class="flex-fill">
                                            <strong>Class:</strong> ${student.studentClass}
                                        </div>

                                        <div class="flex-fill">
                                            <strong>Competencies:</strong> ${student.competency}
                                        </div>
                                    </div>
                                </li>
                                </c:forEach>
                            </ul>
                        </div>


                    </div>
                    <div class="card flex-grow-1 h-25" id="queueOptions">
                        <div class="d-flex flex-column h-100 p-3 gap-2">

                            <!-- First Row -->
                            <div class="d-flex flex-fill gap-2">
                                <button class="btn btn-dark flex-fill">Button 1</button>
                                <button class="btn btn-dark flex-fill">Button 2</button>
                                <button class="btn btn-dark flex-fill">Button 3</button>
                            </div>

                            <!-- Second Row -->
                            <div class="d-flex flex-fill gap-2">
                                <button class="btn btn-dark flex-fill">Button 4</button>
                                <button class="btn btn-dark flex-fill">Button 5</button>
                                <button class="btn btn-dark flex-fill">Button 6</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Right Panel -->
    <div class="col d-flex flex-column p-3 right-cards">
        <!-- Student info/ Previously Asked Questions-->
        <div class="card mb-2 flex-grow-1 h-40" id="studentInfoPanel">
            <ul class="nav nav-tabs bg-dark rounded-top" id="topPanelTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="btn btn-dark rounded-0 rounded-top active" id="student-info-tab"
                            data-bs-toggle="tab" data-bs-target="#studentInfo"
                            type="button" role="tab" aria-selected="true">
                        Student Information
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="btn btn-dark rounded-0 rounded-top" id="prev-questions-tab"
                            data-bs-toggle="tab" data-bs-target="#prevQuestions"
                            type="button" role="tab" aria-selected="false">
                        Previous Questions
                    </button>
                </li>
            </ul>

            <div class="card-body">
                <div class="tab-content" id="topPanelTabContent">
                    <div class="tab-pane fade show active" id="studentInfo" role="tabpanel" aria-labelledby="student-info-tab">
                        This is the Active tab content.
                    </div>
                    <div class="tab-pane fade show" id="prevQuestions" role="tabpanel" aria-labelledby="prev-questions-tab">
                        This is the Link tab content.
                    </div>
                </div>
            </div>

        </div>
        <!-- Question Area -->
        <div class="card flex-grow-1 h-60">
            <div class="question-container d-flex flex-grow-1" >
                <!-- question List -->
                <div class="col-4 p-2 overflow-auto h-100">
                    <ul class="list-group">
                        <li class="list-group-item">Item 1</li>
                        <li class="list-group-item">Item 2</li>
                        <li class="list-group-item">Item 3</li>
                    </ul>
                </div>

                <div class="col-8 p-2">
                    <div class="question-area-container d-flex flex-column">
                        <!-- Question Info-->
                        <div class="card mb-2 flex-grow-1 h-60">
                            <ul class="nav nav-tabs bg-dark rounded-top border-bottom-0" role="tablist">
                                <li class="nav-item" role="tab">
                                    <span class="nav-link disabled text-white">Question ID: 1674950</span>
                                </li>
                                <li class="nav-item" role="tab">
                                    <span class="nav-link disabled text-white">Category: Linked List</span>
                                </li>
                                <li class="nav-item" role="tab">
                                    <span class="nav-link disabled text-white">Average Time: 7 Minutes</span>
                                </li>
                            </ul>

                            <div class="question-display-container d-flex bg-dark">
                                <div class="card m-1 flex-grow-1 d-flex justify-content-center align-items-center">
                                    <p class="text-center mb-0">This is where the actual question will go</p>
                                </div>
                                <div class="card m-1 flex-grow-1">
                                    <img src="#" alt="where image would be shown">
                                </div>
                            </div>

                        </div>
                        <!-- FollowUp/ Additional Comments -->
                        <div class="card flex-grow-1 h-40">
                            <!-- Tabs -->
                            <ul class="nav nav-tabs bg-dark rounded-top" id="bottomPanelTab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <button class="btn btn-dark rounded-0 rounded-top active" id="followUp-tab"
                                            data-bs-toggle="tab" data-bs-target="#followUp"
                                            type="button" role="tab" aria-selected="true">
                                        Follow-Ups
                                    </button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="btn btn-dark rounded-0 rounded-top" id="additional-questions-tab"
                                            data-bs-toggle="tab" data-bs-target="#additionalQuestions"
                                            type="button" role="tab" aria-selected="false">
                                        Additional Comments
                                    </button>
                                </li>
                            </ul>
                            <!-- Content -->
                            <div class="card-body">
                                <div class="tab-content" id="bottomPanelTabContent">
                                    <div class="tab-pane fade show active" id="followUp" role="tabpanel" aria-labelledby="followUp-tab">
                                        This is the Active tab content.
                                    </div>
                                    <div class="tab-pane fade show" id="additionalQuestions" role="tabpanel" aria-labelledby="additional-questions-tab">
                                        This is the Link tab content.
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

<script>
    const queueToggle = document.getElementById('queue-toggle');
    const leftPanel = document.getElementById('leftPanel');
    const studentInfoToggle = document.getElementById('studentInfo-toggle');
    const studentInfo = document.getElementById('studentInfoPanel');

    queueToggle.addEventListener('click', () => {
        leftPanel.classList.toggle('d-none');
    });
    studentInfoToggle.addEventListener('click', () => {
        studentInfo.classList.toggle('d-none');
    });

</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>