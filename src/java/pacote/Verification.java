package pacote;


public class Verification {

    public int verificationSenha(String n) {
        String[] str_number = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"};
        String[] str_special = {"#", "$", "%", "&", "(", ")", "*", "+", "-", "/", "<", "=", ">", "@", "[", "]", "_", "{", "|", "}", "─", "÷", "°", "¨", "=", "—"};
        String[] str_lowercase = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"};
        String[] str_upercase = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};

        int V = 0;

        for (String str_number1 : str_number) {
            if (n.contains(str_number1)) {
                V += 1;
                break;
            }
        }

        for (String str_special1 : str_special) {
            if (n.contains(str_special1)) {
                V += 1;
                break;
            }
        }
        for (String str_lowercase1 : str_lowercase) {
            if (n.contains(str_lowercase1)) {
                V += 1;
                break;
            }
        }

        for (String str_upercase1 : str_upercase) {
            if (n.contains(str_upercase1)) {
                V += 1;
                break;
            }
        }

        return V;
    }

}
