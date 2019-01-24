@isTest
public class TowermapTest {

    @isTest
    static void TowermapTest() {
        System.assertEquals(
            [SELECT COUNT() FROM Tower__c],
            TowerMapControllerClass.getAllTowers().size()
        );
    }
}
