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

    <script src='http://tinymce.cachefly.net/4.0/tinymce.min.js'></script>

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
                    <h1>Add Event details</h1>
                </header>

                <form action="/event" method="post" enctype="multipart/form-data">

                    <table>
                        <tr>
                            <td>Title</td>
                            <td><input type="text" name="title"/></td>
                        </tr>
                        <tr>
                            <td>Description</td>
                            <td><textarea name="description" ></textarea></td>
                        </tr>
                        <tr>
                            <td>Description</td>
                            <td><input type="file" name="file"><br></td>
                        </tr>
                    </table>
                    <br><br>
                    <input type="submit" value="Add Event"/>
                </form>

                <script type="application/x-javascript">
                    tinymce.init({
                        selector: 'textarea',
                        height: 500,
                        menubar: false,
                        plugins: [
                            'advlist autolink lists link image charmap print preview anchor',
                            'searchreplace visualblocks code fullscreen',
                            'insertdatetime media table contextmenu paste code'
                        ],
                        toolbar: 'undo redo | insert | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
                        content_css: '//www.tinymce.com/css/codepen.min.css'
                    });
                </script>


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