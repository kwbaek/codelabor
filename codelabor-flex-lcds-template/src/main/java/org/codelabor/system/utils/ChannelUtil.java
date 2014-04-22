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

package org.codelabor.system.utils;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;

/**
 * @author SangJae Shin
 * 
 */
public class ChannelUtil {

	public static int copy(ReadableByteChannel inputChannel,
			WritableByteChannel outputChannel) throws IOException {
		ByteBuffer buffer = ByteBuffer.allocateDirect(16 * 1024);
		int readSize = 0;
		int copySize = 0;

		while (true) {
			readSize = inputChannel.read(buffer);
			if (readSize == -1)
				break;
			copySize += readSize;

			buffer.flip();
			outputChannel.write(buffer);
			buffer.compact();
		}
		buffer.flip();
		while (buffer.hasRemaining()) {
			outputChannel.write(buffer);
		}
		return copySize;
	}
}