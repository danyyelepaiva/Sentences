import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by ricardo on 4/20/17.
 */
public class Sentences {
    private static final String artigo_Masculino_Maiusculo = "O";
    private static final String artigo_Masculino_Plural_Maiusculo = "Os";
    private static final String artigo_Masculino = "o";
    private static final String artigo_Masculino_Plural = "os";

    private static final String artigo_Feminino_Maiusculo = "A";
    private static final String artigo_Feminino_Plural_Maiusculo = "As";
    private static final String artigo_Feminino = "a";
    private static final String artigo_Feminino_Plural = "as";

    private static final String[] substantivo_Masculino = {"cacador", "sino", "lobo", "tempo", "rio", "vento", "rosto", "mar", "cachorro", "tambor", "martelo", "campo", "menino"};
    private static final String[] substantivo_Masculino_Plural = {"cacadores", "sinos", "lobos", "rios", "ventos", "rostos", "mares", "cachorros", "tambores", "martelos", "campos", "meninos"};
    private static final String[] substantivo_Feminino = {"menina", "noticia", "lagrima", "vida", "porta", "floresta", "mae", "cidade"};
    private static final String[] substantivo_Feminino_Plural = {"meninas", "noticias", "lagrimas", "portas", "florestas", "maes", "cidades"};

    private static final String[] verbo = {"correu", "corria", "corre", "bate", "batia", "bateu"};
    private static final String[] verbo_Plural = {"correram", "correm", "corriam", "batiam", "batem", "bateram"};

    private static final String[] preposicao_Com_Artigo = {"para", "com"};
    private static final String[] preposicao_Masculino = {"pelo", "no", "o"};
    private static final String[] preposicao_Feminino = {"pela", "na", "a"};
    private static final String[] preposicao_Masculino_Plural = {"pelos", "nos"};
    private static final String[] preposicao_Feminino_Plural = {"pelas", "nas"};

    private static boolean masculino_substantivo = false;
    private static boolean feminino_substantivo = false;
    private static boolean plural_substantivo = false;

    private static boolean artigo_preposicao = false;

    private static boolean masculino_preposicao = false;
    private static boolean feminino_preposicao = false;
    private static boolean plural_preposicao = false;

    private static List<String> readFile(){
        final String FILENAME = "sentences.txt";
        List<String> sentences = new LinkedList<>();

        try (BufferedReader br = new BufferedReader(new FileReader(FILENAME))) {

            String sCurrentLine;

            while ((sCurrentLine = br.readLine()) != null) {
                sentences.add(sCurrentLine);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
        return sentences;
    }

    private static boolean testArtigo(String word) {
        if(artigo_Masculino_Maiusculo.equals(word)) {
            masculino_substantivo = true;
            return true;
        }
        else if(artigo_Masculino_Plural_Maiusculo.equals(word)) {
            masculino_substantivo = true;
            plural_substantivo = true;
            return true;
        }
        else if(artigo_Feminino_Maiusculo.equals(word)) {
            feminino_substantivo = true;
            return true;
        }
        else if(artigo_Feminino_Plural_Maiusculo.equals(word)) {
            feminino_substantivo = true;
            plural_substantivo = true;
            return true;
        }
        return false;
    }

    private static boolean testSubstantivo(String word) {
        for(String s : substantivo_Masculino) {
            if (s.equals(word)) {
                return masculino_substantivo && !plural_substantivo;
            }
        }
        for(String s : substantivo_Masculino_Plural) {
            if (s.equals(word)) {
                return masculino_substantivo && plural_substantivo;
            }
        }
        for(String s : substantivo_Feminino) {
            if (s.equals(word)) {
                return feminino_substantivo && !plural_substantivo;
            }
        }
        for(String s : substantivo_Feminino_Plural) {
            if (s.equals(word)) {
                return feminino_substantivo && plural_substantivo;
            }
        }
        return false;
    }

    private static boolean testVerbo(String word) {
        for(String s : verbo) {
            if(s.equals(word)) {
                return !plural_substantivo;
            }
        }
        for(String s : verbo_Plural) {
            if(s.equals(word)) {
                return plural_substantivo;
            }
        }
        return false;
    }

    private static boolean testPreposiçao(String word) {
        for(String s : preposicao_Com_Artigo) {
            if(s.equals(word)) {
                artigo_preposicao = true;
                return true;
            }
        }
        for(String s : preposicao_Masculino) {
            if(s.equals(word)) {
                masculino_preposicao = true;
                return true;
            }
        }
        for(String s : preposicao_Masculino_Plural) {
            if(s.equals(word)) {
                masculino_preposicao = true;
                plural_preposicao = true;
                return true;
            }
        }
        for(String s : preposicao_Feminino) {
            if(s.equals(word)) {
                feminino_preposicao = true;
                return true;
            }
        }
        for(String s : preposicao_Feminino_Plural) {
            if(s.equals(word)) {
                feminino_preposicao = true;
                plural_preposicao = true;
                return true;
            }
        }
        return false;
    }

    private static boolean testArtigoAposPreposiçao(String word) {
        if(artigo_Masculino.equals(word)) {
            masculino_preposicao = true;
            return true;
        }
        else if(artigo_Masculino_Plural.equals(word)) {
            masculino_preposicao = true;
            plural_preposicao = true;
            return true;
        }
        else if(artigo_Feminino.equals(word)) {
            feminino_preposicao = true;
            return true;
        }
        if(artigo_Feminino_Plural.equals(word)) {
            feminino_preposicao = true;
            plural_preposicao = true;
            return true;
        }
        return false;
    }

    private static boolean testSubstantivoAposPreposiçao(String word) {
        for(String s : substantivo_Masculino) {
            if(s.equals(word)) {
                return masculino_preposicao && !plural_preposicao;
            }
        }
        for(String s : substantivo_Masculino_Plural) {
            if(s.equals(word)) {
                return masculino_preposicao && plural_preposicao;
            }
        }
        for(String s : substantivo_Feminino) {
            if(s.equals(word)) {
                return feminino_preposicao && !plural_preposicao;
            }
        }
        for(String s : substantivo_Feminino_Plural) {
            if(s.equals(word)) {
                return feminino_preposicao && plural_preposicao;
            }
        }
        return false;
    }

    private static boolean checkGrammar(String sentence) {
        masculino_substantivo = false;
        feminino_substantivo = false;
        plural_substantivo = false;
        artigo_preposicao = false;
        masculino_preposicao = false;
        feminino_preposicao = false;
        plural_preposicao = false;

        String[] aux = sentence.split(" ");
        String firstWord = aux[0];

        boolean isArtigo = testArtigo(firstWord);
        if(!isArtigo) {
            return false;
        }

        String secondWord = aux[1];
        boolean isSubstantivo = testSubstantivo(secondWord);
        if(!isSubstantivo) {
            return false;
        }

        if(aux[2] == null) {
            return false;
        }

        String thirdWord = aux[2];
        boolean isVerbo = testVerbo(thirdWord);
        if(!isVerbo) {
            return false;
        }

        if(aux.length == 3) {
            return true;
        }

        String fourthWord = aux[3];
        boolean isPreposiçao = testPreposiçao(fourthWord);
        if(!isPreposiçao) {
            return false;
        }

        if(artigo_preposicao) {
            if(aux.length == 4) {
                return true;
            }

            boolean hasArtigoAposPreposiçao = testArtigoAposPreposiçao(aux[4]);
            if(!hasArtigoAposPreposiçao) {
                return false;
            }

            if(aux.length == 5) {
                return true;
            }

            boolean hasSubstantivoAposPreposiçao = testSubstantivoAposPreposiçao(aux[5]);
            if(!hasSubstantivoAposPreposiçao) {
                return false;
            }
        }
        else {
            if(aux.length == 4) {
                return true;
            }

            boolean hasSubstantivoAposPreposiçao = testSubstantivoAposPreposiçao(aux[4]);
            if(!hasSubstantivoAposPreposiçao) {
                return false;
            }
        }

        return true;
    }

    public static void main(String[] args) {
        List<String> sentences = readFile();

        for(String s : sentences) {
            if(checkGrammar(s)) {
                System.out.println(s);
                System.out.println("Frase Correcta!!\n");
            }
            else {
                System.out.println(s);
                System.out.println("LUL Scrub :D \n");
            }
        }
    }
}