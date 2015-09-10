# CODELABOR Common Calendar #

휴일, 영업일 관리 서비스
(http://code.google.com/p/codelabor/source/browse/#svn/tags/codelabor-commons-calendar-1.0.0)

## Maven Repository ##
http://mvnrepository.com/artifact/org.codelabor/codelabor-commons-calendar

## Artifact ##
codelabor-commons-calendar

## Features ##
  * 휴일, 영업일을 모두 관리하지 않고 휴일만 관리하여 데이터 양을 경량화
  * 설치와 설정을 용이하게 하기 위한 DBMS를 사용하지 않는 경량 서비스화
  * 휴일의 적용 방법에 따라 구현 클래스를 선택적으로 사용 가능


## Implementations ##
### HolidayCalendarServiceImpl ###
  * 휴일 정보만 관리하는 휴일, 영업일 관리 서비스의 기본 구현체
  * **영업일을 제외한 휴일을 등록\*해야함 (주말, 공휴일, ...)
### FiveDayWorkweekCalendarServiceImpl ###
  * 주 5일 근무제를 적용한 휴일, 영업일 관리 서비스의 확장 구현체
  ***영업일과 주말(토요일, 일요일)을 제외한 휴일을 등록\*해야 함(공휴일, ...)