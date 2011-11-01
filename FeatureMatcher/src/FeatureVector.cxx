#include <stdlib.h>
#include "FeatureVector.hxx"
#include <math.h>

//using namespace cv;
using namespace std;
using namespace cv;

FeatureVector* CreateFeatureVector(string file,const float* maxFeatureVector,int index, vector<cv::Mat> *dbFeatureVector)//, cv::Mat * dbDescriptors)
{
    // Read in file, deserialize vector to object
    json_t *json;
    json_error_t error;
    json_t * jsonFeatureVector;
    json_t * jsonFileName;
    FeatureVector* outputVector= (FeatureVector*)malloc(sizeof(FeatureVector));
    int i;
    vector<float> tmpFeatureVector = vector<float>();
    char* cFile = (char*)file.c_str();

    json = json_load_file(cFile,0, &error);

    if(!json)
    {
        std::cout << "Error readining in file " << file << " jansson error: " << error.text << " at line " << error.line << std::endl;
        return NULL;
    }
    // get the two pieces of information stored.
    // currently keys are hard coded but this seems brittle
    // i.e. these values are set by a different application (in this case
    // ColorCorrelogram, and should instead be set in some form of
    // configuration file.

    // FeatureVector: json array
    // FileName: json string
    jsonFeatureVector = json_object_get(json,"FeatureVector");
    jsonFileName = json_object_get(json,"FileName");

    strcpy(outputVector->FileName,(json_string_value(jsonFileName)));
    // read in vector values and normalize values using the input maxFeatureVector values
    float tmpValue;
    cv::Mat tmpMat (1,162,CV_32FC1);
    float tmpNorm=0.0;
    for (i=0; i<json_array_size(jsonFeatureVector); i++)
    {
        tmpValue = maxFeatureVector[i] != 0 ? (float)json_real_value(json_array_get(jsonFeatureVector,i))/maxFeatureVector[i] : 0.0;
        tmpMat.row(0).col(i) = tmpValue;
        tmpNorm += pow(tmpValue,2.0);
        tmpFeatureVector.push_back(tmpValue);
    }



    (*dbFeatureVector).push_back(tmpMat);
    outputVector->L2Norm=sqrt(tmpNorm);
    outputVector->vectorIndex = index;
    json_decref(jsonFeatureVector);
    json_decref(jsonFileName);
    json_decref(json);
    return outputVector;
}




