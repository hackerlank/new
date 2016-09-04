#include<iostream>
#include<vector>
#include<cstdlib>
#include<ctime>
#include<cmath>
using namespace std;

double g_LeftPoint = -1;
double g_RightPoint = 2;
int g_numGen = 1;
int g_Generation = 100;
int g_popsize = 20;
double g_dMutationRate = 0.8;
double g_dMaxPerturbation =0.005;
double g_dCrossoverRate = 0.07;

class CGenome
{
    public:
        vector<double> vecWeights;
        double dFitness;
         CGenome():dFitness(0){}
         CGenome(vector<double> w, double f):vecWeights(w), dFitness(f){}
};

class CGenAlg
{
    public:
        vector<CGenome> m_vecPop;
        int m_iPopSize;//种群数量
        int m_iChromoLength;//一条染色体的基因总和
        double m_dTotalFitness;//个体评分总和
        double m_dBestFitness;//最适应的评分
        double m_dAverageFitness;//评分平均值
        double m_dWorstFitness;//最差评分
        int index;//最适应个体在m_vecPop容器中的索引号
        double m_dMutationRate;//基因突变概率 0.05-0.3
        double m_dCrossoverRate;//基因交叉概率 0.7
        int m_cGeneration;//多少代数
        void Reset();
        void init(int popsize, double MutRate, double CrossRate, int GenLength);
        void CalculateBestWorstAvTot();
        CGenome GetChromoRoulette();
        void Mutate(vector<double> &chromo);
        void Epoch(vector<CGenome> &vecNewPop);
        const double RandFloat()
        {
            return (rand()%101) / 100.0f;
        }
        const double RandomClamped()
        {
            return (rand()%100) / 100.0f;
        } 
};
void CGenAlg::Epoch(vector<CGenome> &vecNewPop)
{
    m_vecPop = vecNewPop;
    //Reset();
    //CalculateBestWorstAvTot();
    vecNewPop.clear();
    while(vecNewPop.size() < m_iPopSize)
    {
        CGenome mum = GetChromoRoulette();
        CGenome dad = GetChromoRoulette();
        vector<double> baby1, baby2;
        baby1 = mum.vecWeights;
        baby2 = dad.vecWeights;

        Mutate(baby1);
        Mutate(baby2);

        vecNewPop.push_back(CGenome(baby1,0));
        vecNewPop.push_back(CGenome(baby2,0));
    }
    if(vecNewPop.size() != m_iPopSize) 
    {
        cout<<"ERROR"<<endl;
        return;
    }
}

void CGenAlg::init(int popsize, double MutRate, double CrossRate, int GenLength)
{
    m_iPopSize = popsize;
    m_dMutationRate = MutRate;
    m_dCrossoverRate = CrossRate;
    m_iChromoLength = GenLength;
    m_dTotalFitness = 0;
    m_cGeneration = 0;
    index = 0;
    m_dBestFitness = 0;
    m_dWorstFitness = 99999999;
    m_dAverageFitness = 0;
    m_vecPop.clear();

    for(int i=0; i<m_iPopSize; ++i)
    {
        m_vecPop.push_back(CGenome());//CGenome()
        for(int j = 0; j<m_iChromoLength ; ++j)
        {
            m_vecPop[i].vecWeights.push_back(RandFloat()*(g_RightPoint - 
            g_LeftPoint) + g_LeftPoint);
        }
    }

}
void CGenAlg::Mutate(vector<double> &chromo)
{
    for(int i = 0; i<chromo.size(); ++i)
    {
        if(RandFloat() < m_dMutationRate)
        {
            chromo[i] += (RandomClamped()*g_dMaxPerturbation);
            if(chromo[i] < g_LeftPoint )
            {
                chromo[i] = g_RightPoint;
            }
            else if(chromo[i] > g_RightPoint )
            {   
                chromo[i] = g_LeftPoint;
            }
        }
    }
}

CGenome CGenAlg::GetChromoRoulette()
{
    double Slice = (RandFloat())*m_dTotalFitness;
    CGenome TheChosenOne;
    double FitnessSoFar = 0;
    for(int i = 0; i<m_iPopSize; ++i)
    {   
        FitnessSoFar += m_vecPop[i].dFitness;
        if(FitnessSoFar >= Slice)
        {
            TheChosenOne = m_vecPop[i];
            break;
        }
    }
    return TheChosenOne;
}

vector<double> fitnessFunc(vector<double> &input)
{
    //for(int i=0; i<input.size(); i++)
        input[0]*=sin(10*3.14*input[0]) + 2.0;
    return input;
}

int main()
{
    vector<CGenome> m_population;
    srand((unsigned)time(NULL));
    CGenAlg GenAlg;
    GenAlg.init(g_popsize,g_dMutationRate, g_dCrossoverRate, g_numGen);
    m_population = GenAlg.m_vecPop;
    vector<double> input, output;
    input.push_back(0);
    for(int Generation = 0; Generation<= g_Generation; Generation++)
    {
        for(int i=0; i<g_popsize; i++)
        {
            input = m_population[i].vecWeights;
            cout<<input[0]<<' ';
            output = fitnessFunc(input);
            m_population[i].dFitness = output[0];
            cout<<m_population[i].dFitness<<endl;
        }
        GenAlg.Epoch(m_population);
    }
    
    return 0;
}