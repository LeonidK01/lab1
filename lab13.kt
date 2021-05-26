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