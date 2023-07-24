import java.util.List;

public class funcoes {
    public static String retornaFrase(List<Double> numeros) {
       
        //Inicializa as variaveis
        StringBuilder ret = new StringBuilder("Remessa gerada: ");
        double soma = 0.0;

        //loop que cria a frase conforme o i (somando 1 pois o indice comeca em 0) e o valor do numero no indice i
        for (int i = 0; i < numeros.size(); i++) {
            
            //variavel que recebe o valor do numero no indice i
            Double aux = numeros.get(i);
            ret.append(String.format("%d cujo valor R$ %.2f", i + 1, aux));
            
            //enquanto não for o ultimo loop vai adicionar uma virgula ´para separar as adicoes de valores
            if (i < numeros.size() - 1) {
                ret.append(", ");
            }
           
            //utiliza a variaveis aux e soma para somar todos os valores 
            soma += aux;
        }
        
        //termina a frase
        ret.append(String.format(". Total = R$ %.2f", soma));
       
        //retorna a frase formada
        return ret.toString();
    }
}
