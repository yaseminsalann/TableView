# TableView
 UITableView, Swift programlama dilinde kullanılan ve Apple’ın iOS SDK'sında bulunan bir bileşendir. Bu, liste tabanlı verileri görüntülemek için kullanılır. Örneğin, bir e-posta uygulamasında gelen kutusundaki e-postaların bir listesi ya da bir ayarlar ekranında seçeneklerin sıralandığı bir liste genellikle UITableView ile yapılır.

UITableView Kullanımı

Adım 1: UITableView Eklemek
Bir UITableView eklemek için storyboard veya kod kullanabilirsiniz:

Storyboard: UIViewController’a bir UITableView ekleyin ve gerekli kısıtlamaları (Constraints) belirleyin.
Kod: Programatik olarak bir UITableView oluşturabilirsiniz.

Adım 2: Delegate ve DataSource Atama
UITableView'in düzgün çalışması için UITableViewDelegate ve UITableViewDataSource protokollerini kullanmanız gerekir. Bu protokoller, tablo görünümünün nasıl görüneceğini ve davranacağını belirler.

Açıklamalar:
DataSource Yöntemleri:
numberOfRowsInSection: Tablo görünümünde kaç satır olacağını döndürür.
cellForRowAt: Belirli bir sıradaki hücreyi yapılandırır.

Delegate Yöntemleri:
didSelectRowAt: Kullanıcı bir hücreye tıkladığında yapılacak işlemleri belirler.
UITableViewCell: Her bir satır bir UITableViewCell ile temsil edilir.

Ek Özellikler
Custom Cell Kullanımı: Daha karmaşık hücre tasarımları için özel UITableViewCell sınıfları oluşturabilirsiniz.
Bölümler (Sections): Verileri bölümlere ayırabilirsiniz (örneğin, alfabetik olarak gruplandırılmış bir liste).
Dinamik Yükleme: Veriler büyükse ve dinamik olarak yükleniyorsa (ör. API çağrıları), veriler bir diziden alınarak yüklenebilir.
