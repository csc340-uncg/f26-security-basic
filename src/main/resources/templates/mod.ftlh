<!DOCTYPE html>
<html>

<head>
    <title>Mod Content!</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
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
            <h1>MOD Content</h1>
            <p class="lead">This content is only visible for JEDI KNIGHTS or MASTERS</p>

        </div>
        <img src=${currentUser}.PNG alt=${currentUser}>
    </main>
</body>

</html>