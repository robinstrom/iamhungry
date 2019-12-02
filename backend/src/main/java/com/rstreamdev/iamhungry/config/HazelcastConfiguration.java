package com.rstreamdev.iamhungry.config;

import com.hazelcast.config.*;
import com.hazelcast.core.Hazelcast;
import com.hazelcast.core.HazelcastInstance;
import com.hazelcast.spring.cache.HazelcastCacheManager;
import org.springframework.cache.CacheManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class HazelcastConfiguration {

    @Bean
    public Config hazelCastConfig() {
        Config config = new Config();
        config.setInstanceName("rapidApi-cache");
        config.setProperty("hazelcast.jmx", "true");
        config.setProperty("hazelcast.socket.bind.any", "false");

        NetworkConfig networkConfig = config.getNetworkConfig();
        JoinConfig joinConfig = networkConfig.getJoin();
        //disable clustering
        joinConfig.getMulticastConfig().setEnabled(false);
        joinConfig.getAwsConfig().setEnabled(false);
        joinConfig.getTcpIpConfig().setEnabled(false);

        MapConfig recipeCache = new MapConfig();
        recipeCache.setTimeToLiveSeconds(3600); // 1 hour
        recipeCache.setEvictionPolicy(EvictionPolicy.LRU);
        recipeCache.setMaxSizeConfig(new MaxSizeConfig(200, MaxSizeConfig.MaxSizePolicy.FREE_HEAP_SIZE));
        config.getMapConfigs().put("recipeCache", recipeCache);

        MapConfig recipeDetailsCache = new MapConfig();
        recipeCache.setTimeToLiveSeconds(3600); // 1 hour
        recipeCache.setEvictionPolicy(EvictionPolicy.LRU);
        recipeCache.setMaxSizeConfig(new MaxSizeConfig(200, MaxSizeConfig.MaxSizePolicy.FREE_HEAP_SIZE));
        config.getMapConfigs().put("recipeDetailsCache", recipeDetailsCache);

        return config;
    }

    @Bean
    public HazelcastInstance hazelcastInstance() {
        return Hazelcast.newHazelcastInstance(hazelCastConfig());
    }

    @Bean
    public CacheManager cacheManager() {
        return new HazelcastCacheManager(hazelcastInstance());
    }

}