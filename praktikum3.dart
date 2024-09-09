void main() {
  for (int index = 10; index < 27; index++) {
    if (index == 21) break; // Hentikan loop jika index sama dengan 21
    else if (index > 1 && index < 7) continue; // Lewati cetak jika index antara 2 dan 6
    print(index); // Cetak index jika tidak memenuhi kondisi di atas
  }
}
