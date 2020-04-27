/*
 * judge.h
 *
 *  Created on: 2018. 10. 17.
 *      Author: wanseok.kim
 */

#ifndef JUDGE_H_
#define JUDGE_H_


#include "msg.h"



//#define _light_on 1
//#define _light_off 0
#define _system_error -1
#define _light_change 1
#define _light_keep 0

typedef int _light_condition;
typedef int _light_change_code;
typedef int _can_condition;


CAN analysisCANdata(BYTE canData);
BYTE checkImageData(CAN canData);
//��Ȳ�� ���� �켱���� Check
_priority_num checkCANdata(CAN canData);
_light_change_code CheckPriority(MSG *p, CAN canData);
_light_condition initialCheck(MSG *p, CAN canData);

// ������ ������ ���� 200304 hb
CAN analysisCANdata_makeSenData(BYTE *canData, SEN_VDATA *senData);
CAN JudgeSenData(SEN_VDATA *senData);

//1. �������� ���� �Ǵ�
_Sensor_Judge JudgeSenData_ILL(SEN_VDATA *senVData);
_Sensor_Judge JudgeSenData_Rain(SEN_VDATA *senVData);
_Sensor_Judge JudgeSenData_Fog(SEN_VDATA *senVData);

//2. ������ ���� �Ǵ� �� ���� �Ǵ�
CAN CheckSen_Priority(SEN_VDATA *senVData);




#endif /* JUDGE_H_ */
