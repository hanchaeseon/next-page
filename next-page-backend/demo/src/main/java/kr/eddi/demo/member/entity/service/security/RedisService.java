package kr.eddi.demo.member.entity.service.security;


public interface RedisService {

    public void setKeyAndValue(String token, Long memNo);

    public Long getValueByKey(String token);
    public void deleteByKey(String token);

}
