package friends.service;

import java.util.ArrayList;

import friends.dto.MsgDTO;
import member.dto.MemberDTO;

public interface FriendsService {
	
	int insertMsg(MsgDTO msg);	// �޽��� �ۼ�
	
	ArrayList<MsgDTO> readMsg(String option, String me_id);	// �޽��� ���

	ArrayList<String> friendsList(String me_id);	// ģ�� ���

	ArrayList<MemberDTO> BckList();		// ������Ʈ ���
}