package poly.persistance.mapper;



import config.Mapper;
import poly.dto.SingleDTO;


@Mapper("SingleMapper")
public interface SingleMapper {

	public SingleDTO getComIntroIMG() throws Exception;
	public SingleDTO getOrgChart() throws Exception;
	/*public SingleDTO getTest() throws Exception;*/
	
}
