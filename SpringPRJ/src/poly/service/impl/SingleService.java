package poly.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.SingleDTO;
import poly.persistance.mapper.AdminMapper;
import poly.persistance.mapper.SingleMapper;
import poly.service.IAdminService;
import poly.service.ISingleService;

@Service("SingleService")
public class SingleService implements ISingleService {

	@Resource(name = "SingleMapper")
	private SingleMapper singleMapper;
	
	
	@Override
	public SingleDTO getCompIntroIMG() throws Exception {
		return singleMapper.getComIntroIMG();
	}

	@Override
	public SingleDTO getOrgChart() throws Exception {
		return singleMapper.getOrgChart();
	}

	/*@Override
	public SingleDTO getTest() throws Exception {
		System.out.println("5");
		return singleMapper.getTest();
	}*/

}
