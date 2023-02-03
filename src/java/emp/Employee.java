/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package emp;

/**
 *
 * @author pc
 */
public class Employee
{
    private int empid;
    private String name;
    private int age;
    private double bs;

    public int getEmpid() {
        return empid;
    }

    public void setEmpid(int empid) {
        this.empid = empid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public double getBs() {
        return bs;
    }

    public void setBs(double bs) {
        this.bs = bs;
    }
    public double findHRA()
    {
        double hra = this.bs*0.1;
        return hra;
    }
    public double findDA()
    {
        double da =this.bs*0.2;
        return da;
    }
    public double findGS()
    {
        double gs = this.bs+this.findHRA()+this.findDA();
        return gs;
    }
    public double findCTC()
    {
        double ct = this.findGS()*12;
        return ct;
    }
    public int findTaxPayable()
    {
        double tsal=this.findCTC();
        int s;
        if(tsal>0 && tsal<=250000)
        {
            s = 0;
        }
        else if(tsal>250000 && tsal<=500000)
        {
            s=5;
        }
        else if(tsal>50000 && tsal<=750000)
        {
            s=10;
        }
        else if(tsal>750000 && tsal<=1000000)
        {
            s=15;
        }
        else if(tsal>100000 && tsal<=1250000)
        {
            s=20;
        }
        else if(tsal>1250000 && tsal<=1500000)
        {
            s=25;
        }
        else{
            s=30;
        }
        return s;
    }
    public double findAfterCTC()
    {
        float perc = (1-(this.findTaxPayable())/100f);
        double ctc = this.findCTC();
        double d = ctc*perc;
        return d;
    }
    public double findInHand()
    {
        double in = this.findAfterCTC()/12;
        return in;
    }
    public double netDiff()
    {
        double net = this.findGS() - this.findInHand();
        return net;
    }
}
