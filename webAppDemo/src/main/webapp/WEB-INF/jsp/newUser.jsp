<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap and Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" />
    <!-- link css -->
    <link rel="stylesheet" href="css/updated-style.css">
    <!-- link theme -->
    <link rel="stylesheet" href="css/theme/darkthemeStyle.css">

    <title>Document</title>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>

<div class="container-large">
    <div class="login_style">
        <div class="container-sm">
            <br>
            <br>
            <!-- altered copied from  https://getbootstrap.com/docs/4.3/components/forms/  -->
            <form>
                <div class="row">

                    <div class="col-5">
                        <div class="form-group">
                            <label for="FirstName">First Name </label>
                            <input type="First" class="form-control" id="exampleInputFirst1" aria-describedby="FirstHelp" placeholder="Enter First Name">
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="form-group">
                            <label for="MiddleName">M</label>
                            <input type="MiddleName" class="form-control" id="exampleInputMiddle1" aria-describedby="MiddleHelp" placeholder="Enter Mddle Initial">
                        </div>
                    </div>
                    <div class="col-5">
                        <div class="form-group">
                            <label for="LastName">Last Name</label>
                            <input type="LastName" class="form-control" id="exampleInputLast1" aria-describedby="LastHelp" placeholder="Enter Last Name">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="SchoolID">School ID Number</label>
                    <input type="SchoolID" class="form-control" id="exampleInputSchoolID1" aria-describedby="SchoolIDHelp" placeholder="Enter School ID number">

                </div>
                <br>

                <!-- Alltered from https://getbootstrap.com/docs/5.0/forms/checks-radios/
                 used to make check boxes -->
                <div class="row">
                    <div class="col-5">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                            <label class="form-check-label" for="flexCheckDefault">
                                Intro to Programing
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" >
                            <label class="form-check-label" for="flexCheckChecked">
                                Computer Systems
                            </label>
                        </div>
                    </div>
                    <div class="col-5">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                            <label class="form-check-label" for="flexCheckDefault">
                                Software Engineering 1
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" >
                            <label class="form-check-label" for="flexCheckChecked">
                                Software Engineering 2
                            </label>
                        </div>

                    </div>
                </div>
                <!--END Alltered from https://getbootstrap.com/docs/5.0/forms/checks-radios/ -->
                <br>

                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                <div class="form-group form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
            <!--  end of copied from  https://getbootstrap.com/docs/4.3/components/forms/  -->

        </div>
        <br>
        <br>

    </div>

</div><!--large container-->

</body>
</html>