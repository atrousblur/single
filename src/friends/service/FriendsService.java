package friends.service;

import java.util.ArrayList;

import friends.dto.MsgDTO;

public interface FriendsService {
	
	int insertMsg(MsgDTO msg);	// �޽��� �ۼ�
	
	ArrayList<MsgDTO> readMsg(String option, String me_id);	// �޽��� ���

}