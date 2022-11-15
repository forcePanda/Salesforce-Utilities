public without sharing class SessionIdController {
    public static final String START = 'START';
    public static final String STOP = 'STOP';

    public String getSTART() { return START; }
    public String getSTOP() { return STOP; }

    public static String getSessionId() {

        String content;

        try {
            content = Page.SessionId.getContent().toString();
        }
        catch(VisualforceException e) {
            System.debug(e.getMessage());
            content= START + userinfo.getSessionId() + STOP;
		}
        Integer s = content.indexOf(START) + START.length();
        Integer e = content.indexOf(STOP);
        return content.substring(s, e);
    }
}
