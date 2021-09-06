<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" oncontextmenu="return false" ondragstart="return false">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>분리수GO!</title>
    <meta name="theme-color" content="#ffffff">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="twitter:image" content="https://blisgov2.bss.design/assets/img/favicon/favicon512x512.png">
    <meta name="twitter:description" content="분리배출 도우미">
    <meta name="twitter:title" content="BlisGO">
    <meta property="og:type" content="website">
    <meta name="description" content="분리배출 도우미">
    <meta name="twitter:card" content="summary_large_image">
    <meta property="og:image" content="https://blisgov2.bss.design/assets/img/favicon/favicon512x512.png">
    <link rel="apple-touch-icon" type="image/png" sizes="180x180" href="assets/img/favicon/favicon180x180.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicon/favicon16x16.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicon/favicon32x32.png">
    <link rel="icon" type="image/png" sizes="180x180" href="assets/img/favicon/favicon180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="assets/img/favicon/favicon192x192.png">
    <link rel="icon" type="image/png" sizes="512x512" href="assets/img/favicon/favicon512x512.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.1.0/dist/united/bootstrap.min.css">
    <link rel="manifest" href="manifest.json">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@400;700&amp;display=swap">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
<link rel="manifest" href="/manifest.json">
</head>

<body><script src="https://cdn.tiny.cloud/1/0mwjfs8tijzbt7jipwitlhmj1l6rg57ggo1uh82ty5ccpwnw/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <header id="header">
        <div id="nav-white-space"></div>
        <div class="container-fluid text-white d-none d-lg-block" id="highlight">
            <div class="row">
                <div class="col text-center">
                    <h1>글쓰기<br></h1>
                </div>
            </div>
        </div><jsp:include page="navbar.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
    </header>
    <main class="pt-2 pb-2">
        <section>
            <div class="container p-0" id="community-write">
                <form method="post" action="/write">
                    <div class="card shadow">
                        <div class="card-header">
                            <div class="row">
                                <div class="col p-0">
                                    <div class="input-group"><input class="form-control" type="text" placeholder="제목" value="${article.getBd_title()}"><span class="input-group-text">${article.getBd_writer()}<br></span></div>
                                </div>
                            </div>
                        </div>
                        <div class="card-body p-0"><textarea class="form-control" id="txtTinyMCE" name="write-content"></textarea><script>
    tinymce.init({
        selector: 'textarea',
        plugins: 'export linkchecker lists checklist autolink media mediaembed pageembed permanentpen powerpaste table advtable autoresize emoticons image imagetools wordcount',
        browser_spellcheck: true,
        contextmenu: false,
        language: 'ko_KR',
        mobile: {
            menubar: true
        },
        init_instance_callback: function (editor) {
            $(editor.getContainer()).find('button.tox-statusbar__wordcount').click();  // if you use jQuery
        },
        /* enable automatic uploads of images represented by blob or data URIs*/
        automatic_uploads: true,
        /*
          URL of our upload handler (for more details check: https://www.tiny.cloud/docs/configure/file-image-upload/#images_upload_url)
          images_upload_url: 'postAcceptor.php',
          here we add custom filepicker only to Image dialog
        */
        file_picker_types: 'image',
        /* and here's our custom image picker*/
        file_picker_callback: function (cb, value, meta) {
            var input = document.createElement('input');
            input.setAttribute('type', 'file');
            input.setAttribute('accept', 'image/*');
            //input.setAttribute('value','${article.getBd_content()}'); 이게 왜 안됨?

            /*
              Note: In modern browsers input[type="file"] is functional without
              even adding it to the DOM, but that might not be the case in some older
              or quirky browsers like IE, so you might want to add it to the DOM
              just in case, and visually hide it. And do not forget do remove it
              once you do not need it anymore.
            */

            input.onchange = function () {
                var file = this.files[0];

                var reader = new FileReader();
                reader.onload = function () {
                    /*
                      Note: Now we need to register the blob in TinyMCEs image blob
                      registry. In the next release this part hopefully won't be
                      necessary, as we are looking to handle it internally.
                    */
                    var id = 'blobid' + (new Date()).getTime();
                    var blobCache = tinymce.activeEditor.editorUpload.blobCache;
                    var base64 = reader.result.split(',')[1];
                    var blobInfo = blobCache.create(id, file, base64);
                    blobCache.add(blobInfo);

                    /* call the callback and populate the Title field with the file name */
                    cb(blobInfo.blobUri(), {title: file.name});
                };
                reader.readAsDataURL(file);
            };

            input.click();
        }

    });


</script></div>
                        <div class="card-footer p-1">
                            <div class="btn-group float-end" role="group"><button class="btn btn-success" data-bs-toggle="tooltip" data-bss-tooltip="" type="submit" title="글을 게시판에 올립니다"><i class="fas fa-check"></i></button><a class="btn btn-secondary" role="button" data-bs-toggle="tooltip" data-bss-tooltip="" href="/community" title="글 목록으로 이동합니다"><i class="fas fa-align-justify"></i></a></div>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </main><jsp:include page="footer.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="assets/js/load-more.js"></script>
    <script src="assets/js/service-worker.js"></script>
</body>

</html>