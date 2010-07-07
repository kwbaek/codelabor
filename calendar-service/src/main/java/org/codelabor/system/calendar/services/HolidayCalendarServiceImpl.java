package org.codelabor.system.calendar.services;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Properties;

import org.apache.commons.lang.time.DateUtils;
import org.codelabor.system.calendar.exceptions.DateOutOfRangeException;
import org.codelabor.system.calendar.exceptions.NoSuchDateException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.util.Assert;

public class HolidayCalendarServiceImpl implements CalendarService,
		InitializingBean {

	private final Logger logger = LoggerFactory
			.getLogger(HolidayCalendarServiceImpl.class);

	protected Properties holidayMap = new Properties();
	protected String formatPattern;
	protected SimpleDateFormat dateFormat;
	protected Date dateRangeTo = null;
	protected Date dateRangeFrom = null;
	protected int dateRangeByYears = 1;

	public Date getBusinessdayDate(Date date, int amount)
			throws ParseException, NoSuchDateException, DateOutOfRangeException {
		Date businessdayDate = null;
		Date tempDate = date;

		if (amount > 0) {
			while (amount > 0) {
				if (isBusinessday(tempDate)) {
					businessdayDate = tempDate;
					amount--;
				}
				tempDate = DateUtils.addDays(tempDate, 1);
			}
		} else if (amount < 0) {
			while (amount < 0) {
				if (isBusinessday(tempDate)) {
					businessdayDate = tempDate;
					amount++;
				}
				tempDate = DateUtils.addDays(tempDate, -1);
			}
		} else {
			if (this.isBusinessday(date)) {
				businessdayDate = date;
			}
		}

		if (businessdayDate == null) {
			throw new NoSuchDateException();
		}
		return businessdayDate;
	}

	public Date getHolidayDate(Date date, int amount) throws ParseException,
			NoSuchDateException, DateOutOfRangeException {
		Date holidayDate = null;
		Date tempDate = date;

		if (amount > 0) {
			while (amount > 0) {
				if (isHoliday(tempDate)) {
					holidayDate = tempDate;
					amount--;
				}
				tempDate = DateUtils.addDays(tempDate, 1);
			}
		} else if (amount < 0) {
			while (amount < 0) {
				if (isHoliday(tempDate)) {
					holidayDate = tempDate;
					amount++;
				}
				tempDate = DateUtils.addDays(tempDate, -1);
			}
		} else {
			if (this.isHoliday(date)) {
				holidayDate = date;
			}
		}

		if (holidayDate == null) {
			throw new NoSuchDateException();
		}
		return holidayDate;
	}

	public boolean isBusinessday(String date) {
		return !holidayMap.containsKey(date);
	}

	public boolean isBusinessday(Date date) throws ParseException,
			DateOutOfRangeException {
		return !isHoliday(date);
	}

	public boolean isHoliday(Date date) throws ParseException,
			DateOutOfRangeException {
		return this.isHoliday(dateFormat.format(date));
	}

	public boolean isHoliday(String date) throws ParseException,
			DateOutOfRangeException {
		logger.debug("date: {}", date);

		if (!this.isInRange(date)) {
			throw new DateOutOfRangeException();
		}
		return holidayMap.containsKey(date);
	}

	protected boolean isInRange(Date date) {
		Assert.notNull(date);
		return ((date.equals(dateRangeFrom) || date.after(dateRangeFrom)) && (date
				.equals(dateRangeTo) || date.before(dateRangeTo)));
	}

	protected boolean isInRange(String dateString) throws ParseException {
		return isInRange(this.dateFormat.parse(dateString));
	}

	public String getHolidayDescription(Date date) throws NoSuchDateException,
			ParseException {
		return getHolidayDescription(dateFormat.format(date));
	}

	public String getHolidayDescription(String date)
			throws NoSuchDateException, ParseException {
		if (holidayMap.containsKey(date)) {
			return (String) holidayMap.get(date);
		} else {
			throw new NoSuchDateException();
		}
	}

	public void setFormatPattern(String formatPattern) {
		this.formatPattern = formatPattern;
	}

	public void setHolidayMap(Properties holidayMap) {
		this.holidayMap = holidayMap;
	}

	public void setDateRangeTo(Date dateRangeTo) {
		this.dateRangeTo = dateRangeTo;
	}

	public void setDateRangeFrom(Date dateRangeFrom) {
		this.dateRangeFrom = dateRangeFrom;
	}

	public void setDateRangeByYears(int dateRangeByYears) {
		this.dateRangeByYears = dateRangeByYears;
	}

	public void afterPropertiesSet() {
		this.dateFormat = new SimpleDateFormat(formatPattern);
		Date currentDate = Calendar.getInstance().getTime();
		logger.debug("currentDate: {}", currentDate);
		if (dateRangeTo == null && dateRangeFrom == null) {
			dateRangeTo = DateUtils.addYears(currentDate, dateRangeByYears);
			dateRangeFrom = DateUtils.addYears(currentDate, -dateRangeByYears);
		}
		logger.debug("dateRangeTo: {}", dateRangeTo);
		logger.debug("dateRangeFrom: {}", dateRangeFrom);

	}

}