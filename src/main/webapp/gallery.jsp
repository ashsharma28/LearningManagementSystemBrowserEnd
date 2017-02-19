<!DOCTYPE HTML>
<!--
Editorial by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->

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
                    <h1>Upload Images for Photo Gallery</h1>
                </header>

                <form action="/gallery" method="post" enctype="multipart/form-data">

                    <table>
                        <tr>
                            <td>Label</td>
                            <td><input required type="text" name="label"></td>
                        </tr>
                        <tr>
                            <td>File</td>
                            <td><input type="file" name="file"></td>
                        </tr>

                    </table>
                    <br><br>
                    <input type="submit" value="Add image">

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