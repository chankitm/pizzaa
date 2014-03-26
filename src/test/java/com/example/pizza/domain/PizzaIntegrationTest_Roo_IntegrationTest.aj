// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.example.pizza.domain;

import com.example.pizza.domain.Pizza;
import com.example.pizza.domain.PizzaDataOnDemand;
import com.example.pizza.domain.PizzaIntegrationTest;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PizzaIntegrationTest_Roo_IntegrationTest {
    
    declare @type: PizzaIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: PizzaIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: PizzaIntegrationTest: @Transactional;
    
    @Autowired
    private PizzaDataOnDemand PizzaIntegrationTest.dod;
    
    @Test
    public void PizzaIntegrationTest.testCountPizzas() {
        Assert.assertNotNull("Data on demand for 'Pizza' failed to initialize correctly", dod.getRandomPizza());
        long count = Pizza.countPizzas();
        Assert.assertTrue("Counter for 'Pizza' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void PizzaIntegrationTest.testFindPizza() {
        Pizza obj = dod.getRandomPizza();
        Assert.assertNotNull("Data on demand for 'Pizza' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Pizza' failed to provide an identifier", id);
        obj = Pizza.findPizza(id);
        Assert.assertNotNull("Find method for 'Pizza' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Pizza' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void PizzaIntegrationTest.testFindAllPizzas() {
        Assert.assertNotNull("Data on demand for 'Pizza' failed to initialize correctly", dod.getRandomPizza());
        long count = Pizza.countPizzas();
        Assert.assertTrue("Too expensive to perform a find all test for 'Pizza', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Pizza> result = Pizza.findAllPizzas();
        Assert.assertNotNull("Find all method for 'Pizza' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Pizza' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void PizzaIntegrationTest.testFindPizzaEntries() {
        Assert.assertNotNull("Data on demand for 'Pizza' failed to initialize correctly", dod.getRandomPizza());
        long count = Pizza.countPizzas();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Pizza> result = Pizza.findPizzaEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Pizza' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Pizza' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void PizzaIntegrationTest.testFlush() {
        Pizza obj = dod.getRandomPizza();
        Assert.assertNotNull("Data on demand for 'Pizza' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Pizza' failed to provide an identifier", id);
        obj = Pizza.findPizza(id);
        Assert.assertNotNull("Find method for 'Pizza' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyPizza(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'Pizza' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void PizzaIntegrationTest.testMergeUpdate() {
        Pizza obj = dod.getRandomPizza();
        Assert.assertNotNull("Data on demand for 'Pizza' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Pizza' failed to provide an identifier", id);
        obj = Pizza.findPizza(id);
        boolean modified =  dod.modifyPizza(obj);
        Integer currentVersion = obj.getVersion();
        Pizza merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'Pizza' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void PizzaIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'Pizza' failed to initialize correctly", dod.getRandomPizza());
        Pizza obj = dod.getNewTransientPizza(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Pizza' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Pizza' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'Pizza' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void PizzaIntegrationTest.testRemove() {
        Pizza obj = dod.getRandomPizza();
        Assert.assertNotNull("Data on demand for 'Pizza' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Pizza' failed to provide an identifier", id);
        obj = Pizza.findPizza(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'Pizza' with identifier '" + id + "'", Pizza.findPizza(id));
    }
    
}
