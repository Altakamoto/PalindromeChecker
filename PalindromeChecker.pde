public void setup()
  {
    String lines[] = loadStrings("palindromes.txt");
    System.out.println("there are " + lines.length + " lines");
    for (int i=0; i < lines.length; i++) 
    {
      if(palindrome(lines[i])==true)
      {
        System.out.println(lines[i] + " IS a palindrome.");
      }
      else
      {
        System.out.println(lines[i] + " is NOT a palindrome.");
      }
    }
  }
  public boolean palindrome(String word)
{
  String backwards = reverse(onlyLetters(noSpaces(word.toLowerCase())));
  if(backwards.equals(onlyLetters(noSpaces(word.toLowerCase()))))
    return true;
  return false;
}
public String reverse(String str)
{
  String a = "";
  for(int i = str.length(); i > 0; i--)
  {
    a = a + str.substring(i-1, i);
  }
  return a;
}
public String noSpaces(String str){
  String a = new String();
  for(int i = 0; i < str.length(); i++)
  {
    if(str.substring(i, i + 1).equals(" ") == false)
      a = a + str.substring(i, i + 1);
  }
  return a;
}
public String onlyLetters(String sString){
  String a = "";
  for(int i = 0; i < sString.length(); i++)
  {
    if(Character.isLetter(sString.charAt(i)))
      a = a + sString.charAt(i);
  }
  return a;
}


