package dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.AdopttimeDto;
import dto.PetsitterDto;
import mybatis.SqlSessionBean;

public class PetsitterDao {
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	private static PetsitterDao dao = new PetsitterDao();
	//java.lang.NoClassDefFoundError: Could not initialize class dao.AddressDao 
	//-> 이 오류는 db 연결문제 
	private PetsitterDao() { }
	public static PetsitterDao getInstance() {
		return dao;
	}
	
	public List<PetsitterDto> select(AdopttimeDto ado) {
		//SqlSession mapper = sqlFactory.openSession(true); //auto commit을 true
		List<PetsitterDto> list = null;
		SqlSession mapper = factory.openSession();
		list = mapper.selectList("Petsitter.PetSitter_Select", ado); 
		mapper.close();
		return list;
	}
	
	public PetsitterDto selectOne(int idx) {
		PetsitterDto Petsitter_Per = null;
		SqlSession mapper = factory.openSession();
		Petsitter_Per = mapper.selectOne("Petsitter.petsitter_Select_one", idx); 
		mapper.close();
		return Petsitter_Per;
	}
}
