> # Tableau를 통한 시각화


## day1
* [Tableau Test_01](https://public.tableau.com/app/profile/.67392977/viz/Tableau_01_16805116488510/1?publish=yes)
```
Abc - 범주
# - 문자

Bule Pills = 불연속형
Green Pills = 연속형
```
## day2
* [Tableau Test_02](https://public.tableau.com/app/profile/.67392977/viz/Test02_16805728199950/HRStatus)
* [국가별, 미국 주별 매출,영업이익 시각화](https://public.tableau.com/app/profile/.67392977/viz/_16805764339660/1)
* [국가별, 미국 주별 매출,영업이익 시각화 - 텍스트로 표현](https://public.tableau.com/app/profile/.67392977/viz/_16805866759850/_word)
* [이중차트](https://public.tableau.com/app/profile/.67392977/viz/_16805860152630/sheet13)
* [수식 및 상관관계](https://public.tableau.com/app/profile/.67392977/viz/_16805990512460/sheet19)
  - 데이터 -> ▼ -> 계산된 필드 만들기
* [공공데이터 활용 - 월별 방한 외래 관광객 추이 변화](https://public.tableau.com/app/profile/.67392977/viz/-_16805938700120/1)
  - 1995년~2023년 월별 방한 외래 관광객 데이터를 통해 관광객 예측

```
 * 지수평활법 예측 방법
  - 마우스 오른쪽 -> 예측 -> 예측표시

 * 연속형으로 이어 붙이기
  - 예측 표시기 -> 특성
```
## day3
* [Tableau - 미국 주별 보고서](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/Tableau_Visualization/data/미국주별보고서.pptx)
* [Tableau_LOD함수활용](https://public.tableau.com/app/profile/.67392977/viz/LOD_16806852637420/LOD)
```
 * 조인 : 시트 더블클릭 -> 내부조인, 왼쪽 조인, 오른쪽 조인, 외부 조인 선택
 * 함수 : 기본함수, LOD함수
  - 기본함수: Tableau에 내장된 함수
  - 숫자/문자/날짜/유형변환/논리/집계/테이블 계산 총 7가지 자주 사용
  - LOD함수: 세분화된 측정값을 계산하는 tableau 기능
      - Fixed, Include, Exclude
      - 쓰는 이유: 차원과 측정값이 함께 할 때 인사이트가 생기기 때문
      - ex){ FIXED [Mem No],YEAR([Order Date]):SUM([매출액])}
```
## day4
* [Tableau_KPI카드, 하이라이트 테이블](https://public.tableau.com/app/profile/.67392977/viz/KPI_16807717937920/1_1)
```
 - 대시보드 Action : 대시보드 -> 동작 -> 필터 or 하이라이트
 - 워크시트 Action : 워크시트 -> 동작 -> 필터 -> 이 시트 -> 동작 추가 -> 원본시트, 대상시트 현재 시트로 -> 필터-선택된 필드

```
* [Tableau_Graph01](https://public.tableau.com/app/profile/.67392977/viz/Tableau_Graph01/2)
  - Bullet table
  - Scatter plot
  - Box Plot
  - Histogram
* [Tableau_Graph01](https://public.tableau.com/app/profile/.67392977/viz/Tableau_Graph02/3)
  - Bump Chart
  - Dumbbell Chart
  - Stack-Bar 차트
  - 폭포차트
* [Tableau_Graph03](https://public.tableau.com/app/profile/.67392977/viz/Tableau_Graph03/AnimatedChart)
  - Animated Chart
* [Tableau_카페인과 칼로리가 낮은 음료 찾기](https://public.tableau.com/app/profile/.67392977/viz/_16807714583140/1)

## day5
* [Tableau_카페 매장 시각화](https://public.tableau.com/app/profile/.67392977/viz/_16808402256430/1_1)
* [Tableau_빅맥 지수 시각화](https://public.tableau.com/app/profile/.67392977/viz/_16808403196710/sheet2)
* [Tableau_미세먼지 지역별,월별](https://public.tableau.com/app/profile/.67392977/viz/__16808548498800/_)
* [Tableau_HR Resource](https://public.tableau.com/app/profile/.67392977/viz/HRResource_16808593139850/HRResource)
```
* 크롤링 방법
 1) listly
 2) 구글 스프레드 시트에서
   =IMPORTFEED("https://news.google.co.kr/rss/search?q=임세훈","items",True,100)
```
## day6
* [프로젝트1_광양시 문화시설 추가 제안서](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/Project/광양시문화시설제안서)
* [Tableau_시도별 문화시설](https://public.tableau.com/app/profile/.67392977/viz/_16811163270750/2)
* [Tableau_전라남도 문화시설](https://public.tableau.com/app/profile/.67392977/viz/_16811164052430/3_1)
* [Tableau_성별 연령대별 문화시설 관심도](https://public.tableau.com/app/profile/.67392977/viz/_16811162717990/1_1)
* [Tableau_광양시 인구예측](https://public.tableau.com/app/profile/.67392977/viz/_16811161520780/1)

## day7
* [프로젝트2_빈곤층을 위한 정책방향](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/Project/빈곤층해결책)
* [Tableau_빈곤층을 위한 정책방향_01](https://public.tableau.com/app/profile/.67392977/viz/_01_16812271432620/1)
* [Tableau_빈곤층을 위한 정책방향_02](https://public.tableau.com/app/profile/.67392977/viz/_02_16812272091250/5)

## day8
* [프로젝트3_광진구 주차 해결방안](https://github.com/Sehun-github/KFO.BigData_Analysis/tree/main/Project/광진구주차문제해결방안)
* [Tableau_광진구 주차 해결방안_01](https://public.tableau.com/app/profile/.67392977/viz/_01_16813005416560/1)
* [Tableau_광진구 주차 해결방안_02](https://public.tableau.com/app/profile/.67392977/viz/_02_16813005634120/1_1)
