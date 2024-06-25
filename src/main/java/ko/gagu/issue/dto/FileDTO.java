package ko.gagu.issue.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

@Alias(value="file")
public class FileDTO {
    private int idxFile;
    private int idxFiletype;
    private int idxRef;
    private String originName;
    private String fileName;
    private Timestamp uploadDatetime;
    
	public int getIdxFile() {
		return idxFile;
	}
	public void setIdxFile(int idxFile) {
		this.idxFile = idxFile;
	}
	public int getIdxFiletype() {
		return idxFiletype;
	}
	public void setIdxFiletype(int idxFiletype) {
		this.idxFiletype = idxFiletype;
	}
	public int getIdxRef() {
		return idxRef;
	}
	public void setIdxRef(int idxRef) {
		this.idxRef = idxRef;
	}
	public String getOriginName() {
		return originName;
	}
	public void setOriginName(String originName) {
		this.originName = originName;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public Timestamp getUploadDatetime() {
		return uploadDatetime;
	}
	public void setUploadDatetime(Timestamp uploadDatetime) {
		this.uploadDatetime = uploadDatetime;
	}
    
}
