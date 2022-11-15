@IsTest
public class FlowVersionsDeletionHandlerTest implements HttpCalloutMock {
    
    public HttpResponse respond(HttpRequest request) {

        Assert.areEqual(
            'flowVersionId',
            request.getEndpoint().substringAfterLast('/'),
            'Flow version Id did not match the expected value.'
        );

        HttpResponse response = new HttpResponse();
        response.setStatusCode(204);
        return response;
    }

    @IsTest
    static void deleteFlowVersionsTest() {

        Test.setMock(HttpCalloutMock.class, new FlowVersionsDeletionHandlerTest());

        Test.startTest();
        FlowVersionsDeletionHandler.ActionOutput[] outputs = FlowVersionsDeletionHandler.deleteFlowVersions(
            new FlowVersionsDeletionHandler.ActionInput[]{
                new FlowVersionsDeletionHandler.ActionInput('flowVersionId')
            }
        );
        Test.stopTest();

        Assert.areEqual(
            true,
            outputs[0].isSuccess,
            'Operation is expected to be success.'
        );
    }
    
    @IsTest
    static void actionInputConstructorTest() {
        
        Test.startTest();
        FlowVersionsDeletionHandler.ActionInput input = new FlowVersionsDeletionHandler.ActionInput();
        Test.stopTest();
        
        Assert.isNotNull(
            input,
            'ActionInput instance is expected to be not null.'
        );
    }
}
