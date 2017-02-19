<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8"/>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <!--[if lte IE 8]>
    <script src="assets/js/ie/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="assets/css/main.css"/>
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="assets/css/ie9.css"/><![endif]-->
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="assets/css/ie8.css"/><![endif]-->
</head>
<body>

<!-- Wrapper -->
<div id="wrapper">

    <!-- Main -->
    <div id="main">
        <div class="inner">

            <!-- Header -->


            <!-- Content -->
            <section>
                <header class="main">
                    <h2>Upload file for students</h2>
                </header>


                <form action="homework" method="post" enctype="multipart/form-data">
                    <table>
                        <tr>
                            <td>Title</td>
                            <td><input type="text" name="Title"/></td>
                        </tr>
                        <tr>
                            <td>Subjects</td>
                            <td><input type="text" name="subjects"/></td>
                        </tr>

                        <tr>
                            <td>Class</td>
                            <td>
                                <select name="class">
                                    <option value="1">first</option>
                                    <option value="2">second</option>
                                    <option value="3">third</option>
                                    <option value="4">fourth</option>
                                    <option value="5">fifth</option>
                                    <option value="6">sixth</option>
                                    <option value="7">seventh</option>
                                    <option value="8">eighth</option>
                                    <option value="9">ninth</option>
                                    <option value="10">tenth</option>
                                    <option value="11">eleventh</option>
                                    <option value="12">twelfth</option>
                                </select>
                            </td>

                        <tr>
                            <td>File</td>
                            <td><input type="file" name="file"/><br>
                            </td>
                        </tr>
                    </table>
                    <br><br>
                    <input type="submit"/>
                </form>


            </section>

        </div>
    </div>

</div>

<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<!--[if lte IE 8]>
<script src="assets/js/ie/respond.min.js"></script><![endif]-->
<script src="assets/js/main.js"></script>

</body>
</html>