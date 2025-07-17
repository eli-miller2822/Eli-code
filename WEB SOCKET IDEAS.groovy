WEB SOCKET IDEAS

//build.gradle.kts
dependencies {
  implementation("org.springframework.boot:spring-boot-starter-websocket")
  // … your other starters …
}

//WebSocketConfig.java

@Configuration
@EnableWebSocketMessageBroker
public class WebSocketConfig implements WebSocketMessageBrokerConfigurer {
  @Override
  public void registerStompEndpoints(StompEndpointRegistry registry) {
    // clients will do new SockJS("/ws-endpoint") 
    registry.addEndpoint("/ws-endpoint").withSockJS();
  }

  @Override
  public void configureMessageBroker(MessageBrokerRegistry registry) {
    registry.setApplicationDestinationPrefixes("/app");      // where client sends
    registry.enableSimpleBroker("/topic");                   // where client subscribes
  }
}

// InterviewController.java

@Component
public class InterviewController {

  private final SimpMessagingTemplate messaging;

  public InterviewController(SimpMessagingTemplate messaging) {
    this.messaging = messaging;
  }

  // messages sent by the instructor to /app/interview/{studentId}
  @MessageMapping("/interview/{studentId}")
  public void sendInterview(@DestinationVariable String studentId,
                            InterviewPayload payload) {
    // forward to /topic/interview/{studentId}
    messaging.convertAndSend("/topic/interview/" + studentId, payload);
  }

  public static class InterviewPayload {
    public String questionId;
    public String questionText;
    // you can add more fields (e.g. list of options, metadata…)
  }
}

//Instructor.html

<script src="https://cdn.jsdelivr.net/npm/sockjs-client/dist/sockjs.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/stompjs/lib/stomp.min.js"></script>

<script th:inline="javascript">
  // inject the student you’re currently calling into the page
  const studentId = /*[[${calledStudentId}]]*/ 'placeholder@example.com';

  // 1) connect
  const socket = new SockJS('/ws-endpoint');
  const stompClient = Stomp.over(socket);
  stompClient.connect({}, function() {
    // 2) subscribe to your own topic if you want to see it
    stompClient.subscribe('/topic/interview/' + studentId, function(msg) {
      const p = JSON.parse(msg.body);
      openInterviewModal(p);
    });
  });

  // 3) wire up your question buttons
  function onQuestionClick(qId, qText) {
    stompClient.send(
      '/app/interview/' + studentId,
      {},
      JSON.stringify({ questionId: qId, questionText: qText })
    );
  }

  function openInterviewModal(payload) {
    // set your modal's text via DOM, then:
    new bootstrap.Modal(document.getElementById('interviewModal')).show();
  }
</script>

// studentQueue.html

<script>
  const studentId = /*[[${session.user.email}]]*/ 'you@example.com';
  const socket = new SockJS('/ws-endpoint');
  const stompClient = Stomp.over(socket);
  stompClient.connect({}, () => {
    stompClient.subscribe('/topic/interview/' + studentId, msg => {
      const p = JSON.parse(msg.body);
      // fill your studentModal fields from p.questionText, etc.
      new bootstrap.Modal(document.getElementById('studentInterviewModal')).show();
    });
  });
</script>