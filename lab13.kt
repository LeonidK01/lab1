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