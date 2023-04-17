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

* [UIPath 응용실습](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/Pratice.xaml)
```
  - 팝업창, 스크롤 무시: 클릭 시뮬레이터->True
  - Ctrl + K -> 변수 생성 및 바로 사용 가능
 ```
 
 * [UIPath 데이터추출](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/데이터추출.xaml)
 ```
 - cint(텍스트),cdbl(텍스트): String -> int or double
 - 숫자.ToString : 숫자 -> String
 ```
 * [UIPath 데이터추출](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/RPA/UiPath/Selector_01.xaml)
 ```
  - Selector: 속성 -> 타겟 -> 선택기
* 와일드 카드 
  -> ?(문자 1개를 대체), *(문자 여러개를 대체)

 * 텍스트 함수
  - Contains: 특정문자포함
  - StartsWith/EndsWith: 처음 또는 끝에 특정문자를 포함하고 있는지 검색
  - Replace: 특정문자 대체
  - Substring: 특정문자의 특정부분 추출
  - Trim: 특정문자의 양쪽 공백제거
  - ToUpper/ToLower: 특정문자를 전부 대문자 또는 소문자로 바꾸고 싶을때
  - Split: 특정문자에서 문자를 빠르게 추출
 ```
