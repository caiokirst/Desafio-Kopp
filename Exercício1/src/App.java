import java.util.Arrays;
import java.util.List;

public class App {
    public static void main(String[] args) throws Exception {
        
        //definicao da lista
        List<Double> numeros = Arrays.asList(88.00, 130.00, 54.90, 293.30, 44.80);
      
        //cria a frase chamando a funcao e passando a lista por referencia
        String frase = funcoes.retornaFrase(numeros);
       
        //printa a frase
        System.out.println(frase);
    }

}
