package Tools;

public class ChineseChar {
	// 根据Unicode编码完美的判断中文汉字和符号

    private static boolean isChinese(char c) {

        Character.UnicodeBlock ub = Character.UnicodeBlock.of(c);

        if (ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || ub == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS

                || ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B

                || ub == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION || ub == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS

                || ub == Character.UnicodeBlock.GENERAL_PUNCTUATION) {

            return true;

        }

        return false;

    }

 

    // 完整的判断中文汉字和符号

    public static boolean isChinese(String strName) {

        char[] ch = strName.toCharArray();
        int count=0;
        for (int i = 0; i < ch.length; i++) {

            char c = ch[i];

            if (isChinese(c)) {

                count++;

            }

        }
        if(count*1.0/ch.length>0.5)
        	return true;

        return false;

    }

}
