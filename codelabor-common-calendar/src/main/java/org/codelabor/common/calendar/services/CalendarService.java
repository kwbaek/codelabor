/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.codelabor.common.calendar.services;

import java.util.Date;

/**
 * 휴일, 영업일 관리 서비스
 * 
 * <p>
 * 기준일에 대해 며칠 전, 며칠 후의 영업일이나 휴일을 구하는 서비스
 * </p>
 * 
 * @author Shin Sangjae
 * 
 */
public interface CalendarService {

	/**
	 * 금일 기준 다음 영업일을 가져온다. 기준일은 영업일 계산에 포함하지 않는다.
	 * 
	 * @return 다음 영업일
	 * @throws Exception
	 */
	public Date getNextBusinessdayDate() throws Exception;

	/**
	 * 금일 기준 다음 영업일을 가져온다.
	 * 
	 * @param isBaseDateInclude
	 *            기준일 포함 여부
	 * @return 다음 영업일
	 * @throws Exception
	 */
	public Date getNextBusinessdayDate(boolean isBaseDateInclude)
			throws Exception;

	/**
	 * 다음 영업일을 가져온다. 기준일은 영업일 계산에 포함하지 않는다.
	 * 
	 * @param date
	 *            기준일
	 * @return 다음 영업일
	 * @throws Exception
	 */
	public Date getNextBusinessdayDate(Date date) throws Exception;

	/**
	 * 다음 영업일을 가져온다.
	 * 
	 * @param date
	 *            기준일
	 * @param isBaseDateIncluded
	 *            기준일 포함 여부
	 * @return 다음 영업일
	 * @throws Exception
	 */
	public Date getNextBusinessdayDate(Date date, boolean isBaseDateIncluded)
			throws Exception;

	/**
	 * 금일 기준 다음 휴일을 가져온다. 기준일은 휴일 계산에 포함하지 않는다.
	 * 
	 * @return 다음 휴일
	 * @throws Exception
	 */
	public Date getNextHolidayDate() throws Exception;

	/**
	 * 금일 기준 다음 휴일을 가져온다.
	 * 
	 * @param isBaseDateIncluded
	 *            기준일 포함 여부
	 * @return 다음 휴일
	 * @throws Exception
	 */
	public Date getNextHolidayDate(boolean isBaseDateIncluded) throws Exception;

	/**
	 * 다음 휴일을 가져온다. 기준일은 휴일 계산에 포함하지 않는다.
	 * 
	 * @param date
	 *            기준일
	 * @return 다음 휴일
	 * @throws Exception
	 */
	public Date getNextHolidayDate(Date date) throws Exception;

	/**
	 * 다음 휴일을 가져온다.
	 * 
	 * @param date
	 *            기준일
	 * @param isBaseDateIncluded
	 *            기준일 포함 여부
	 * @return 다음 휴일
	 * @throws Exception
	 */
	public Date getNextHolidayDate(Date date, boolean isBaseDateIncluded)
			throws Exception;

	/**
	 * 금일 기준 이전 영업일을 가져온다. 기준일은 영업일 계산에 포함하지 않는다.
	 * 
	 * @return 이전 영업일
	 * @throws Exception
	 */
	public Date getPreviousBusinessDate() throws Exception;

	/**
	 * 금일 기준 이전 영업일을 가져온다.
	 * 
	 * @param isBaseDateIncluded
	 *            기준일 포함 여부
	 * @return 이전 영업일
	 * @throws Exception
	 */
	public Date getPreviousBusinessDate(boolean isBaseDateIncluded)
			throws Exception;

	/**
	 * 이전 영업일을 가져온다. 기준일은 영업일 계산에 포함하지 않는다.
	 * 
	 * @param date
	 *            기준일
	 * @return 이전 영업일
	 * @throws Exception
	 */
	public Date getPreviousBusinessDate(Date date) throws Exception;

	/**
	 * 이전 영업일을 가져온다.
	 * 
	 * @param date
	 *            기준일
	 * @param isBaseDateIncluded
	 *            기준일 포함 여부
	 * @return 이전 영업일
	 * @throws Exception
	 */
	public Date getPreviousBusinessDate(Date date, boolean isBaseDateIncluded)
			throws Exception;

	/**
	 * 금일 기준 이전 휴일을 가져온다. 기준일은 휴일 계산에 포함하지 않는다.
	 * 
	 * @return 이전 휴일
	 * @throws Exception
	 */
	public Date getPreviousHolidayDate() throws Exception;

	/**
	 * 금일 기준 이전 휴일을 가져온다.
	 * 
	 * @param isBaseDateIncluded
	 *            기준일 포함 여부
	 * @return 이전 휴일
	 * @throws Exception
	 */
	public Date getPreviousHolidayDate(boolean isBaseDateIncluded)
			throws Exception;

	/**
	 * 이전 휴일을 가져온다. 기준일은 휴일 계산에 포함하지 않는다.
	 * 
	 * @param date
	 *            기준일
	 * @return 이전 휴일
	 * @throws Exception
	 */
	public Date getPreviousHolidayDate(Date date) throws Exception;

	/**
	 * 이전 휴일을 가져온다.
	 * 
	 * @param date
	 *            기준일
	 * @param isBaseDateIncluded
	 *            기준일 포함 여부
	 * @return 이전 휴일
	 * @throws Exception
	 */
	public Date getPreviousHolidayDate(Date date, boolean isBaseDateIncluded)
			throws Exception;

	/**
	 * 현재 날짜를 가져온다.
	 * 
	 * @return 현재 날짜
	 * @throws Exception
	 */
	public Date getCurrentDate() throws Exception;

	/**
	 * 기준일 이전, 이후의 영업일을 가져온다. 기준일은 영업일 계산에 포함하지 않는다.
	 * 
	 * @param date
	 *            기준일
	 * @param amount
	 *            이전, 이후 일수 (예: -1, 0, 1)
	 * @return 기준일 이전, 이후의 영업일
	 * @throws Exception
	 */
	public Date getBusinessdayDate(Date date, int amount) throws Exception;

	/**
	 * 기준일 이전, 이후의 영업일을 가져온다.
	 * 
	 * @param date
	 *            기준일
	 * @param amount
	 *            이전, 이후 일수 (예: -1, 0, 1)
	 * @param isBaseDateIncluded
	 *            기준일 포함 여부
	 * @return 기준일 이전, 이후의 영업일
	 * @throws Exception
	 */
	public Date getBusinessdayDate(Date date, int amount,
			boolean isBaseDateIncluded) throws Exception;

	/**
	 * 기준일 이전, 이후의 휴일을 가져온다. 기준일은 휴일 계산에 포함하지 않는다.
	 * 
	 * @param date
	 *            기준일
	 * @param amount
	 *            이전, 이후 일수 (예: -1, 0, 1)
	 * @return 기준일 이전, 이후의 휴일
	 * @throws Exception
	 */
	public Date getHolidayDate(Date date, int amount) throws Exception;

	/**
	 * 기준일 이전, 이후의 휴일을 가져온다.
	 * 
	 * @param date
	 *            기준일
	 * @param amount
	 *            이전, 이후 일수 (예: -1, 0, 1)
	 * @param isBaseDateIncluded
	 *            기준일 포함 여부
	 * @return 휴일
	 * @throws Exception
	 */
	public Date getHolidayDate(Date date, int amount, boolean isBaseDateIncluded)
			throws Exception;

	/**
	 * 금일이 영업일 여부를 확인한다.
	 * 
	 * @return 영업일 여부
	 * @throws Exception
	 */
	public boolean isBusinessday() throws Exception;

	/**
	 * 영업일 여부를 확인한다.
	 * 
	 * @param date
	 *            기준일
	 * @return 영업일 여부
	 * @throws Exception
	 */
	public boolean isBusinessday(Date date) throws Exception;

	/**
	 * 영업일 여부를 확인한다.
	 * 
	 * @param date
	 *            기준일
	 * @return 영업일 여부
	 * @throws Exception
	 */
	public boolean isBusinessday(String date) throws Exception;

	/**
	 * 금일이 휴일 여부를 확인한다.
	 * 
	 * @return 휴일 여부
	 * @throws Exception
	 */
	public boolean isHoliday() throws Exception;

	/**
	 * 휴일 여부를 확인한다.
	 * 
	 * @param date
	 *            기준일
	 * @return 휴일 여부
	 * @throws Exception
	 */
	public boolean isHoliday(Date date) throws Exception;

	/**
	 * 휴일 여부를 확인한다.
	 * 
	 * @param date
	 *            기준일
	 * @return 휴일 여부
	 * @throws Exception
	 */
	public boolean isHoliday(String date) throws Exception;

	/**
	 * 휴일 상세 정보를 가져온다.
	 * 
	 * @param date
	 *            기준일
	 * @return 휴일 상세 정보
	 * @throws Exception
	 */
	public String getHolidayDescription(Date date) throws Exception;

	/**
	 * 휴일 상세 정보를 가져온다.
	 * 
	 * @param date
	 *            기준일
	 * @return 휴일 상세 정보
	 * @throws Exception
	 */
	public String getHolidayDescription(String date) throws Exception;
}