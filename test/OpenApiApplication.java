import org.jobrunr.spring.autoconfigure.JobRunrAutoConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EnableAutoConfiguration(exclude = { JobRunrAutoConfiguration.class})
public class OpenApiApplication {

	
    public static void main(String[] args) {
        SpringApplication.run(OpenApiApplication.class, args);
    }
}