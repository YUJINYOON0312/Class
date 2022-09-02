package day0830;

import java.time.LocalDateTime;

public class BoardInsertDTO {

		
		private long no;
		private String title;
		private String content;
		private String writer;
		private LocalDateTime createdDate;
		private LocalDateTime updatedDate;
		private boolean locked;
		
		public long getNo() {
			return no;
		}
		public void setNo(long no) {
			this.no = no;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		public String getWriter() {
			return writer;
		}
		public void setWriter(String writer) {
			this.writer = writer;
		}
		public LocalDateTime getCreatedDate() {
			return createdDate;
		}
		public void setCreatedDate(LocalDateTime createdDate) {
			this.createdDate = createdDate;
		}
		public LocalDateTime getUpdatedDate() {
			return updatedDate;
		}
		public void setUpdatedDate(LocalDateTime updatedDate) {
			this.updatedDate = updatedDate;
		}
		public boolean isLocked() {
			return locked;
		}
		public void setLocked(boolean locked) {
			this.locked = locked;
		}
		
		//필드의 값을 읽어오기 위한 목적의 메서드


	
}
