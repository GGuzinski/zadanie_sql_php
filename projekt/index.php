<?php
$conn = mysqli_connect('localhost', 'root', '', 'przychodnia');
if (!$conn) {
    echo "Nie udało się połączyć z bazą danych.";
    exit();
}
?>

<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styl.css">
    <title>Przychodnia</title>
</head>

<body>
    <header>
        <img src="krzyz.png" alt="">
        <h2>SzkibidiMed</h2>
    </header>
    <hr>
    <nav>
        <p>O nas</p>
        <p>Klienci</p>
        <p>Lekarze</p>
        <p>Kontakt</p>
    </nav>
    <hr>
    <section>
        <?php
        
        $klienci = mysqli_query($conn, 'SELECT count(id_pacjenta) as liczba_klientow FROM pacjenci');
        $lekarze = mysqli_query($conn, 'SELECT count(id_lekarza) as liczba_lekarzy FROM lekarze');
        $wizyty = mysqli_query($conn, 'SELECT count(id_wizyty) as liczba_wizyt FROM wizyty');

       
        if ($klienci && $lekarze && $wizyty) {
           
            $wiersze_klienci = mysqli_fetch_array($klienci);
            echo "<h3>Naszą przychodnię odwiedziło " . $wiersze_klienci['liczba_klientow'] . " pacjentów.</h3>";

           
            $wiersze_lekarze = mysqli_fetch_array($lekarze);
            echo "<h3>W naszej przychodni pracuje " . $wiersze_lekarze['liczba_lekarzy'] . " wykfalifikowanych lekarzy.</h3>";

            // Wynik dla wizyt
            $wiersze_wizyty = mysqli_fetch_array($wizyty);
            echo "<h3>Zarejestrowano " . $wiersze_wizyty['liczba_wizyt'] . " wizyt.</h3>";
        } else {
            echo "<p>Wystąpił problem z pobieraniem danych z bazy.</p>";
        }

        // Zamykamy połączenie z bazą danych
        mysqli_close($conn);
        ?>
    </section>

    <main>
        <!-- Zawartość główna strony -->
    </main>

    <footer>
        <p>O nas</p>
        <p>Klienci</p>
        <p>Lekarze</p>
        <p>Kontakt</p>
    </footer>
</body>
