// js부분
// Monaco Editor 스크립트 로드
require.config({ paths: { 'vs': 'https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.26.1/min/vs' } });
require(['vs/editor/editor.main'], function () {
    // Monaco Editor 인스턴스 생성
    var code = `    while (flag)
	{
		printf("Client> 피연산자 수 입력: ");
		scanf("%d", &opndCnt);
		data[0] = opndCnt;

		for (int i = 0; i < opndCnt; i++) {
			printf("피연산자: ");
			scanf("%d", (int*)&data[1 + i * sizeof(int)]);
		}
		rewind(stdin);
		//fgetc(stdin); // 마지막 enter 삭제.
		//c = getchar();
		printf("> 연산자를 입력하세요(+/-/*):");
		scanf("%c", &data[1 + opndCnt * sizeof(int)]);

		ret = send(hSocket, data, 2 + opndCnt * sizeof(int), 0);
		printf("Client> sent %d bytes...\n", ret);

		rcvSum = 0;
		rcvTotal = sizeof(int);
		printf("before while\n");
		while (rcvSum < rcvTotal) {
			printf("start while\n");
			ret = recv(hSocket, (char*)&data[rcvSum], rcvTotal - rcvSum, 0);
			if (ret <= 0) {
				flag = 0;
				break;
			}
			else {
				rcvSum += ret;
				printf("Client> recv %d bytes(rcvSum = %d bytes).\n", ret, rcvSum);
			}
		}
		result = *((int*)data);
		printf("Client> 연산 결과 = %d\n", result);
	}`;

    var questionLanguage = `c`;
    var editor = monaco.editor.create(document.getElementById('monaco-container'), {
        value: code,
        language: questionLanguage,
        automaticLayout: true,
        theme: 'vs-dark'
    });

    var lineCount = editor.getModel().getLineCount();
    // Monaco Editor의 높이를 계산하기 위한 기본 높이 값
    var lineHeight = 21; // 한 줄의 높이 (예시 값)
    // Monaco Editor 요소 선택
    var monacoContainer = document.getElementById('monaco-container');
    // Monaco Editor의 높이 계산
    var editorHeight = lineCount * lineHeight;
    // Monaco Editor 요소의 높이 설정
    monacoContainer.style.height = editorHeight + 'px';

    // Monaco Editor에 값이 있는지 확인하여 출력 여부 결정
    if (editor.getValue()) {
        console.log('값이 있음!');
    } else {
        console.log('값이 없음!');
        document.getElementById('monaco-container').style.display = 'none'; // Monaco Editor 숨김
        document.getElementById('code-label').style.display = 'none';
    }
});