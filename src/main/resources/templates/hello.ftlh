<!DOCTYPE html>
<html>

<head>
    <title>User Content!</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.4/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-DQvkBjpPgn7RC31MCQoOeC9TI2kdqa4+BSgNMNj8v77fdC77Kj5zpWFTJaaAoMbC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="/css/styles.css">

</head>

<body>
    <nav class="navbar" style="background-color: #e3f2fd;">
        <a class="navbar-brand" href="/" style="margin: 10px;">
            <img src="/logo.png" alt="" width="80" height="60">
        </a>
        <ul class="nav justify-content-end">
            <li class="nav-item"><a class="nav-link" href="/home">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="/hello">Any</a></li>
            <li class="nav-item"><a class="nav-link" href="/mod">Knight</a></li>
            <li class="nav-item"><a class="nav-link" href="/admin">Master</a></li>
            <#if Session.SPRING_SECURITY_CONTEXT??>
                <li class="nav-item">
                    <a class="nav-link" href="/logout">(${Session.SPRING_SECURITY_CONTEXT.authentication.name}) Sign
                        Out</a>
                </li>
            </#if>
        </ul>
    </nav>
    <h1> Hello, ${currentUser}!</h1>
    <main class="container">
        <div class="bg-light p-5 rounded">
            <h1>USER Content</h1>
            <p class="lead">This content is only visible for any authenticated users.</p>
        </div>
        <img src=${currentUser}.PNG alt=${currentUser}>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.4/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YUe2LzesAfftltw+PEaao2tjU/QATaW/rOitAq67e0CT0Zi2VVRL0oC4+gAaeBKu"
        crossorigin="anonymous"></script>
</body>

</html>