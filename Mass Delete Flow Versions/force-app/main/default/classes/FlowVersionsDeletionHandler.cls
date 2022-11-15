public without sharing class FlowVersionsDeletionHandler {

    final static String TOOLING_API_BASE_URI = '/services/data/v56.0/tooling';
    final static String SOBJECT_FLOW = 'Flow';
    final static String HOST_URL = Url.getOrgDomainUrl().toExternalForm();

    @InvocableMethod(label='Delete flow version')
    public static ActionOutput[] deleteFlowVersions(ActionInput[] inputs) {

        ActionOutput[] outputs = new ActionOutput[]{};
        for(ActionInput input: inputs) {
            outputs.add(
                deleteFlowVersion(input.flowVersionId)
            );
        }
        return outputs;
    }

    public static ActionOutput deleteFlowVersion(String flowVersionId) {
        
        HTTPRequest request = new HTTPRequest();
        request.setEndpoint(HOST_URL + TOOLING_API_BASE_URI + '/sobjects/' + SOBJECT_FLOW + '/' + flowVersionId);
        request.setMethod('DELETE');
        request.setHeader('Authorization', 'Bearer ' + SessionIdController.getSessionId());
        
        HttpResponse response = new Http().send(request);

        Boolean isSuccess = response.getStatusCode() == 204;
        System.debug('Status: ' + response.getStatusCode());
        System.debug(response.getBody());

        return new ActionOutput(
            isSuccess,
            isSuccess ? '' : response.getBody()
        );
    }

    public class ActionInput {
        @InvocableVariable(label='Flow Version Id' required=true)
        public String flowVersionId;

        public ActionInput() {}

        public ActionInput(String flowVersionId) {
            this.flowVersionId = flowVersionId;
        }
    }

    public class ActionOutput {
        @InvocableVariable public Boolean isSuccess;
        @InvocableVariable public String error;

        public ActionOutput(Boolean isSuccess, String error) {
            this.isSuccess = isSuccess;
            this.error = error;
        }
    }
}
