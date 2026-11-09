<!DOCTYPE html>
<html>

<head>
    <title>Spring Security Example</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" type="text/css" href="/css/styles.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

</head>

<body>
    <nav class="navbar" style="background-color: #e3f2fd; margin-bottom:20px;">
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
    <main class="container">
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col">
                <div class="card h-100">
                    <div class="card-header">
                        Any
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">User Content</h5>
                        <p class="card-text">This content is for any authenticated force wielders.</p>
                        <a href="hello" class="btn btn-primary">I Wield The Force!</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <div class="card-header">
                        Mod
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Mods + Admins</h5>
                        <p class="card-text">This content is for KNIGHTS and MASTERS.</p>
                        <a href="mod" class="btn btn-primary">I'm a Jedi KNIGHT/MASTER!</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <div class="card-header">
                        Admin
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Admins</h5>
                        <p class="card-text">This content is for MASTERS only.</p>
                        <a href="admin" class="btn btn-primary">I'm a Jedi MASTER!</a>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>

</html>