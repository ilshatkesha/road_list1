@ -0,0 +1,29 @@
from jinja2 import Environment, FileSystemLoader
import pdfkit
import sqlite3
path_wkhtmltopdf = 'D:/wkhtmltopdf.exe'
config = pdfkit.configuration(wkhtmltopdf=path_wkhtmltopdf)
connection = sqlite3.connect('D:/SQLStudio/database1')
cur = connection.cursor()
num_auto = '959'
num = '228'
first_date = '123'
sec_date = '321'
auto_mark = str(cur.execute("SELECT Марка FROM Автомобили WHERE Гос_номер = ?", (num_auto,)).fetchone()[0])

auto_num = str(cur.execute("SELECT Гос_номер FROM Автомобили WHERE Гос_номер = ?", (num_auto,)).fetchone()[0])
surname = "Петайкин"
last_name = str(cur.execute("SELECT Фамилия FROM Сотрудники WHERE Фамилия = ?", (surname,)).fetchone()[0])
first_name = str(cur.execute("SELECT Имя_Отчество FROM Сотрудники WHERE Фамилия = ?", (surname,)).fetchone()[0])
snils = str(cur.execute("SELECT СНИЛС FROM Сотрудники WHERE Фамилия = ?", (surname,)).fetchone()[0])
tab_num = str(cur.execute("SELECT Табельный_номер FROM Сотрудники WHERE Фамилия = ?", (surname,)).fetchone()[0])
dl_num = str(cur.execute("SELECT ВУ FROM Сотрудники WHERE Фамилия = ?", (surname,)).fetchone()[0])
dl_date = str(cur.execute("SELECT Дата_ВУ FROM Сотрудники WHERE Фамилия = ?", (surname,)).fetchone()[0])
dl_class = str(cur.execute("SELECT Класс FROM Сотрудники WHERE Фамилия = ?", (surname,)).fetchone()[0])
location = str(cur.execute("SELECT Местоположение FROM Автомобили WHERE Гос_номер = ?", (num_auto,)).fetchone()[0])
engineer = str(cur.execute("SELECT Механик FROM Автомобили WHERE Гос_номер = ?", (num_auto,)).fetchone()[0])
env = Environment(loader=FileSystemLoader("D:/"))
template = env.get_template("book1.html")
pdf_template = template.render({'auto_num': auto_num,'num': num, 'first_date': first_date, 'sec_date': sec_date, 'auto_mark': auto_mark, 'last_name': last_name, 'first_name': first_name,
                                'snils': snils, 'tab_num': tab_num, 'dl_num': dl_num, 'dl_date': dl_date, 'dl_class': dl_class, 'location': location, 'engineer': engineer})
pdfkit.from_string(pdf_template, 'output.pdf')
