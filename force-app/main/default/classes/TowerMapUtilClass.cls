public inherited sharing class TowerMapUtilClass {

    public static List<SObject> queryObjects(String theObject, List<String> theFields, String theFilter, String sortField, String sortOrder) {
        String theQuery = 'SELECT ' + String.join(theFields, ',');
        theQuery += ' FROM ' + theObject;

        if(!String.isEmpty(theFilter)) {
            theQuery += ' WHERE ' + theFilter;
        }

        if(!String.isEmpty(sortField)) {
            theQuery += ' ORDER BY ' + sortField;
            if(!String.isEmpty(sortOrder)) {
                theQuery += ' ' + sortOrder;
            }
        }

        return Database.query(theQuery);
    }

}