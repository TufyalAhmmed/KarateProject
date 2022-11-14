package Sample;

import com.intuit.karate.junit5.Karate;
public class TestRunner {
    @Karate.Test
    Karate getUser(){
        return Karate.run("GetUser").relativeTo(getClass());
    }
    @Karate.Test
    Karate postUser(){
        return Karate.run("Post_User").relativeTo(getClass());
    }
    @Karate.Test
    Karate putUser(){
        return Karate.run("Put_User").relativeTo(getClass());
    }
    @Karate.Test
    Karate deleteUser(){
        return Karate.run("Delete").relativeTo(getClass());
    }
}
