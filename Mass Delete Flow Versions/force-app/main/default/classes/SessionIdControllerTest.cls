@IsTest
private class SessionIdControllerTest {
    
    @IsTest
    static void getSessionIdTest() {
        
        Assert.areEqual(
            UserInfo.getSessionId(),
            SessionIdController.getSessionId(),
            'Session IDs does not match.'
        );
    }

    @IsTest
    static void getStartTest() {
        
        Assert.areEqual(
            'START',
            new SessionIdController().getSTART(),
            'START value does not match.'
        );
    }

    @IsTest
    static void getStopTest() {
        
        Assert.areEqual(
            'STOP',
            new SessionIdController().getSTOP(),
            'STOP value does not match.'
        );
    }
}
