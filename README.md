# lengthstable.lsp
# در این مکان لیسپ‌هایی که هر روز برای حل مشکلات اتوکدی‌ام می‌نویسم را به اشتراک می‌گذارم. راه حل‌ها عمومی نیستند معمولا اما مشکلات ممکن است عمومی باشند و احتمالا می‌تواند برخی را قدمی به راه حل نزدیک کرده یا یک قدم از مسیرشان بکاهد. 

## 1- فایل lengthtable.lsp
### یک لیسپ برای اینکه طولهای اشکال سلکت شده را بگیرد جمع بزند و به صورت تکست در نقشه بیاورد و سپس جدولی از تک به تک آنها با مشخصات هر کدام ارايه دهد. این لیسپ برای محاسبه میلگردها در سطوح نامنظم تهیه شده و می‌تواند جدول برشی کامل را + طول خم و غیره با چند کلیک به شما تحویل دهد. 
## 2-فایل newale.lsp
## لیسپی برای محاسبه سرجمع میلگردهای مش 


<html>
<head>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<meta name=Generator content="Microsoft Word 15 (filtered)">


</head>

<body lang=EN-US style='word-wrap:break-word'>

<div class=WordSection1>

<p class=MsoListParagraphCxSpFirst dir=RTL style='margin-top:0cm;margin-right:
36.0pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-18.0pt;
direction:rtl;unicode-bidi:embed'>1.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>مش را
در محدوده مورد نظر بکشید</span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
36.0pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-18.0pt;
direction:rtl;unicode-bidi:embed'>2.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>لیسپ را
لود کنید</span><span dir=LTR></span><span dir=LTR><span dir=LTR></span>.</span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
36.0pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-18.0pt;
direction:rtl;unicode-bidi:embed'>3.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>با زدن
دستور</span><span dir=LTR></span><span dir=LTR><span dir=LTR></span> SBE </span><span
lang=FA style='font-family:"B Yagut"'>میتوانید لیسپ را فعال کنید و مراحل اجرای
آن به این ترتیب آغاز می شود</span><span dir=LTR></span><span dir=LTR><span
dir=LTR></span>:</span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
84.75pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-30.75pt;
direction:rtl;unicode-bidi:embed'>1-<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>مقیاس
را تعیین کنید. به این صورت که اگر مقیاس 1 به 1 است: 1، اگر 2 به یک است: 2 و</span><span
dir=LTR></span><span dir=LTR><span dir=LTR></span> ...</span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
84.75pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-30.75pt;
direction:rtl;unicode-bidi:embed'>2-<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>این لیسب
جدول ایجاد شده و تکست جمع خطوط را در یک لایه جمع می‌آورد. در این مرحله باید نام
لایه را مشخص کنید. نام پیشفرض</span><span dir=LTR></span><span dir=LTR><span
dir=LTR></span> AREA </span><span lang=FA style='font-family:"B Yagut"'>است و
اگر اینتر بزنید به همین نام یک لایه ایجد می‌شود</span><span dir=LTR></span><span
dir=LTR><span dir=LTR></span>.</span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
84.75pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-30.75pt;
direction:rtl;unicode-bidi:embed'>3-<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>اگر لایه
از پیش وجود نداشته باشد از شما رنگ لایه را می پرسد. پس رنگ لایه را انتخاب کنید</span><span
dir=LTR></span><span dir=LTR><span dir=LTR></span>.</span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
84.75pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-30.75pt;
direction:rtl;unicode-bidi:embed'>4-<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>در این
مرحله باید مشخص کنید خطوط را همه باهم انتخاب کنید و نتیجه را ببینید، در این
صورت</span><span dir=LTR></span><span dir=LTR><span dir=LTR></span> (s) </span><span
lang=FA style='font-family:"B Yagut"'>برای</span><span dir=LTR></span><span
dir=LTR><span dir=LTR></span> select </span><span lang=FA style='font-family:
"B Yagut"'>را وارد کنید و یا میخواهید خطوط را یکی یکی اندازه بزنید یا عدد آن را
وارد کنید که در این صورت</span><span dir=LTR></span><span dir=LTR><span
dir=LTR></span> (d) </span><span lang=FA style='font-family:"B Yagut"'>برای</span><span
dir=LTR></span><span dir=LTR><span dir=LTR></span> Dimension </span><span
lang=FA style='font-family:"B Yagut"'>را وارد کنید</span><span dir=LTR></span><span
dir=LTR><span dir=LTR></span>. </span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
84.75pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-30.75pt;
direction:rtl;unicode-bidi:embed'>5-<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>هر کدام
را وارد کنید نمره آرماتور از شما پرسیده می‌شود و باید از میان نمره‌های
استاندارد آرماتور در ایران یکی را انتخاب کنید. در صورت انتخاب اشتباه از شما
درخواست می شود عدد درست را وارد کنید</span><span dir=LTR></span><span dir=LTR><span
dir=LTR></span>.</span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
84.75pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-30.75pt;
direction:rtl;unicode-bidi:embed'>6-<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>در این
مرحله اگر</span><span dir=LTR></span><span dir=LTR><span dir=LTR></span> s </span><span
lang=FA style='font-family:"B Yagut"'>را برای انتخاب خطوط زده باشید از شما
خواسته می شود تا خطوط یا ابژه‌های مورد نظر را انتخاب کنید</span><span dir=LTR></span><span
dir=LTR><span dir=LTR></span>.</span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
84.75pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-30.75pt;
direction:rtl;unicode-bidi:embed'>7-<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>پس از
انتخاب خطوط یک پیام در صفحه ظاهر می‌شود که تعداد ابژه ها و جمع طول آنها را به
شما نشان می‌دهد. پیام را تایید کنید</span><span dir=LTR></span><span dir=LTR><span
dir=LTR></span>.</span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
84.75pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-30.75pt;
direction:rtl;unicode-bidi:embed'>8-<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>حالا از
شما خواسته می‌شود تا نقطه ایجاد متن را رو نقشه انتخاب کنبد. روی نقطه‌ای از نقشه
کلیک کنید تا متن ایجاد شود</span><span dir=LTR></span><span dir=LTR><span
dir=LTR></span>.</span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
84.75pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-30.75pt;
direction:rtl;unicode-bidi:embed'>9-<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>از شما
خواسته می‌شود تا ارتفاع متن را مشخص کنید</span><span dir=LTR></span><span
dir=LTR><span dir=LTR></span>.</span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
84.75pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-30.75pt;
direction:rtl;unicode-bidi:embed'>10-<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>متن را
می‌توانید روی نقشه ببینید. حالا باید نقطه‌ای را مشخص کنید تا جدول ایجاد شده روی
نقشه بیفتد</span><span dir=LTR></span><span dir=LTR><span dir=LTR></span>.</span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
84.75pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-30.75pt;
direction:rtl;unicode-bidi:embed'>11-<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>جدول ایجاد
شده به این صورت است: </span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
85.15pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-11.45pt;
direction:rtl;unicode-bidi:embed'>1)<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>ستون
اول شماره ابژه</span><span dir=LTR></span><span dir=LTR><span dir=LTR></span>
(pos).</span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
85.15pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-11.45pt;
direction:rtl;unicode-bidi:embed'><span dir=RTL></span>2)<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span><span dir=RTL></span><span
dir=LTR> </span><span lang=FA style='font-family:"B Yagut"'>ستون دوم نمره
آرماتور را نشان می‌دهد</span><span dir=LTR></span><span dir=LTR><span dir=LTR></span>
(dia). </span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
85.15pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-11.45pt;
direction:rtl;unicode-bidi:embed'>3)<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>ستون
سوم طول خم آرماتور را نشان می‌دهد که بر اساس 12</span><span dir=LTR>db </span><span
lang=FA style='font-family:"B Yagut"'>محاسبه شده است</span><span dir=LTR></span><span
dir=LTR><span dir=LTR></span> (length kham).</span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
85.15pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-11.45pt;
direction:rtl;unicode-bidi:embed'>4)<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>ستون
چهارم طول خط را نشان می‌دهد</span><span dir=LTR></span><span dir=LTR><span
dir=LTR></span> ( length). </span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
85.15pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-11.45pt;
direction:rtl;unicode-bidi:embed'>5)<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>ستون
پنجم طول + اورلپ محاسبه شده را نشان می‌دهد که به صورت 55</span><span dir=LTR>d </span><span
dir=RTL></span><span style='font-family:"B Yagut"'><span dir=RTL></span> <span
lang=FA>و با الگوریتم خاصی جهت محاسبه اورلپ میلگرد ایجاد شده است که اورلپ را به
دقت تعیین می‌کند</span></span><span dir=LTR></span><span dir=LTR><span dir=LTR></span>
(length + overlaps).</span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
85.15pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-11.45pt;
direction:rtl;unicode-bidi:embed'>6)<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>ستون
ششم طول آخرین میلگرد کوچکتر از 12 متر را نشان می‌دهد</span><span dir=LTR></span><span
dir=LTR><span dir=LTR></span>(remine length). </span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
85.15pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-11.45pt;
direction:rtl;unicode-bidi:embed'><span dir=RTL></span>7)<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span><span dir=RTL></span><span
dir=LTR>  </span><span lang=FA style='font-family:"B Yagut"'>ستون هفتم تعداد میلگردها
با طول 12 متر</span><span dir=LTR></span><span dir=LTR><span dir=LTR></span>
(number of 12m).</span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
85.15pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-11.45pt;
direction:rtl;unicode-bidi:embed'>8)<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>ستون
هشتم طول اورلپ</span><span dir=LTR></span><span dir=LTR><span dir=LTR></span>
(Overlap length).</span></p>

<p class=MsoListParagraphCxSpMiddle dir=RTL style='margin-top:0cm;margin-right:
85.15pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-11.45pt;
direction:rtl;unicode-bidi:embed'>9)<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>ستون
نهم طول کل</span><span dir=LTR></span><span dir=LTR><span dir=LTR></span>
(Total length&quot;). </span></p>

<p class=MsoListParagraphCxSpLast dir=RTL style='margin-top:0cm;margin-right:
84.75pt;margin-bottom:8.0pt;margin-left:0cm;text-align:right;text-indent:-30.75pt;
direction:rtl;unicode-bidi:embed'>12-<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span dir=RTL></span><span lang=FA style='font-family:"B Yagut"'>می‌توانید
با کلیک راست روی جدول و انتخاب</span><span dir=LTR></span><span dir=LTR><span
dir=LTR></span> Export </span><span lang=FA style='font-family:"B Yagut"'>را
انتخاب کرده و از آن خروجی</span><span dir=LTR></span><span dir=LTR><span
dir=LTR></span> Table1.csv </span><span lang=FA style='font-family:"B Yagut"'>بگیرید
و فایل را در اکسل باز کرده و هر طور می‌خواهید آن را ویرایش کنید</span><span
dir=LTR></span><span dir=LTR><span dir=LTR></span>.</span></p>

</div>

</body>

</html>





          
