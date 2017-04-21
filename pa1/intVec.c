/* Michelle Slaughter
 * mislaugh
 */
#include "intVec.h"

static const int intInitCap = 4;

struct IntVectNode{
    int* data;
    int sz;
    int capacity;
};


int intTop(IntVec myVec){
    return myVec->data;
}

int intData(IntVec myVec, int i){
    int* data = myVec->data;
    return myVec->(data+i);
}

int intSize(IntVec myVec){
    return myVec->sz;
}

int Capacity(IntVec myVec){
    return myVec->capacity;
}

IntVec intMakeEmptyVec(void){
    IntVectNode newVec = malloc(sizeof(IntVectNode));
    assert(newVec!=null);
    newVec->sz = 0;
    newVec->capacity = intInitCap;
}

void intVecPush(IntVec myVec, int newE){
    myVec->sz = myVec->sz + 1;
    if (myVec->sz > myVec->capacity)
    {
        //make bigger
    }
    for (int i = myVec->sz; i > 0; --i){
        myVec->data + i = myVec->data + (i - 1);
    }
    myVec->data = newE;

}

void intVecPop(IntVec myVec){
    int data = myVec->data;
    for (int i = myVec->; i > 0; --i){

    }

    return data;
}
