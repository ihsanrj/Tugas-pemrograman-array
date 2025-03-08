program belajar_array;
uses crt;
var
    matriks : array[1..12] of string;
    i,errCode,loopvalidasi: integer;
    inputStr: string;
begin
   clrscr;
    matriks[1] := 'Januari';
    matriks[2] := 'Februari';
    matriks[3] := 'Maret';
    matriks[4] := 'April';
    matriks[5] := 'Mei';
    matriks[6] := 'Juni';
    matriks[7] := 'July';
    matriks[8] := 'Agustus';   
    matriks[9] := 'September';
    matriks[10] := 'Oktober';
    matriks[11] := 'November';
    matriks[12] := 'Desember';

    writeln('Kalender :');
    // Loop sampai user memasukkan angka yang valid

    writeln;
    for loopvalidasi := 1 to MaxInt do // Loop tak terbatas
    begin
        write('Masukkan nomor bulan (1-12): ');
        readln(inputStr);

        // Konversi string  
        val(inputStr, i, errCode);

        if (errCode = 0) and (i >= 1) and (i <= 12) then
            break // Keluar dari loop jika input valid
        else
            writeln('Input tidak valid! Harap masukkan angka antara 1 hingga 12.');
    end;

    // Menampilkan nilai sesuai indeks yang dimasukkan
    writeln('Nama bulan ke ', i, ' adalah ', matriks[i]);

    readln;
end.