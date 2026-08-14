namespace Ahri
{
    class Animal
    {
        private string Name { get; set; }

        public Animal(string name) { Name = name; }

        public static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!");
            Animal animal = new Animal("Sokyoei");
            Console.WriteLine(animal.Name);
        }
    }
}
