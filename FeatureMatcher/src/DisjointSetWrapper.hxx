#include <string>
#include <vector>
#include "boost/unordered_map.hpp"
using namespace std;
using namespace boost;

typedef struct DisjointSetWrapper
{
    string Parent;
    vector<string> Elements;

} DisjointSetWrapper;

typedef boost::unordered_map<std::string, DisjointSetWrapper> HashMap;

void AddNewDisjointSetWrapper(string parent, HashMap &hash);
void AddNewElementToDisjointSet(string parent, string element, HashMap &hash);

