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

package org.codelabor.example.user.daos;

import java.util.List;

import org.codelabor.example.user.dtos.UserDTO;

/**
 * 
 * 사용자 DAO
 * 
 * @author Shin Sangjae
 * 
 */
public interface UserDAO {
	/**
	 * 사용자 DTO를 등록한다.
	 * 
	 * @param userDTO
	 *            사용자 DTO
	 * @return 입력 건수
	 * @throws Exception
	 *             예외
	 */
	public int insertUser(UserDTO userDTO) throws Exception;

	/**
	 * 사용자 DTO를 수정한다.
	 * 
	 * @param userDTO
	 *            사용자 DTO
	 * @return 수정 건수
	 * @throws Exception
	 *             예외
	 */
	public int updateUser(UserDTO userDTO) throws Exception;

	/**
	 * 사용자 정보를 삭제한다.
	 * 
	 * @param userId
	 *            사용자 Id
	 * @return 삭제 건수
	 * @throws Exception
	 *             예외
	 */
	public int deleteUser(String userId) throws Exception;

	/**
	 * 사용자 정보를 삭제한다.
	 * 
	 * @return 삭제 건수
	 * @throws Exception
	 *             예외
	 */
	public int deleteUser() throws Exception;

	/**
	 * 사용자 정보를 가져온다.
	 * 
	 * @param userId
	 *            사용자 Id
	 * @return 사용자 DTO
	 * @throws Exception
	 *             예외
	 */
	public UserDTO selectUserByUserId(String userId) throws Exception;

	/**
	 * 사용자 정보를 가져온다.
	 * 
	 * @return 사용자 DTO List
	 * @throws Exception
	 *             예외
	 */
	public List<UserDTO> selectUser() throws Exception;
}
