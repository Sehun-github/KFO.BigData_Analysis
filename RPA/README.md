# UIPath를 통한 RPA

> #### Raw데이터를 받은후 확장명을 .xaml으로 수정하여 사용

## day1
* [UIPath_테스트](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/HelloWorld.xaml)
```
  * UiPath의 프로그래밍의 틀 : Sequence 또는 FlowChart
   - Sequence: 위에서 아래로 (진행순서를 이해하기 편함)
   - FlowChart: 순서를 본인이 정해서 진행 (전체구조를 이해하기 좋음)
   - Assign 액티비티 : RPA를 수행하는 액티비티
```
* [UIPath_변수](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/Variable.xaml)
* [UIPath_조건문](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/If.xaml)
  - Input Dialog: 사용자가 입력할수 있는 칸 생성
  - If - sequece, FlowChart 둘다 사용 가능, Flow Decision - FlowChart에만 사용 가능
* [UIPath_반복문](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/For_Each.xaml)
  - Repeat Number Of Times : 반복횟수 적힌 숫자만큼 반복

* [UIPath_레코딩_01 - 웹 로그인 자동화](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/Recording_01.xaml)
```
* 레코딩
  OpenBrowser -> Maximize Window -> Delay  -> Type Into -> Get Password -> Type Into -> Click
    - Maximize Window : 윈도우창 키우기
    - OpenBrowser: 웹 브라우저 url작성
    - Type Into: 이메일 및 비밀번호 치기 // 빈필드, 입력전 클릭 활성화
    - Get Password: 비밀번호 감추기
```
## day2
* [UIPath_레코딩_02 - 웹 텍스트&테이블 가져오기](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/Recording_02.xaml)
```
* 변수에 띄어쓰기 금지
Get Text: 텍스트 추출, 복사

* 데이터 테이블 가져오기: 리본메뉴 -> 스크래핑 -> 데이터 스크래핑
  Excel Application Scope -> Write Range
- Excel Application Scope: 엑셀 위치 확인
- Write Range: 엑셀에 데이터 넣을때 사용
```
* [UIPath_레코딩_03 - 웹 기타 액티비티](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/Recording_03.xaml)
  - Navigate To: URL 이동
  - Close Tab: 페이지 닫기

* [UIPath_응용실습](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/Pratice.xaml)
```
  - 팝업창, 스크롤 무시: 클릭 시뮬레이터->True
  - Ctrl + K -> 변수 생성 및 바로 사용 가능
 ```
 ## day3

 * [UIPath_데이터추출](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/데이터추출.xaml)
 ```
 - cint(텍스트),cdbl(텍스트): String -> int or double
 - 숫자.ToString : 숫자 -> String
 ```
 * [UIPath_셀렉터 이론](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/Selector_01.xaml)
 ```
  - Selector: 속성 -> 타겟 -> 선택기
* 와일드 카드 
  -> ?(문자 1개를 대체), *(문자 여러개를 대체)
 ```
 
 ## day4
 
 * [UIPath_텍스트 함수](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/Function_Text.xaml)
 ```
  * 텍스트 함수
  - Contains: 특정문자포함
  - StartsWith/EndsWith: 처음 또는 끝에 특정문자를 포함하고 있는지 검색
  - Replace: 특정문자 대체
  - Substring: 특정문자의 특정부분 추출
  - Trim: 특정문자의 양쪽 공백제거
  - ToUpper/ToLower: 특정문자를 전부 대문자 또는 소문자로 바꾸고 싶을때
  - Split: 특정문자에서 문자를 빠르게 추출
```
 * [UIPath_날짜&시간](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/Date_Time.xaml)
```
Environment.NewLine -> 줄 공백
Now -> 현재시간
Now.ToString("yyyy년 MM월 dd일 hh:mm:ss")
```

 * [UIPath_배열, 리스트, 딕셔너리](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/Array_List_Dic.xaml)
```
배열: {}에 값 넣기
리스트: 크기가 유동적
  - assign에 New List(Of String) 초기화를 시켜야함 -> Append Item to List
딕셔너리: assign에 New Dictionary(Of String, String) 초기화를 시켜야함 -> assign으로 내용 추가
```

## day5
* [UIPath_엑셀&데이터 테이블](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/Excel,DataTable.xaml)
```
 엑셀 읽기
 * Read Range
  - 엑셀 프로그램이 설치 되어있을 떄 사용가능
  - DT 형태로 엑셀을 읽어온다
 * Read Range Workbook
  - 엑셀 프로그램이 깔려있지 않아도 사용가능
  - DT형태로 엑셀을 읽어온다

 DT.Rows(0).item(0).ToString = DT.Rows(0).item("컬럼명").ToString도 가능
 DT의 첫번째줄 첫번째행의 데이터를 가져온다
```

## day6
* [UIPath_예외처리](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/Exception.xaml)
```
예외처리
FIND, EXISTS 액티비티

* Find Element - 있으면 그냥 넘어감, 없으면 오류 
 - Try/Catch와 같이 쓰임

* Element Exists - 해당 버튼이 있으면 True, 없으면 False, 
 - if문, Flow Decision과 같이 쓰임

* Retry Scope
액션: Click
조건: Element Exists - 출력속성에 변수X, 비어 있을 경우 액션에서 오류발생하면 재시도 수행
```
## day7
* [UIPath_실전문제](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/실전문제.xaml)

## day8
* [UIPath_인보크_워크플로우](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/Invoke_WorkFlow)
```
* 출력: Sub -> Main
 - Main 시퀀스에서 받아올 변수를 만들기 -> 인수 가져오기 -> 출력
 - Name -> Value에 담는다고 이해하면 편함


* 입력: Main -> Sub
 - Main 시퀀스에서 받아올 변수를 만들기 -> 인수 가져오기 -> 입력
 - Value -> Name에 담는다고 이해하면 편함
```
* [UIPath_인보크_네이버 환율정보추출](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/Invoke_네이버환율추출)

* [UIPath_Config](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/Config)
```
- config: 엑셀파일에 저장해놓고 가져와서 사용
- Log Message: 로그를 남기고 기록한다.
- 확장성: Invoke Workflow

* String.IsNullOrWhiteSpace("데이터")
데이터 값이 null인지 아닌지 확인하는것 // 비어있으면 True
```

## day9
* [UIPath_ACME로그인_Config](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/ACME로그인_Config)
* [UIPath_윈도우크리덴션](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/윈도우크리덴션)
```
* Windows 자격증명 관리를 통해 Config에 등록된 계정 관리
 - 제어판 -> 사용자계정 -> 자격증명 관리자 -> windows 자격증명 -> 일반자격증명
 - UiPath에서 패키지 다운 -> 리본메뉴에서 패키지 관리 -> 모든 패키지 -> credential

* SecureString -> String
 - new System.Net.NetworkCredential(string.Empty, "데이터").Password
```
* [UIPath_실습문제_환율추출](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/실습문제_환율추출)
```
* Lookup Data Table
 - 데이터 테이블: 테이블이름
 - 조회값: "미국"
 - 조회열 -> 열이름: "국가명"
 - 출력 -> 셀값: 출력변수
 - 타겟열 -> 열이름: "수출액"
```

## day10
* [UIPath_Library](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/Library)
  - 설정 -> 라이브러리 추가 -> 모든 패키지 -> 설치
* [UIPath_Snippet](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/Snippet)
  
* [UIPath_실습문제_인기지표조사](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/실습문제_인기지표조사)
```
- CreateFolder: 폴더 생성
- CreateFile: 파일 생성
- Move File: 파일 이동
- Copy File: 파일 복사
- Delete: 폴더/파일을 삭제

- 기본적으로 폴더 구분은 "\"
- 확장자명까지 같이 사용한다.
```
