public with sharing class vscode {
    public vscode() {

    }

public Id newRecord(String recName)
{
    Contact c=new Contact(lastName=recName);
    insert c;
    return c.id;
}

}