package javax.validation;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Set;

import org.codelabor.example.validation.dto.PersonDto;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ValidatorTest {

	private final Logger logger = LoggerFactory.getLogger(ValidatorTest.class);
	private Validator validator;

	private PersonDto personDto = null;

	@Before
	public void setUp() throws Exception {
		validator = Validation.buildDefaultValidatorFactory().getValidator();
	}

	@Test
	public void testValidateSource() throws Exception {
		String username = "ob1";
		String password = "1qaz@WSX3edc";
		String confirmPassword = "1qaz@WSX3edc";
		String firstName = "Obi-Wan";
		String lastName = "Kenobi";
		String email = "xxxx@xxx.xxx";
		String confirmEmail = "yyyy@xxx.xxx";
		String phone = "010-1111-1111";
		Date birthDate = (new SimpleDateFormat("yyyy-MM-dd", Locale.KOREA)).parse("1900-01-01");

		personDto = new PersonDto();
		personDto.setUsername(username);
		personDto.setPassword(password);
		personDto.setPasswordConfirm(confirmPassword);
		personDto.setFirstName(firstName);
		personDto.setLastName(lastName);
		personDto.setEmail(email);
		personDto.setEmailConfirm(confirmEmail);
		personDto.setMobilePhone(phone);
		personDto.setBirthDate(birthDate);

		Set<ConstraintViolation<PersonDto>> constraintViolations = validator.validate(personDto);

		logger.error("violation count: {}", constraintViolations.size());

		// TODO: errors.confirm.email.mismatched 메시지 정상 출력되지 않음
		for (ConstraintViolation<?> violation : constraintViolations) {
			logger.error("message: {}", violation.getMessage());
		}

		Assert.assertEquals(2, constraintViolations.size());
	}

	@Test
	public void testValidateSource2() throws Exception {
		String username = "ob1ob1ob1";
		String password = "1qaz@WSX3edc";
		String confirmPassword = "1qaz@WSX3edc";
		String firstName = "Obi-Wan";
		String lastName = "Kenobi";
		String email = "xxxx@xxx.xxx";
		String confirmEmail = "yyyy@xxx.xxx";
		String phone = "010-1111-1111";
		Date birthDate = (new SimpleDateFormat("yyyy-MM-dd", Locale.KOREA)).parse("1900-01-01");

		personDto = new PersonDto();
		personDto.setUsername(username);
		personDto.setPassword(password);
		personDto.setPasswordConfirm(confirmPassword);
		personDto.setFirstName(firstName);
		personDto.setLastName(lastName);
		personDto.setEmail(email);
		personDto.setEmailConfirm(confirmEmail);
		personDto.setMobilePhone(phone);
		personDto.setBirthDate(birthDate);

		Set<ConstraintViolation<PersonDto>> constraintViolations = validator.validate(personDto);

		logger.error("violation count: {}", constraintViolations.size());

		for (ConstraintViolation<?> violation : constraintViolations) {
			logger.error("message: {}", violation.getMessage());
		}

		Assert.assertEquals(3, constraintViolations.size());
	}

}
