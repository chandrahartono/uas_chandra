import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Location {
  final String code;
  final String name;
  final String city;
  final String cityname;

  Location({required this.code, required this.name, required this.city, required this.cityname});
}

List<Location> parseLocations(List<Map<String, String>> dataList) {
  return dataList.map<Location>((item) => Location(
    code: item['code']!,
    name: item['name']!,
    city: item['city']!,
    cityname: item['cityname']!,
  )).toList();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataList = [{"code":"TNK","name":"TANJUNG KARANG","city":"TANJUNG KARANG","cityname":"KOTA BANDAR LAMPUNG"},{"code":"LAR","name":"LABUAN RATU","city":"LABUAN RATU","cityname":"KOTA BANDAR LAMPUNG"},{"code":"RJS","name":"REJOSARI","city":"REJOSARI","cityname":"KABUPATEN LAMPUNG SELATAN"},{"code":"TGI","name":"TEGINENENG","city":"TEGINENENG","cityname":"KABUPATEN LAMPUNG UTARA"},{"code":"BKI","name":"BEKRI","city":"BEKRI","cityname":"KABUPATEN LAMPUNG TENGAH"},{"code":"HJP","name":"HAJI PEMANGGILAN","city":"HAJI PEMANGGILAN","cityname":"KABUPATEN LAMPUNG TENGAH"},{"code":"SLS","name":"SULUSUBAN","city":"SULUSUBAN","cityname":"KABUPATEN LAMPUNG TENGAH"},{"code":"KB","name":"KOTABUMI","city":"KOTABUMI","cityname":"KOTABUMI"},{"code":"CEP","name":"CEMPAKA","city":"CEMPAKA","cityname":"KABUPATEN LAMPUNG UTARA"},{"code":"KTP","name":"KETAPANG","city":"KETAPANG","cityname":"KABUPATEN LAMPUNG UTARA"},{"code":"NRR","name":"NEGARA RATU","city":"NEGARA RATU","cityname":"KABUPATEN LAMPUNG UTARA"},{"code":"TLY","name":"TULUNG BUYUT","city":"TULUNG BUYUT","cityname":"KABUPATEN LAMPUNG UTARA"},{"code":"NGN","name":"NEGERIAGUNG","city":"NEGERIAGUNG","cityname":"KABUPATEN WAY KANAN"},{"code":"BBU","name":"BLAMBANGAN UMPU","city":"BLAMBANGAN UMPU","cityname":"KABUPATEN WAY KANAN"},{"code":"GHM","name":"GIHAM","city":"GIHAM","cityname":"KABUPATEN WAY KANAN"},{"code":"WAY","name":"WAYTUBA","city":"WAYTUBA","cityname":"KABUPATEN WAY KANAN"},{"code":"MP","name":"MARTAPURA","city":"MARTAPURA","cityname":"MARTAPURA"},{"code":"PNW","name":"PENINJAWAN","city":"PENINJAWAN","cityname":"PENINJAWAN"},{"code":"TI","name":"TEBING TINGGI","city":"TEBING TINGGI","cityname":"KOTA TEBING TINGGI"},{"code":"LT","name":"LAHAT","city":"LAHAT","cityname":"KABUPATEN LAHAT"},{"code":"SCT","name":"SUKACINTA","city":"SUKACINTA","cityname":"KABUPATEN LAHAT"},{"code":"ME","name":"MUARA ENIM","city":"MUARA ENIM","cityname":"KABUPATEN MUARA ENIM"},{"code":"PBM","name":"PRABUMULIH","city":"PRABUMULIH","cityname":"KOTA PRABUMULIH"},{"code":"GB","name":"GOMBONG","city":"GOMBONG","cityname":"KABUPATEN KEBUMEN"},{"code":"KPT","name":"KERTAPATI","city":"KERTAPATI","cityname":"KOTA PALEMBANG"},{"code":"LLG","name":"LUBUK LINGGAU","city":"LUBUK LINGGAU","cityname":"KOTA LUBUKLINGGAU"},{"code":"BTA","name":"BATURAJA","city":"BATURAJA","cityname":"BATURAJA"},{"code":"GMR","name":"GAMBIR","city":"GAMBIR","cityname":"JAKARTA"},{"code":"JUA","name":"JUANDA","city":"JUANDA","cityname":"KOTA JAKARTA PUSAT"},{"code":"JAKK","name":"JAKARTA KOTA","city":"JAKARTA KOTA","cityname":"JAKARTA"},{"code":"TGS","name":"TIGARAKSA","city":"TIGARAKSA","cityname":"KABUPATEN TANGERANG"},{"code":"CLG","name":"CILEGON","city":"CILEGON","cityname":"KOTA CILEGON"},{"code":"KNN","name":"KRADENAN","city":"KRADENAN","cityname":"KABUPATEN GROBOGAN"},{"code":"JBN","name":"JAMBON","city":"JAMBON","cityname":"KABUPATEN GROBOGAN"},{"code":"LW","name":"LAWANG","city":"LAWANG","cityname":"KOTA MALANG"},{"code":"ML","name":"MALANG","city":"MALANG","cityname":"KOTA MALANG"},{"code":"MLK","name":"MALANG KOTA LAMA","city":"MALANG KOTA LAMA","cityname":"KOTA MALANG"},{"code":"KPN","name":"KEPANJEN","city":"KEPANJEN","cityname":"KOTA MALANG"},{"code":"SBP","name":"SUMBERPUCUNG","city":"SUMBERPUCUNG","cityname":"KOTA MALANG"},{"code":"KSB","name":"KESAMBEN","city":"KESAMBEN","cityname":"KOTA BLITAR"},{"code":"WG","name":"WLINGI","city":"WLINGI","cityname":"KOTA BLITAR"},{"code":"BL","name":"BLITAR","city":"BLITAR","cityname":"KOTA BLITAR"},{"code":"NT","name":"NGUNUT","city":"NGUNUT","cityname":"KABUPATEN TULUNGAGUNG"},{"code":"TA","name":"TULUNGAGUNG","city":"TULUNGAGUNG","cityname":"KABUPATEN TULUNGAGUNG"},{"code":"NJG","name":"NGUJANG","city":"NGUJANG","cityname":"KABUPATEN TULUNGAGUNG"},{"code":"KD","name":"KEDIRI","city":"KEDIRI","cityname":"KOTA KEDIRI"},{"code":"SI","name":"SUKABUMI","city":"SUKABUMI","cityname":"KOTA SUKABUMI"},{"code":"PSE","name":"PASARSENEN","city":"PASARSENEN","cityname":"JAKARTA"},{"code":"JNG","name":"JATINEGARA","city":"JATINEGARA","cityname":"JAKARTA"},{"code":"GM","name":"GUMILIR","city":"GUMILIR","cityname":"KABUPATEN CILACAP"},{"code":"CP","name":"CILACAP","city":"CILACAP","cityname":"KABUPATEN CILACAP"},{"code":"DMR","name":"DOLOKMERANGIR","city":"DOLOKMERANGIR","cityname":"KABUPATEN SIMALUNGUN"},{"code":"LTD","name":"LAUT TADOR","city":"LAUT TADOR","cityname":"KABUPATEN BATU BARA"},{"code":"PRA","name":"PERLANAAN","city":"PERLANAAN","cityname":"KABUPATEN SIMALUNGUN"},{"code":"LMP","name":"LIMAPULUH","city":"LIMAPULUH","cityname":"KABUPATEN SIMALUNGUN"},{"code":"SBJ","name":"SEI BEJANGKAR","city":"SEI BEJANGKAR","cityname":"KABUPATEN LABUHAN BATU"},{"code":"KIS","name":"KISARAN","city":"KISARAN","cityname":"KABUPATEN ASAHAN"},{"code":"PUR","name":"PULURAJA","city":"PULURAJA","cityname":"KABUPATEN ASAHAN"},{"code":"AKB","name":"AEKLOBA","city":"AEKLOBA","cityname":"KABUPATEN ASAHAN"},{"code":"MBM","name":"MAMBANGMUDA","city":"MAMBANGMUDA","cityname":"KABUPATEN LABUHAN BATU"},{"code":"PME","name":"PAMINGKE","city":"PAMINGKE","cityname":"KABUPATEN LABUHANBATU UTARA"},{"code":"PHA","name":"PADANGHALABAN","city":"PADANGHALABAN","cityname":"KABUPATEN LABUHAN BATU"},{"code":"MBU","name":"MARBAU","city":"MARBAU","cityname":"KABUPATEN LABUHAN BATU"},{"code":"TNB","name":"TANJUNGBALAI","city":"TANJUNGBALAI","cityname":"KOTA TANJUNG BALAI"},{"code":"TBI","name":"TEBING TINGGI","city":"TEBING TINGGI","cityname":"KOTA TEBING TINGGI"},{"code":"RPH","name":"RAMPAH","city":"RAMPAH","cityname":"KOTA TEBING TINGGI"},{"code":"PBA","name":"PERBAUNGAN","city":"PERBAUNGAN","cityname":"KABUPATEN SERDANG BEDAGAI"},{"code":"LBP","name":"LUBUKPAKAM","city":"LUBUKPAKAM","cityname":"KABUPATEN DELI SERDANG"},{"code":"ARB","name":"ARASKABU","city":"ARASKABU","cityname":"KABUPATEN DELI SERDANG"},{"code":"BTK","name":"BATANGKUIS","city":"BATANGKUIS","cityname":"KABUPATEN DELI SERDANG"},{"code":"BAP","name":"BANDARHALIPAH","city":"BANDARHALIPAH","cityname":"KABUPATEN DELI SERDANG"},{"code":"MDN","name":"MEDAN","city":"MEDAN","cityname":"KOTA MEDAN"},{"code":"RAP","name":"RANTAUPRAPAT","city":"RANTAUPRAPAT","cityname":"KABUPATEN LABUHAN BATU"},{"code":"SIR","name":"SIANTAR","city":"SIANTAR","cityname":"KOTA PEMATANG SIANTAR"},{"code":"KAC","name":"KIARACONDONG","city":"KIARACONDONG","cityname":"KOTA BANDUNG"},{"code":"BD","name":"BANDUNG","city":"BANDUNG","cityname":"KOTA BANDUNG"},{"code":"CMI","name":"CIMAHI","city":"CIMAHI","cityname":"KOTA CIMAHI"},{"code":"PLD","name":"PLERED","city":"PLERED","cityname":"KABUPATEN PURWAKARTA"},{"code":"PWK","name":"PURWAKARTA","city":"PURWAKARTA","cityname":"KABUPATEN PURWAKARTA"},{"code":"CKP","name":"CIKAMPEK","city":"CIKAMPEK","cityname":"KABUPATEN KARAWANG"},{"code":"KW","name":"KARAWANG","city":"KARAWANG","cityname":"KABUPATEN KARAWANG"},{"code":"CKR","name":"CIKARANG","city":"CIKARANG","cityname":"KABUPATEN BEKASI"},{"code":"BKS","name":"BEKASI","city":"BEKASI","cityname":"KOTA BEKASI"},{"code":"BJR","name":"BANJAR","city":"BANJAR","cityname":"KOTA BANJAR"},{"code":"CI","name":"CIAMIS","city":"CIAMIS","cityname":"KABUPATEN CIAMIS"},{"code":"TSM","name":"TASIKMALAYA","city":"TASIKMALAYA","cityname":"KOTA TASIKMALAYA"},{"code":"CPD","name":"CIPEUNDEUY","city":"CIPEUNDEUY","cityname":"KABUPATEN GARUT"},{"code":"CB","name":"CIBATU","city":"CIBATU","cityname":"KABUPATEN GARUT"},{"code":"LL","name":"LELES","city":"LELES","cityname":"KABUPATEN GARUT"},{"code":"CCL","name":"CICALENGKA","city":"CICALENGKA","cityname":"KABUPATEN BANDUNG"},{"code":"KTA","name":"KUTOARJO","city":"KUTOARJO","cityname":"KABUPATEN PURWOREJO"},{"code":"JN","name":"JENAR","city":"JENAR","cityname":"KABUPATEN PURWOREJO"},{"code":"WJ","name":"WOJO","city":"WOJO","cityname":"KABUPATEN PURWOREJO"},{"code":"KDG","name":"KEDUNDANG","city":"KEDUNDANG","cityname":"KABUPATEN KULON PROGO"},{"code":"WT","name":"WATES","city":"WATES","cityname":"KOTA YOGYAKARTA"},{"code":"YK","name":"YOGYAKARTA","city":"YOGYAKARTA","cityname":"KOTA YOGYAKARTA"},{"code":"LPN","name":"LEMPUYANGAN","city":"LEMPUYANGAN","cityname":"KOTA YOGYAKARTA"},{"code":"KT","name":"KLATEN","city":"KLATEN","cityname":"KABUPATEN KLATEN"},{"code":"PWS","name":"PURWOSARI","city":"PURWOSARI","cityname":"KOTA SOLO"},{"code":"SLO","name":"SOLO BALAPAN","city":"SOLO BALAPAN","cityname":"KOTA SOLO"},{"code":"SLM","name":"SALEM","city":"SALEM","cityname":"KABUPATEN SRAGEN"},{"code":"GD","name":"GUNDIH","city":"GUNDIH","cityname":"KABUPATEN GROBOGAN"},{"code":"TW","name":"TELAWA","city":"TELAWA","cityname":"KABUPATEN BOYOLALI"},{"code":"KEJ","name":"KEDUNGJATI","city":"KEDUNGJATI","cityname":"KABUPATEN GROBOGAN"},{"code":"SMT","name":"SEMARANG TAWANG BANK JATENG","city":"SEMARANG TAWANG BANK JATENG","cityname":"KOTA SEMARANG"},{"code":"SMC","name":"SEMARANG PONCOL","city":"SEMARANG PONCOL","cityname":"KOTA SEMARANG"},{"code":"WLR","name":"WELERI","city":"WELERI","cityname":"KABUPATEN KENDAL"},{"code":"BTG","name":"BATANG","city":"BATANG","cityname":"KOTA PEKALONGAN"},{"code":"PK","name":"PEKALONGAN","city":"PEKALONGAN","cityname":"KOTA PEKALONGAN"},{"code":"PML","name":"PEMALANG","city":"PEMALANG","cityname":"KOTA PEMALANG"},{"code":"PML","name":"PEMALANG","city":"PEMALANG","cityname":"KOTA PEMALANG"},{"code":"SLW","name":"SLAWI","city":"SLAWI","cityname":"KOTA TEGAL"},{"code":"TG","name":"TEGAL","city":"TEGAL","cityname":"KOTA TEGAL"},{"code":"BB","name":"BREBES","city":"BREBES","cityname":"KABUPATEN BREBES"},{"code":"TGN","name":"TANJUNG","city":"TANJUNG","cityname":"KABUPATEN BREBES"},{"code":"LOS","name":"LOSARI","city":"LOSARI","cityname":"KABUPATEN CIREBON"},{"code":"BBK","name":"BABAKAN","city":"BABAKAN","cityname":"KABUPATEN CIREBON"},{"code":"CLD","name":"CILEDUG","city":"CILEDUG","cityname":"KABUPATEN CIREBON"},{"code":"PGB","name":"PEGADENBARU","city":"PEGADENBARU","cityname":"KABUPATEN SUBANG"},{"code":"HGL","name":"HAURGEULIS","city":"HAURGEULIS","cityname":"KABUPATEN INDRAMAYU"},{"code":"TIS","name":"TERISI","city":"TERISI","cityname":"KABUPATEN INDRAMAYU"},{"code":"JTB","name":"JATIBARANG","city":"JATIBARANG","cityname":"KABUPATEN INDRAMAYU"},{"code":"AWN","name":"ARJAWINANGUN","city":"ARJAWINANGUN","cityname":"KABUPATEN CIREBON"},{"code":"CN","name":"CIREBON","city":"CIREBON","cityname":"KOTA CIREBON"},{"code":"CNP","name":"CIREBON PRUJAKAN","city":"CIREBON PRUJAKAN","cityname":"KOTA CIREBON"},{"code":"KGG","name":"KETANGGUNGAN","city":"KETANGGUNGAN","cityname":"KABUPATEN BREBES"},{"code":"PPK","name":"PRUPUK","city":"PRUPUK","cityname":"KOTA TEGAL"},{"code":"BMA","name":"BUMIAYU","city":"BUMIAYU","cityname":"KABUPATEN BREBES"},{"code":"PWT","name":"PURWOKERTO","city":"PURWOKERTO","cityname":"PURWOKERTO"},{"code":"MA","name":"MAOS","city":"MAOS","cityname":"KABUPATEN CILACAP"},{"code":"JRL","name":"JERUKLEGI","city":"JERUKLEGI","cityname":"KABUPATEN CILACAP"},{"code":"SDR","name":"SIDAREJA","city":"SIDAREJA","cityname":"KABUPATEN CILACAP"},{"code":"GDM","name":"GANDRUNGMANGUN","city":"GANDRUNGMANGUN","cityname":"KABUPATEN CILACAP"},{"code":"CSA","name":"CISAAT","city":"CISAAT","cityname":"KOTA SUKABUMI"},{"code":"KE","name":"KARANGTENGAH","city":"KARANGTENGAH","cityname":"KOTA SUKABUMI"},{"code":"CBD","name":"CIBADAK","city":"CIBADAK","cityname":"KOTA SUKABUMI"},{"code":"PRK","name":"PARUNG KUDA","city":"PARUNG KUDA","cityname":"KOTA SUKABUMI"},{"code":"CCR","name":"CICURUG","city":"CICURUG","cityname":"KOTA SUKABUMI"},{"code":"CGB","name":"CIGOMBONG","city":"CIGOMBONG","cityname":"KABUPATEN BOGOR"},{"code":"MSG","name":"MASENG","city":"MASENG","cityname":"KABUPATEN BOGOR"},{"code":"BTT","name":"BATUTULIS","city":"BATUTULIS","cityname":"KABUPATEN BOGOR"},{"code":"BOO","name":"BOGOR","city":"BOGOR","cityname":"KOTA BOGOR"},{"code":"KYA","name":"KROYA","city":"KROYA","cityname":"KABUPATEN CILACAP"},{"code":"SPH","name":"SUMPIUH","city":"SUMPIUH","cityname":"KABUPATEN BANYUMAS"},{"code":"GB","name":"GOMBONG","city":"GOMBONG","cityname":"KABUPATEN KEBUMEN"},{"code":"KA","name":"KARANGANYAR","city":"KARANGANYAR","cityname":"KABUPATEN KEBUMEN"},{"code":"KM","name":"KEBUMEN","city":"KEBUMEN","cityname":"KABUPATEN KEBUMEN"},{"code":"KWN","name":"KUTOWINANGUN","city":"KUTOWINANGUN","cityname":"KABUPATEN KEBUMEN"},{"code":"GBN","name":"GAMBRINGAN","city":"GAMBRINGAN","cityname":"KABUPATEN GROBOGAN"},{"code":"NBO","name":"NGROMBO","city":"NGROMBO","cityname":"KABUPATEN GROBOGAN"},{"code":"WR","name":"WARU","city":"WARU","cityname":"SIDOARJO"},{"code":"KRN","name":"KRIAN","city":"KRIAN","cityname":"SIDOARJO"},{"code":"MR","name":"MOJOKERTO","city":"MOJOKERTO","cityname":"KOTA MOJOKERTO"},{"code":"CRM","name":"CURAHMALANG","city":"CURAHMALANG","cityname":"KABUPATEN JOMBANG"},{"code":"JG","name":"JOMBANG","city":"JOMBANG","cityname":"KABUPATEN JOMBANG"},{"code":"SMB","name":"SEMBUNG","city":"SEMBUNG","cityname":"KABUPATEN JOMBANG"},{"code":"KTS","name":"KERTOSONO","city":"KERTOSONO","cityname":"KABUPATEN NGANJUK"},{"code":"NJ","name":"NGANJUK","city":"NGANJUK","cityname":"KABUPATEN NGANJUK"},{"code":"CRB","name":"CARUBAN","city":"CARUBAN","cityname":"KOTA MADIUN"},{"code":"MN","name":"MADIUN","city":"MADIUN","cityname":"KOTA MADIUN"},{"code":"GG","name":"GENENG","city":"GENENG","cityname":"KABUPATEN NGAWI"},{"code":"PA","name":"PARON","city":"PARON","cityname":"KABUPATEN NGAWI"},{"code":"KG","name":"KEDUNGGALAR","city":"KEDUNGGALAR","cityname":"KABUPATEN NGAWI"},{"code":"WK","name":"WALIKUKUN","city":"WALIKUKUN","cityname":"KABUPATEN NGAWI"},{"code":"SR","name":"SRAGEN","city":"SRAGEN","cityname":"KABUPATEN SRAGEN"},{"code":"SK","name":"SOLOJEBRES","city":"SOLOJEBRES","cityname":"KOTA SOLO"},{"code":"RGP","name":"ROGOJAMPI","city":"ROGOJAMPI","cityname":"KABUPATEN BANYUWANGI"},{"code":"TGR","name":"TEMUGURUH","city":"TEMUGURUH","cityname":"KABUPATEN BANYUWANGI"},{"code":"KSL","name":"KALISETAIL","city":"KALISETAIL","cityname":"KABUPATEN BANYUWANGI"},{"code":"SWD","name":"SUMBER WADUNG","city":"SUMBER WADUNG","cityname":"KABUPATEN BANYUWANGI"},{"code":"GLM","name":"GLENMORE","city":"GLENMORE","cityname":"KABUPATEN BANYUWANGI"},{"code":"KBR","name":"KALIBARU","city":"KALIBARU","cityname":"KABUPATEN BANYUWANGI"},{"code":"KLT","name":"KALISAT","city":"KALISAT","cityname":"KABUPATEN JEMBER"},{"code":"AJ","name":"ARJASA","city":"ARJASA","cityname":"KABUPATEN JEMBER"},{"code":"JR","name":"JEMBER","city":"JEMBER","cityname":"KABUPATEN JEMBER"},{"code":"RBP","name":"RAMBIPUJI","city":"RAMBIPUJI","cityname":"KABUPATEN JEMBER"},{"code":"TGL","name":"TANGGUL","city":"TANGGUL","cityname":"KABUPATEN JEMBER"},{"code":"JTR","name":"JATIROTO","city":"JATIROTO","cityname":"KABUPATEN LUMAJANG"},{"code":"KK","name":"KLAKAH","city":"KLAKAH","cityname":"KABUPATEN LUMAJANG"},{"code":"RN","name":"RANUYOSO","city":"RANUYOSO","cityname":"KABUPATEN LUMAJANG"},{"code":"PB","name":"PROBOLINGGO","city":"PROBOLINGGO","cityname":"KABUPATEN PROBOLINGGO"},{"code":"PS","name":"PASURUAN","city":"PASURUAN","cityname":"KOTA PASURUAN"},{"code":"BG","name":"BANGIL","city":"BANGIL","cityname":"KOTA PASURUAN"},{"code":"SDA","name":"SIDOARJO","city":"SIDOARJO","cityname":"SIDOARJO"},{"code":"WO","name":"WONOKROMO","city":"WONOKROMO","cityname":"KOTA SURABAYA"},{"code":"SGU","name":"SURABAYA GUBENG","city":"SURABAYA GUBENG","cityname":"KOTA SURABAYA"},{"code":"SBI","name":"SURABAYA PASAR TURI","city":"SURABAYA PASAR TURI","cityname":"KOTA SURABAYA"},{"code":"LMG","name":"LAMONGAN","city":"LAMONGAN","cityname":"KABUPATEN LAMONGAN"},{"code":"BJ","name":"BOJONEGORO","city":"BOJONEGORO","cityname":"KABUPATEN BOJONEGORO"},{"code":"CU","name":"CEPU","city":"CEPU","cityname":"KABUPATEN BLORA"},{"code":"WDU","name":"WADU","city":"WADU","cityname":"KABUPATEN BLORA"},{"code":"RBG","name":"RANDUBLATUNG","city":"RANDUBLATUNG","cityname":"KABUPATEN BLORA"},{"code":"DPL","name":"DOPLANG","city":"DOPLANG","cityname":"KABUPATEN BLORA"},{"code":"MAG","name":"MAGETAN","city":"MAGETAN","cityname":"MAGETAN"},{"code":"KTG","name":"KETAPANG","city":"KETAPANG","cityname":"KABUPATEN BANYUWANGI"},{"code":"BBT","name":"BABAT","city":"BABAT","cityname":"KABUPATEN LAMONGAN"},{"code":"LEC","name":"LECES","city":"LECES","cityname":"KABUPATEN PROBOLINGGO"},{"code":"PDX","name":"PADANGX","city":"PADANGX","cityname":"KOTA PADANG"},{"code":"NJG","name":"NGUJANG","city":"NGUJANG","cityname":"KABUPATEN TULUNGAGUNG"},{"code":"BOP","name":"BOGOR PALEDANG","city":"BOGOR PALEDANG","cityname":"KOTA BOGOR"},{"code":"SGT","name":"SUNGAI TUHA","city":"SUNGAI TUHA","cityname":"MARTAPURA"},{"code":"WAP","name":"WAY PISANG","city":"WAY PISANG","cityname":"KABUPATEN WAY KANAN"},{"code":"NGW","name":"NGAWI","city":"NGAWI","cityname":"KABUPATEN NGAWI"},{"code":"BWI","name":"BANYUWANGI KOTA","city":"BANYUWANGI KOTA","cityname":"KABUPATEN BANYUWANGI"},{"code":"GRT","name":"GARUT","city":"GARUT","cityname":"KABUPATEN GARUT"}]; // Your list of maps here
    final locations = parseLocations(dataList);

    return MaterialApp(
      home: LocationListScreen(locations: locations),
    );
  }
}

class LocationListScreen extends StatefulWidget {
  final List<Location> locations;

  LocationListScreen({required this.locations});

  @override
  _LocationListScreenState createState() => _LocationListScreenState();
}

class _LocationListScreenState extends State<LocationListScreen> {
  List<Location> filteredLocations = [];

  @override
  void initState() {
    filteredLocations = widget.locations;
    super.initState();
  }

  void _filterLocations(String query) {
    setState(() {
      filteredLocations = widget.locations.where((location) {
        return location.code.toLowerCase().contains(query.toLowerCase()) ||
            location.name.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('KAI INFORMATION'),
        backgroundColor: Colors.red,

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: _filterLocations,
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: filteredLocations.length,
              itemBuilder: (BuildContext context, int index) => Card(
                color: Colors.blueAccent,
                elevation: 4,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  title: Text(
                    filteredLocations[index].code,
                    style: TextStyle(
                        color : Colors.orange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle: Text('${filteredLocations[index].name} - ${filteredLocations[index].cityname}'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
