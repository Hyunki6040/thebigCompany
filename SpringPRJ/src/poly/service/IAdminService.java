package poly.service;

import poly.dto.AdminDTO;
import poly.dto.SingleDTO;

public interface IAdminService {
	public AdminDTO getAdmin(String id) throws Exception;
	public int updateAdmin(AdminDTO aDTO) throws Exception;
	public int clickCount(String ad_no) throws Exception;
	
	public SingleDTO getCompIntroIMG() throws Exception;
	public SingleDTO getOrgChart() throws Exception;
	
	public String getAdminLogin(AdminDTO aDTO) throws Exception;
}
