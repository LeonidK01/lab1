fun main() {
    println("Hello Word!")
}
fun main() {
    val  name = readLine()
    println("Здравствуйте, $name!")
}
fun getLanguage(a:String, b:String) =
    when{
        a=="Prolog" -> println("$b,Вы - подлиза :Р")
        a=="Kotlin" -> println("$b, Вы - подлиза :Р")
        a=="c++" -> println("$b, выбор хороший конечно, но не в этом случае сишник")
        a=="с#" -> println("$b, выбор хороший конечно, но не в этом случае сишник")
        a=="ruby" -> println("$b, выбор хороший конечно, тут это оценят")
        a=="java" -> println("$b, выбор хороший конечно, и похож на этот, ты дждимшик")
        else -> println("$b я не знаю такого, поэтому ты просто минипрограммист")
    }
fun main() {

    println("Как тебя зовут?")
    val  name = readLine()
    println("Привет, $name! Какой твой любимый язык программирования?")
    val favlan = readLine()
    getLanguage(favlan.toString(), name.toString())
}
fun main()
{
    println("Введите число x")
    var x: Int = readLine()!!.toInt()
    var sum = 0
    while (x != 0)
    {
        sum += x % 10
        x /= 10
    }
    println(sum)
}
fun sumNumber(x: Int) : Int
{
    var x_met = x
    var sum = 0
    while (x_met != 0)
    {
        sum += x_met % 10
        x_met /= 10
    }
    return sum
}
fun proiz(x: Int) : Int
{
    var n = x
    var proiz = 1
    while (n != 0)
    {
        proiz *= n % 10
        n /= 10
    }
    return proiz
}

fun max(num:Int): Int = if (num < 10) num else if (num % 10 > max(num/10)) num % 10 else max(num/10)

fun min(num:Int): Int = if (num < 10) num else if (num % 10 < min(num/10)) num % 10 else min(num/10)

fun main() {
    println("Введите число")
    val x: Int = readLine()!!.toInt()
    val max: Int = max(x)
    val min: Int = min(x)
    val proi : Int=proiz(x)
    println("max = $max")
    println("min = $min")
    println("Произведение = $proi")
}
//задание 8.1
fun prost(x:Int):Boolean {
    for (i in 2..x / 2) {
        if (x % i == 0) {
            return false
        }
    }
    return true;
}
fun sumProstDel(x:Int):Int{
    var sum=0
    for(i in 2..x/2){
        if(x%i==0 && prost(i)){
            sum+=i}
    }
    return sum
}
fun main() {
    println("Введите число")
    val x = readLine()!!.toInt()
    print("Сумма простых делителей числа ")
    println(sumProstDel(x))
}
// задание 8.2
fun nechet3(x:Int):Int{
    var sum=0
    var x1: Int = x
    while (x1 != 0)
    {
        if (x1 % 10 > 3 && (x1 % 10) % 2 != 0)
            sum += 1

        x1 /= 10
    }
    return  sum
}
fun main() {
    println("Введите число")
    val x = readLine()!!.toInt()
    print("Сумма цифр числа ")
    println(nechet3(x))
}
//задание 8.3
fun sum(x: Int): Int {
    var sum = 0
    var x1: Int = x
    while (x1 != 0) {
        sum += x1 % 10
        x1 /= 10
    }
    return (sum)
}
fun proizDel(x:Int):Int{
    var proiz = 1
    var sumX = sum(x)
    for(i in 2..x) {
        if (x % i == 0) {
            val sumI = sum(i)
            if(sumI<sumX)
                proiz *= sumI
        }
    }
    return proiz
}
fun main() {
    println("Введите число")
    val x = readLine()!!.toInt()
    print("Ответ =")
    println(proizDel(x))
}
//9
fun prost(x:Int):Boolean {
    for (i in 2..x / 2) {
        if (x % i == 0) {
            return false
        }
    }
    return true;
}
fun sumProstDel(x:Int):Int{
    var sum=0
    for(i in 2..x/2){
        if(x%i==0 && prost(i)){
            sum+=i}
    }
    return sum
}
fun nechet3(x:Int):Int{
    var sum=0
    var x1: Int = x
    while (x1 != 0)
    {
        if (x1 % 10 > 3 && (x1 % 10) % 2 != 0)
            sum += 1

        x1 /= 10
    }
    return  sum
}
fun sum(x: Int): Int {
    var sum = 0
    var x1: Int = x
    while (x1 != 0) {
        sum += x1 % 10
        x1 /= 10
    }
    return (sum)
}
fun proizDel(x:Int):Int{
    var proiz = 1
    var sumX = sum(x)
    for(i in 2..x) {
        if (x % i == 0) {
            val sumI = sum(i)
            if(sumI<sumX)
                proiz *= sumI
        }
    }
    return proiz
}
fun main() {
    println("\"Выбирете операцию:\n 1. Найти сумму простых делителей числа.\n 2.Найти количество нечетных цифр числа, больших 3 \n" +
            " 3.Найти прозведение таких делителей числа, сумма цифр которых меньше, чем сумма цифр исходного числа. \n 4. Выйте")
    var vib = readLine()!!.toInt()
    while(vib!=4)
    {
        when(vib)
        {
            1 -> println(sumProstDel(readLine()!!.toInt()))
            2 -> println(nechet3(readLine()!!.toInt()))
            3 -> println(proizDel(readLine()!!.toInt()))
            else -> println("Ошибка")
        }
        println("\"Выбирете операцию:\n 1. Найти сумму простых делителей числа.\n 2. Найти количество нечетных цифр числа, больших 3 \n" +
                " 3. Найти прозведение таких делителей числа, сумма цифр которых меньше, чем сумма цифр исходного числа. \n 4. Выйте")

        vib=readLine()!!.toInt()
    }
}