package benchmark;

import java.util.concurrent.atomic.AtomicLong;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import fibonacci.Fibonacci;

@RestController
public class BenchmarkController{
    private static final String template = "Hello, %s!";
    private final AtomicLong counter = new AtomicLong();

    @RequestMapping("/benchmark")
    public Benchmark benchmark(@RequestParam(value="name", defaultValue="World") String name) {
        return new Benchmark(
            counter.incrementAndGet(),
            String.format(
                template,
                name
            )
        );
    }

    @RequestMapping("/benchmark/blank")
    public Blank blank(@RequestParam(value="name", defaultValue="World") String name){
        return new Blank(
            0,
            String.format(
                ""
            )
        );
    }

    @RequestMapping("/benchmark/fibonacci")
    public Fibonacci fibonacci(@RequestParam(value="name", defaultValue="1") String name){
        return new Fibonacci(
            name,
            String.format(
                ""
            )
        );
    }
}