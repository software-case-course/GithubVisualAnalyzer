package cn.donlian.ghanaly.configuration;

import com.mongodb.Mongo;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientOptions;
import com.mongodb.ServerAddress;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.config.AbstractMongoConfiguration;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;

/**
 * Created by donne on 17-6-1.
 */
@Configuration
@EnableMongoRepositories(basePackages = "cn.donlian.ghanaly.dao")
public class MongoConfig extends AbstractMongoConfiguration{
    @Override
    protected String getDatabaseName() {
        return "github_data6";
    }

    @Override
    public Mongo mongo() throws Exception {
        MongoClientOptions mongoClientOptions = MongoClientOptions.builder()
                .connectionsPerHost(8)
                .threadsAllowedToBlockForConnectionMultiplier(4)
                .connectTimeout(1000)
                .maxWaitTime(1500)
                .socketKeepAlive(true)
                .socketTimeout(1500)
                .build();
        return new MongoClient(new ServerAddress("localhost", 27017), mongoClientOptions);
    }




/*
    @Bean
    public MongoClientFactoryBean mongo(){
        MongoClientFactoryBean mongo = new MongoClientFactoryBean();
        mongo.setHost("localhost");
        return mongo;
    }

    @Bean
    public MongoOperations mongoTemplate(Mongo mongo) {
        return new MongoTemplate(mongo, "mongo_demo");
    }*/
}
