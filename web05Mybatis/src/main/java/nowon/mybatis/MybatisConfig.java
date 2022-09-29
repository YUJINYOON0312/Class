package nowon.mybatis;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisConfig {
	
	private static SqlSessionFactory sqlSessionFactory;
	//SqlSessionFactory 싱글톤으로 구성하였습니다.
	public static SqlSessionFactory getInstance() {
		if(sqlSessionFactory==null)new MybatisConfig();
		return sqlSessionFactory;
	}
	
	private MybatisConfig() {
		String resource = "nowon/mybatis/mybatis-config.xml";
		InputStream inputStream=null;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch (IOException e) {
			e.printStackTrace();
		}
		sqlSessionFactory =
				  new SqlSessionFactoryBuilder().build(inputStream);
	}

}
