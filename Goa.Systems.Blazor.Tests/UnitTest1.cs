namespace Goa.Systems.Blazor.Tests;

public class Tests
{
    [SetUp]
    public void Setup()
    {
    }

    [Test]
    public void Test1()
    {
        Assert.That(Goa.Systems.Blazor.Logic.Content.PageContent(), Is.EqualTo("Hello World"));
    }
}