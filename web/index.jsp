<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Caesar Cipher</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        form {
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: auto;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        textarea, input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }

        button {
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            background-color: #28a745;
            color: white;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #218838;
        }

        h2 {
            margin-top: 30px;
            color: #333;
        }
    </style>
</head>
<body>
    <h1>Caesar Cipher</h1>
    <form action="encryption" method="post">
        <label for="text">Plain Text:</label>
        <textarea id="text" name="text" required></textarea>

        <label for="key">Key:</label>
        <input type="text" id="key" name="key" required>

        <button type="submit" name="action" value="encrypt">Enkrip</button>
        <button type="submit" name="action" value="decrypt">Dekrip</button>
    </form>

    <h2>Hasil Enkripsi / Dekripsi</h2>
    <input type="text" readonly value="${chiperText}">

    <h2>Plain text / Cipher text</h2>
    <input type="text" readonly value="${plainText}">

    <h2>Key</h2>
    <input type="text" readonly value="${key}">
</body>
</html>
