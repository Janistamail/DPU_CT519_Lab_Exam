## Janista Sihirunwong 645162010030

## LAB 5 วิธีการ run ที่ docker desktop

<p>1. clone project จาก repository DPU_CT519_Lab_Exam ลงมาที่เครื่อง  </p>
<p>>> git clone https://github.com/Janistamail/DPU_CT519_Lab_Exam.git</p>
<p>2. เปิด terminal และ cd เข้าไปใน DPU_CT519_Lab_Exam/App_B</p>
<p>3. build dockerfile คำสั่ง >> "docker build -t my-golang-app ."</p>
<p>4. run container คำสั่ง  >> "docker run -itd --rm --name my-running-app -p 5000:8090 my-golang-app"</p>
<p>5. เปิด browser http://localhost:8090 เพื่อ test ได้เลย</p>
<img width="300px" height="100px" src="https://github.com/Janistamail/DPU_CT519_Lab5/blob/master/html/test3.png?raw=true">
<img width="300px" height="100px" src="https://github.com/Janistamail/DPU_CT519_Lab5/blob/master/html/test2.png?raw=true">
<img width="200px" height="200px" src="https://github.com/Janistamail/DPU_CT519_Lab5/blob/master/html/test.png?raw=true">
