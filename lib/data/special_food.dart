class SpecialFood {
  String name;
  String location;
  String description;
  String image;

  SpecialFood({
    required this.name,
    required this.location,
    required this.description,
    required this.image,
  });
}

var specialFoodList = [
  // === Recommended Food ===
  // 1. Sate Ambal
  SpecialFood(
      name: "Sate Ambal",
      location: "Kecamatan Ambal",
      description:
          "Sate Ambal adalah makanan khas dari daging ayam yang berasal dari daerah Ambal, sebuah kecamatan di pesisir selatan Kabupaten Kebumen, Jawa Tengah. Sate Ambal berbeda dengan sate lainnya yang ada di Indonesia, perbedaannya terletak dari bumbunya. Bumbu Sate Ambal agak lebih encer, berwarna kuning tua kecoklatan dan sekilas terlihat seperti kuah masakan Padang. Istimewanya dari Sate Ambal adalah bumbunya. Bumbunya dibuat dari tempe rebus yang dihancurkan hingga halus. Cita rasanya manis pedas gurih dengan aroma keharuman rempah yang menggugah selera dengan rasa dan aroma tempenya yang tidak terasa lagi.",
      image: "images/food/sate_ambal.jpg"),

  // 2. Nasi Penggel
  SpecialFood(
      name: "Nasi Penggel",
      location: "Kebumen",
      description:
          "Nasi Penggel adalah makanan khas dari daerah Kabupaten Kebumen, Jawa Tengah, Indonesia. Penamaan Nasi Penggel berarti mengambil nasi yang dibentuk bulat-bulat seukuran bola pingpong. Nasi Penggel itu bermakna nasi yang dibulati. Nasi Penggel biasa diwadahi dengan daun pisang yang dibentuk 'pincuk'. Biasanya pembeli akan mengambil 8 - 15 bulatan nasi. Bulatan Nasi Penggel ini diletakkan dalam bakul yang ditata berlapis-lapis. Setiap lapisan Nasi Penggel akan dipisahkan dengan lembaran daun pisang.\nNasi Penggel disajikan bersama sayur dan lauk. Sayur ini merupakan lodeh santan berbumbu gurih sederhana yang dicampur 'gori' atau nangka muda, daun singkong, tempe, tahu, dan melinjo. Adapun lauk Nasi Penggel adalah kulit dan jeroan sapi seperti babat, iso, kikil, 'tetelan', jantung, ginjal, paru, tempe mendoan, dan semacamnya.",
      image: "images/food/nasi_penggel.jpg"),

  // 3. Soto Tamanwinangun
  SpecialFood(
      name: "Soto Tamanwinangun",
      location: "Sekitar Kelurahan Tamanwinangun",
      description:
          "Soto Tamanwinangun merupakan makanan khas dari Kabupaten Kebumen. Soto ini memiliki warna kuah yang keruh dengan cita rasa yang kuat. Berbeda dengan soto-soto pada umumnya yang menggunakan daging ayam maupun sapi, Soto Tamanwinangun ini menggunakan daging entok/itik sebagai suwiran.\nSelain menggunakan daging entok, keunikan dari soto khas Kebumen ini adalah penggunaan kacang tanah yang membuat tekstur kuahnya menjadi keruh. Selain itu, soto ini juga diracik dengan bumbu-bumbu alami sehingga aman untuk dikonsumsi setiap hari. Jika biasanya soto disantap dengan nasi, Soto Tamanwinangun ini disantap dengan lontong. Kuahnya yang keruh membuat Soto Tamanwinangun ini terlihat seperti opor ayam. Namun, dari segi rasa sangat berbeda dengan opor.",
      image: "images/food/soto_tmw.jpg"),
  // ========================

  // 4. Yutuk Goreng
  SpecialFood(
      name: "Yutuk Goreng",
      location: "Pesisir Pantai Kebumen",
      description:
          "Yutuk adalah jenis hewan laut yang mudah ditemukan di pesisir pantai Kebumen, terutama di Pantai Petanahan, Kabupaten Kebumen, Jawa Tengah. Oleh warga setempat, hewan bercangkang yang mirip dengan undur-undur ini diolah menjadi bakwan atau rempeyek yang khas dan gurih mirip udang dan warga setempat menyebutnya sebagai yutuk goreng.\nMeskipun termasuk golongan binatang laut, yutuk goreng ini tidak terasa bau amis sama sekali. Cara pembuatannya tidak beda dengan pembuatan rempeyek atau bakwan pada umumnya. Seperti pada sajian kepiting pada umumnya, yutuk goreng ini terlihat matang jika sudah berwarna merah atau merah kekuning-kuningan.",
      image: "images/food/yutuk_goreng.jpg"),

  // 5. Jipang Kacang
  SpecialFood(
      name: "Jipang Kacang",
      location: "Kebumen",
      description:
          "Jipang Kacang adalah makanan ringan khas dari wilayah Kabupaten Kebumen, Jawa Tengah, Indonesia. Jipang Kacang berbahan sangat sederhana yaitu gula jawa atau gula aren dan kacang tanah. Pembuatannya yaitu kacang tanah yang sudah digiling kasar serta disangrai kemudian disiram gula jawa kental hingga merata di atas loyang atau tampah. Tunggu hingga mengeras lalu dipotong berbentuk persegi panjang. Rasanya manis dan gurih sedangkan wanginya sangat harum. Makanan ringan ini adalah makanan turun temurun dari nenek moyang yang masih bertahan hingga sekarang. Perbedaan terletak pada bahan pembungkusnya. Jika dahulu menggunakan daun pisang kering kini digantikan dengan plastik.",
      image: "images/food/jipang_kacang.jpg"),

  // 6. Lanting
  SpecialFood(
      name: "Lanthing",
      location: "Kebumen",
      description:
          "Lanthing (kadang disebut klanthing), merupakan makanan ringan sejenis kerupuk yang terbuat dari singkong berbentuk angka delapan atau lingkaran kecil seperti cincin. Asal mulanya hanya mempunyai rasa gurih dan asin tetapi sekarang mulai muncul aneka rasa seperti asin pedas dan rasa keju. Lanthing berkembang di wilayah Jawa Tengah bagian selatan terutama sebagai salah satu makanan khas Kabupaten Kebumen.",
      image: "images/food/lanthing.jpg"),

  // 7. Emping Mendem
  SpecialFood(
      name: "Emping Mendem",
      location: "Kebumen",
      description:
          "Emping Mendem ini memiliki bentuk yang lebih kecil dan juga memiliki tekstur yang lebih padat. Hal inilah yang menjadikan emping mendem berbeda dari jenis emping melinjo pada umumnya. Kendati demikian, bahan yang digunakan untuk membuat emping mendem sama yaitu melinjo. Teksturnya yang renya dan rasanya yang khas membuat penggemar emping selalu memburunya. Saat ini, emping mendem sendiri sudah hadir dalam berbagai variasi rasa. Mulai dari rasa original, gurih, keju, pedas manis, balado, dan rasa lainnya. Emping mendem bisa tahan lama sehingga sangat cocok dijadikan sebagai oleh-oleh.",
      image: "images/food/emping_mendem.jpg"),

  // 8. Kethek
  SpecialFood(
      name: "Kethek",
      location: "Kebumen",
      description:
          "Kethek merupakan kuliner khas Kebumen yang sudah ada sejak zaman dahulu. Ini merupakan kuliner yang hanya ada di Kebumen. Biasanya, kethek disantap dengan nasi hangat dan juga tempe goreng atau juga dengan getuk. Tak hanya rasanya yang unik, penamaannya juga begitu tidak biasa. Kuliner satu ini dibungkus dengan daun pisang, menambah citarasa tradisional.\nWalaupun begitu, makanan khas yang satu ini bisa dibilang sudah jarang ditemui di etalase jajanan ataupun juga pasar. Kuliner khas Kebumen satu ini sudah mulai langka. Meskipun begitu, bukan berarti tidak ada sama sekali, ada satu atau dua tempat yang masih menawarkan kethek sebagai menu yang dijual, seperti di pasar Cinere Karanganyar.",
      image: "images/food/kethek.jpg"),

  // 9. Golak
  SpecialFood(
      name: "Golak",
      location: "Kebumen",
      description:
          "Golak yang menjadi jajanan khas Kebumen ini dibuat dari bahan dasar singkong, yang diolah dengan cara digoreng. Memang hampir sama dengan lanting, namun golak memiliki tekstur yang lunak dan lembut serta memilikii ukuran yang jauh lebih besar daripada lanting. Sepintas memang sangat mirip dengan makanan tradisional khas Kulonprogo, Geblek Renteng, baik dari bahan baku, bentuk, hingga cara penyajiannya. Yang membedakan adalah rasanya. Golak rasanya cenderung lebih gurih, sementara Geblek rasanya cenderung asam. Golak baiknya dimakan saat masih hangat karena jika sudah dingin maka teksturnya menjadi keras/alot.",
      image: "images/food/golak.jpg"),
];
