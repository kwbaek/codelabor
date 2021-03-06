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

package org.codelabor.system.dtos;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * @author SangJae Shin
 * 
 */
public class AccessLogDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8079212665085519859L;

	// sequence
	private int seq;

	// who
	private String userId;

	// what
	private String resourceId;

	// why, how
	private String message;

	// where
	private String ipAddress;

	// when
	private Timestamp timestamp;

	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getResourceId() {
		return resourceId;
	}

	public void setResourceId(String resourceId) {
		this.resourceId = resourceId;
	}

	public Timestamp getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	/**
	 * Constructs a <code>String</code> with all attributes in name = value
	 * format.
	 * 
	 * @return a <code>String</code> representation of this object.
	 */
	@Override
	public String toString() {
		final String TAB = "    ";

		StringBuilder retValue = new StringBuilder();

		retValue.append("AccessLogDTO ( ").append(super.toString()).append(TAB)
				.append("seq = ").append(this.seq).append(TAB).append(
						"userId = ").append(this.userId).append(TAB).append(
						"resourceId = ").append(this.resourceId).append(TAB)
				.append("message = ").append(this.message).append(TAB).append(
						"ipAddress = ").append(this.ipAddress).append(TAB)
				.append("timestamp = ").append(this.timestamp).append(TAB)
				.append(" )");

		return retValue.toString();
	}
}
