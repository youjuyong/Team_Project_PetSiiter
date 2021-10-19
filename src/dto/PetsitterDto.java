package dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PetsitterDto {
	private int idx;
	private String name;
	private String address;
	private String owner;
	private String comment;
	private String title;
	private String filename;
	private Date wdate;
}
