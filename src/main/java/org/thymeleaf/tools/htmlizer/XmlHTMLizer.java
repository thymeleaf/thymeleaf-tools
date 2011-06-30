package org.thymeleaf.tools.htmlizer;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class XmlHTMLizer {

    private static final Map<String,String> ESCAPE_MAPS = createEscapeMaps();
    
    
    
    
    private static Map<String,String> createEscapeMaps() {
        
        final Map<String,String> escapeMaps = new LinkedHashMap<String, String>();
        
        escapeMaps.put(" ", "&nbsp;");
        escapeMaps.put("<", "&lt;");
        escapeMaps.put(">", "&gt;");
        escapeMaps.put("\"", "&quot;");
        escapeMaps.put("&", "&amp;");
        escapeMaps.put("'", "&#39;");
        escapeMaps.put("\n", "<br />\n");
        
        return escapeMaps;
        
    }
    
    
    private static String escapeChar(final char c) {
        final String escaped = ESCAPE_MAPS.get(String.valueOf(c));
        if (escaped != null) {
            return escaped;
        }
        return String.valueOf(c);
    }
    

    
    
    
    
    
    private static String htmlEscape(final String text) {
        
        final StringBuilder strBuilder = new StringBuilder();
        for (int i = 0; i < text.length(); i++) {
            strBuilder.append(escapeChar(text.charAt(i)));
        }
        
        return strBuilder.toString();
        
    }
    
    

    
    private static String formatTags(final String text) {
        
        String result = text;
        
        final Pattern tagPattern = Pattern.compile("&lt;(.*?)(&nbsp;|&gt;)");
        final Matcher tagMatcher = tagPattern.matcher(result);
        result = tagMatcher.replaceAll("&lt;<b>$1</b>$2");
        
        return result;
        
    }
    
    
    
    
    private static String formatComments(final String text) {

        // TODO Format comments!!
        
        return text;
        
    }
    
    
    
    private static String formatStrings(final String text) {
        
        String result = text;
        
        final Pattern stringPattern = Pattern.compile("&quot;(.*?)&quot;");
        final Matcher stringMatcher = stringPattern.matcher(result);
        result = stringMatcher.replaceAll("<span class=\"string\">&quot;$1&quot;</span>");
        
        return result;
        
    }

    
    
    public static String htmlize(final String text) {
        
        String result = text;

        result = htmlEscape(result);
        result = formatTags(result);
        result = formatComments(result);
        result = formatStrings(result);
        
        return result;
        
    }
    
    
    private XmlHTMLizer() {
        super();
    }
    
}
