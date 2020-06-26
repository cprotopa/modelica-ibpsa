/*
 * getTimeStep.h
 *
 *  Created on: Jun 16, 2020
 *      Author: cprotopa based on getTimeSpan.h
 */

#ifndef GETTIMESTEP_H_
#define GETTIMESTEP_H_

#include <ModelicaUtilities.h>

int getTimeStep(const char * fileName, const char * tabName, double* timeStep);

#endif /* GETTIMESTEP_H_ */
