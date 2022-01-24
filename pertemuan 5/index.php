    <h3>SYNTAX IF STATEMENT</h3>
    if (expression)
        statement;
    if (expression) {
        statement1;
        statement2;
    }

    <hr>

    <h3>KODE : IF STATEMENT</h3>
    $nilai = 90;
    $absen = 90;

    if ($nilai >= 80 && $absen >= 80) {
        echo "Anda Lulus" . "</br>";
    }

    <hr>

    <h3>SYNTAX ELSE STATEMENT</h3>
    if (expression)
        statement;
    else (expression)
        statement;

    if (expression) {
        statement1;
        statement2;
    } else {
        statement;
    }

    <hr>

    <h3>KODE : ELSE STATEMENT</h3>
    $nilai = 70;
    $absen = 90;

    if ($nilai >= 80 && $absen >= 80) {
        echo "Anda Lulus" . "</br>";
    } else {
        echo "Anda Tidak Lulus" . "</br>";
    }

    <hr>

    <h3>SYNTAX ELSE IF STATEMENT</h3>
    if (expression)
        statement;
    elseif (expression)
        statement;
    else
        statement;
    
    if (expression) {
        statement1;
        statement2;
    } elseif (expression) {
        statement;
    } else {
        statement;
    }

    <hr>

    <h3>KODE : ELSE IF STATEMENT</h3>
    $nilai = 70;
    $absen = 70;

    if ($nilai >= 80 && $absen >= 80) {
        echo "Anda Lulus" . "</br>";
    } else if ($nilai >= 70 && $absen >= 70) {
        echo "Nilai Anda B" . "</br>";
    } else if ($nilai >= 60 && $absen >= 60) {
        echo "Nilai Anda C" . "</br>";
    } else if ($nilai >= 50 && $absen >= 50) {
        echo "Nilai Anda D" . "</br>";
    } else{
        echo "Nilai Anda E" . "</br>";
    }

    <hr>

    <h3>KODE : IF STATEMENT DENGAN COLON</h3>
    if ($nilai >= 80 && $absen >= 80);
        echo "Anda Lulus" . "</br>";
    else if ($nilai >= 70 && $absen >= 70);
        echo "Nilai Anda B" . "</br>";
    else if ($nilai >= 60 && $absen >= 60);
        echo "Nilai Anda C" . "</br>";
    else if ($nilai >= 50 && $absen >= 50);
        echo "Nilai Anda D" . "</br>";
    else :
        echo "Nilai Anda E" . "</br>";
    endif;

    <hr>

    <h3>KODE :SWITCH STATEMENT</h3>
    $nilai = "B";

    switch ($nilai) {
        case "A" :
        echo "Anda Lulus Dengan Sangat Baik" . "</br>";
        break;
        case "B" :
        case "C" :
        echo "Anda Lulus" . "</br>";
        break;
        case "D" :
        echo "Anda Tidak Lulus" . "</br>";
        break;
        default:
        echo "Mungkin Anda Salah Jurusan" . "</br>";
    }

    <hr>

    <h3>KODE :SWITCH STATEMENT SYNTAX ALTERNATIF</h3>
    $nilai = "C";

    switch ($nilai) :
        case "A" :
        echo "Anda Lulus Dengan Sangat Baik" . "</br>";
        break;
        case "B" :
        case "C" :
        echo "Anda Lulus" . "</br>";
        break;
        case "D" :
        echo "Anda Tidak Lulus" . "</br>";
        break;
        default:
        echo "Mungkin Anda Salah Jurusan" . "</br>";
    endswitch;

    <hr>