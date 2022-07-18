package beans;

import java.util.ArrayList;
import java.util.Date;

public class BeanTest {
    public static void main(String[] args) {

      Album test = new Album (1,new Artist(1, "test",true , "English"), "name", new Date(1-1-1980),3.1,"Heavy Metal");

      Quote quote1= new Quote(1,new Author(1,"Jhon","jones" ), "this is a quote from a random person");

        Quote quote2= new Quote(1,new Author(1,"Jhon","jones2" ), "this is another quote from a another random person");
        Quote quote3= new Quote(1,new Author(1,"Jhon","jones3" ), "this is a third quote to see if a can get this to work from a random person");

        System.out.println(quote1.getAuthor().getFirst_name());

        ArrayList <Quote> quotes= new ArrayList<>();
        quotes.add(quote1);
        quotes.add(quote2);
        quotes.add(quote3);

        System.out.println(quote1.getAuthor().getFirst_name());

        for (Quote quote:quotes){
            String fn = quote.getAuthor().getFirst_name();
            String ln = quote.getAuthor().getLast_name();

//            System.out.println(fn+ln);
//            System.out.println(quote.getAuthor().getFirst_name());
//            System.out.println(quote.getAuthor().getLast_name());
            System.out.println(fn+ln+ "is the author with the following quote  " + quote.getContent());
//            System.out.printf("%s %s is the author", fn,ln );
        }

    }

}
