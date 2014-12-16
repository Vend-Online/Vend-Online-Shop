using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Sub_String
{
    public string SubStr(string CheckField)
	{
        for (int i = 0; i < CheckField.Length; i++)
        {
            if (CheckField.Substring(i, 1) == "'" || CheckField.Substring(i, 1) == "-" || CheckField.Substring(i, 1) == "=")
            {
                CheckField = "Badboy";
                break;
            }
        }
        return CheckField;
        }
	}
