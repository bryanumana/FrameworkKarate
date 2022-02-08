package example;


import com.intuit.karate.junit5.Karate;
import org.junit.runner.RunWith;

public class TestRunner {
    @Karate.Test
    Karate testKarate() {
        return Karate.run("karate").relativeTo(getClass());
    }

    @Karate.Test
    Karate testGetScenario4() {
        return Karate.run("get").tags("@scenario4").relativeTo(getClass());
    }

   @Karate.Test
    Karate testSystemProperty() {
        return Karate.run("classpath:example/post.feature")
                .tags("@scenario3")
                .karateEnv("e2e")
                .systemProperty("foo", "bar");
    }

    @Karate.Test
    Karate testPut() {
        return Karate.run("put").relativeTo(getClass());
    }

    @Karate.Test
    Karate testDelete() {
        return Karate.run("delete").relativeTo(getClass());
    }
}
