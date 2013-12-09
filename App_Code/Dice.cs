using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Dice
/// </summary>
public class Dice
{

    private double roll1, roll2, roll3;
    string message_bad = "Too bad, you got double 6. Here's your 'reward'.";
    string message_good = "Good job, here's your reward.";
    string message_close = "A close one, better luck next time!";
    private bool yuri = false;
    private bool yaoi = false;

    Random random = new Random();

    // Getters/setters
    public double getRoll1()
    {
        return roll1;
    }
    
    public void setRoll1(double roll1)
    {
        this.roll1 = roll1;
    }

    public double getRoll2()
    {
        return roll2;
    }

    public void setRoll2(double roll2)
    {
        this.roll2 = roll2;
    }

    public double getRoll3()
    {
        return roll3;
    }

    public void setRoll3(double roll3)
    {
        this.roll3 = roll3;
    }
    //


    // Constructor

	public Dice()
	{
		
        
	}

    public bool Doubles()
    {
        if (roll1 == roll2 && roll1 != roll3 || roll2 == roll3 && roll1 != roll2 || roll1 == roll3 && roll1 != roll2)
        {
            return true;
        }
        else 
        {           
        return false;
        }
    }

    public bool Triples()
    {
        if (roll1 == roll2 && roll2 == roll3)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public string MessageClose()
    {
        return message_close;
    }

    public string Message()
    {
        if (roll1 != 6)
        {
            yuri = true;
            yaoi = false;
            return message_good;
            
        }
        else
        {
            yaoi = true;
            yuri = false;
            return message_bad;            
        }
    }

    public void Roll()
    {
        double r1 = random.Next(1, 7);
        double r2 = random.Next(1, 7);
        double r3 = random.Next(1, 7);
        setRoll1(r1);
        setRoll2(r2);
        setRoll3(r3);
    }

    public string ImageD()
    {
        double d = getRoll1();

        if (yuri == true)
        {
            return "yuri"+d.ToString();
        }
        else if (yaoi == true)
        {
            return "yaoi";
        }
        else return "owl";
    }

}