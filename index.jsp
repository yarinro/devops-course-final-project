<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    // Simple server-side logic so the app is dynamic (good for the defense Q&A)
    String name = request.getParameter("username");
    String greeting = "";
    boolean submitted = false;
    if (name != null) {
        submitted = true;
        if (name.trim().isEmpty()) {
            greeting = "Please enter a name";
        } else {
            greeting = "Hello, " + name + "! Welcome to HIT DevOps Production.";
        }
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HIT DevOps Final Project</title>
    <style>
        body { font-family: Arial, Helvetica, sans-serif; background:#0f172a; color:#e2e8f0; margin:0; }
        .wrap { max-width:520px; margin:60px auto; background:#1e293b; padding:32px 36px; border-radius:14px; box-shadow:0 10px 30px rgba(0,0,0,.4); }
        h1 { margin:0 0 6px; font-size:22px; color:#38bdf8; }
        p.sub { margin:0 0 24px; color:#94a3b8; font-size:13px; }
        label { display:block; margin-bottom:6px; font-size:14px; }
        input[type=text] { width:100%; padding:11px 12px; border-radius:8px; border:1px solid #334155; background:#0f172a; color:#e2e8f0; font-size:15px; box-sizing:border-box; }
        button { margin-top:16px; width:100%; padding:12px; border:0; border-radius:8px; background:#38bdf8; color:#0f172a; font-size:15px; font-weight:bold; cursor:pointer; }
        button:hover { background:#0ea5e9; }
        .result { margin-top:20px; padding:14px; border-radius:8px; background:#064e3b; color:#6ee7b7; font-size:15px; }
        .result.err { background:#7f1d1d; color:#fecaca; }
        a.docs { display:inline-block; margin-top:22px; color:#38bdf8; font-size:14px; text-decoration:none; }
        a.docs:hover { text-decoration:underline; }
        footer { margin-top:24px; font-size:11px; color:#475569; text-align:center; }
    </style>
</head>
<body>
    <div class="wrap">
        <h1>HIT DevOps Final Project</h1>
        <p class="sub">Deployed to Tomcat via Jenkins CI/CD Pipeline</p>

        <!-- INPUT TEXT BOX (requirement) -->
        <form method="get" action="index.jsp">
            <label for="username">Enter your name:</label>
            <input type="text" id="username" name="username" placeholder="e.g. Moshe" />

            <!-- BUTTON (requirement) -->
            <button type="submit" id="greetBtn">Greet Me</button>
        </form>

        <% if (submitted) { %>
            <div class="result <%= name.trim().isEmpty() ? "err" : "" %>" id="resultMsg">
                <%= greeting %>
            </div>
        <% } %>

        <!-- LINK (requirement) -->
        <a class="docs" id="docsLink" href="https://gatling.io/docs/" target="_blank">View Gatling Documentation</a>

        <footer>HIT &copy; 2026 &mdash; YOURNAMES</footer>
    </div>
</body>
</html>
