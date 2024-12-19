class RejaModeli {
  final String name;
  final DateTime kuni;
  bool bajarildi = false;
  final String id;

  RejaModeli({required this.name, required this.kuni, required this.id});

  void bajarilganReja() {
    bajarildi = !bajarildi;
  }
}

class Rejalar {
  final List<RejaModeli> _rejalarRuyxati = [
    RejaModeli(name: "Bozorga borish", kuni: DateTime.now(), id: "r1"),
    RejaModeli(name: "Maktabga borish", kuni: DateTime.now(), id: "r2"),
    RejaModeli(name: "Flutterni urganish", kuni: DateTime.now(), id: "r3"),
    RejaModeli(name: "Kitob uqish", kuni: DateTime.now(), id: "r4"),
  ];

  List<RejaModeli> get rejalar {
    return _rejalarRuyxati;
  }

  void addReja(String name,DateTime kun){
    _rejalarRuyxati.add(
      RejaModeli(name: name, kuni: kun, id: "r${_rejalarRuyxati.length+1}"),
    );
  }
}
