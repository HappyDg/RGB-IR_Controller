/*
 * main.c
 *
 *  Created on: 2018. 10. 22.
 *      Author: wanseok.kim
 */


#include "msg.h"
#include "judge.h"
#include "Check_time.h"


int main(void)
{

	//makeMassage �Լ��� InputData�� ����ϳ� ���ο��� ��� ����.
	BYTE cmd = 0x3C;
	BYTE len = 0x05;
	BYTE mode = 0x82;
	//////////////////////////////
	MSG p;
	initMassage(&p);
	SEN_VDATA senVData;

	//Input data / 0x101
	BYTE CanData[SEN_MAX]={0,}; 	// �Էµ� ���� canData�� �迭�� �־����. 8 BYTE
	/*
	 * for(int i=0; i<SEN_MAX; i++)
	 * {
	 * 	CanData[i] = sensor data;
	 * }
	 */
	//�Էµ� ���� ��ġ�� ���� ȯ�濡 ���� ��Ȳ �м�
	CAN AnalysisCanData = analysisCANdata_makeSenData(CanData, &senVData);

	if(AnalysisCanData == DEFAULT) // �´� ������ ���� ��� / ����ó��
	{
		return 0;
	}
	if (compareTime(p.light_on_time) >= _onTime){ //Lamp�� ������ �ð�(�ҽ������� ����� �ð�)�� check
		if (AnalysisCanData != p.CAN_DB){
			initMassage(&p);
			makeMassage(&p, len, cmd, mode, AnalysisCanData);
			p.priority_code = checkCANdata(AnalysisCanData);
			p.state = DOING;
		}
		else {
			makeMassage(&p, len, cmd, mode, AnalysisCanData); // ������ ���� ������ ������ �Ǵ� ���� �ƴ���..Default��ſ�
			p.CAN_DB = AnalysisCanData;
		}
	}
	else {
		//Lamp�� ���ۿ��ο� ����ȯ��(����� ����)�� ���� ������ ���� Lamp�� ���� ���θ� �Ǵ�
		if (initialCheck(&p, AnalysisCanData) == _light_change){
			p.light_on_time = (CLOCK_TIME)clock();
			makeMassage(&p, len, cmd, mode, AnalysisCanData);
		}
//	__printURATtransmsg(&p);
	}

	//output data -> p.com_m[0] //cct ������ 0~4
	// �� �����͸� 0x541�� ��������.

	return 0;
}
